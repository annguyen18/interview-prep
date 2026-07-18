/**
 * store.js
 * Persistent State Layer managing local storage, custom added questions,
 * mastery statuses, and JSON Export / Import functionality.
 * Supports dual-mode: online sync with the Java SQLite backend or offline local fallback.
 */

const STORAGE_KEYS = {
  CUSTOM_QUESTIONS: 'java_prep_custom_questions_v3',
  MASTERY_STATUS: 'java_prep_mastery_status_v3'
};

window.QuestionStore = class QuestionStore {
  constructor() {
    this.isOnline = false;
    this.customQuestions = this.loadCustomQuestions();
    this.masteryStatus = this.loadMasteryStatus();
    
    this.serverQuestions = [];
    this.serverMasteryStatus = {};
    this.serverTopics = [];
    
    this.syncWithServer();
  }

  async syncWithServer() {
    try {
      const resp = await fetch('/api/v1/data');
      if (resp.ok) {
        const json = await resp.json();
        if (json && json.success && json.data) {
          this.isOnline = true;
          this.serverQuestions = json.data.questions || [];
          this.serverMasteryStatus = json.data.masteryStatus || {};
          this.serverTopics = json.data.topics || [];
          
          if (typeof initCategoryFilter === 'function') {
            initCategoryFilter();
          }
          if (typeof renderApp === 'function') {
            renderApp();
          }
          return true;
        }
      }
    } catch (e) {
      console.warn('Backend server offline. Running in local mock mode.', e);
    }
    this.isOnline = false;
    return false;
  }

  loadCustomQuestions() {
    try {
      const raw = localStorage.getItem(STORAGE_KEYS.CUSTOM_QUESTIONS);
      return raw ? JSON.parse(raw) : [];
    } catch (e) {
      console.error('Failed to load custom questions from localStorage:', e);
      return [];
    }
  }

  saveCustomQuestions() {
    try {
      localStorage.setItem(
        STORAGE_KEYS.CUSTOM_QUESTIONS,
        JSON.stringify(this.customQuestions)
      );
    } catch (e) {
      console.error('Failed to save custom questions to localStorage:', e);
    }
  }

  loadMasteryStatus() {
    try {
      const raw = localStorage.getItem(STORAGE_KEYS.MASTERY_STATUS);
      return raw ? JSON.parse(raw) : {};
    } catch (e) {
      console.error('Failed to load mastery status:', e);
      return {};
    }
  }

  saveMasteryStatus() {
    try {
      localStorage.setItem(
        STORAGE_KEYS.MASTERY_STATUS,
        JSON.stringify(this.masteryStatus)
      );
    } catch (e) {
      console.error('Failed to save mastery status:', e);
    }
  }

  getAllQuestions() {
    if (this.isOnline) {
      return this.serverQuestions;
    }
    const defaults = window.DEFAULT_QUESTIONS || [];
    return [...defaults, ...this.customQuestions];
  }

  getCategories(lang = 'en') {
    const categories = new Set();
    if (this.isOnline && Array.isArray(this.serverTopics) && this.serverTopics.length > 0) {
      this.serverTopics.forEach(t => {
        const name = lang === 'vi' ? (t.nameVi || t.nameEn) : t.nameEn;
        if (name) categories.add(name);
      });
    } else {
      this.getAllQuestions().forEach(q => {
        let cat = typeof q.category === 'object' ? (q.category[lang] || q.category['en']) : q.category;
        if (cat) {
          cat = cat.split(' - ')[0].trim();
          categories.add(cat);
        }
      });
    }
    const sortedCats = Array.from(categories).sort((a, b) => a.localeCompare(b));
    return [lang === 'vi' ? 'Tất cả' : 'All', ...sortedCats];
  }

  async addCustomQuestion({ category, difficulty, question, answer }) {
    const id = `custom-${Date.now()}-${Math.floor(Math.random() * 1000)}`;
    const newQuestion = {
      id: id,
      category: {
        en: category,
        vi: category
      },
      difficulty: difficulty || 'Junior',
      question: {
        en: question.trim(),
        vi: question.trim()
      },
      answer: {
        en: answer.trim(),
        vi: answer.trim()
      },
      isSeed: false
    };

    if (this.isOnline) {
      try {
        const resp = await fetch('/api/v1/questions', {
          method: 'POST',
          headers: { 'Content-Type': 'application/json' },
          body: JSON.stringify(newQuestion)
        });
        if (resp.ok) {
          const json = await resp.json();
          if (json.success && json.data) {
            this.serverQuestions.push(json.data);
            return json.data;
          }
        }
      } catch (e) {
        console.error('Failed to save custom question to backend:', e);
      }
    }

    this.customQuestions.push(newQuestion);
    this.saveCustomQuestions();
    return newQuestion;
  }

  async deleteCustomQuestion(id) {
    if (this.isOnline) {
      try {
        const resp = await fetch(`/api/v1/questions/${id}`, { method: 'DELETE' });
        if (resp.ok) {
          this.serverQuestions = this.serverQuestions.filter(q => q.id !== id);
          return true;
        }
      } catch (e) {
        console.error('Failed to delete question from backend:', e);
      }
    }

    this.customQuestions = this.customQuestions.filter(q => q.id !== id);
    this.saveCustomQuestions();
    return true;
  }

  getMastery(id) {
    if (this.isOnline) {
      return this.serverMasteryStatus[id] || 'unrated';
    }
    return this.masteryStatus[id] || 'unrated';
  }

  async setMastery(id, status) {
    if (this.isOnline) {
      this.serverMasteryStatus[id] = status;
      try {
        await fetch(`/api/v1/mastery/${id}`, {
          method: 'PUT',
          headers: { 'Content-Type': 'application/json' },
          body: JSON.stringify({ status })
        });
      } catch (e) {
        console.error('Failed to sync mastery status to backend:', e);
      }
      return;
    }

    this.masteryStatus[id] = status;
    this.saveMasteryStatus();
  }

  getStats() {
    const all = this.getAllQuestions();
    let mastered = 0;
    let needsReview = 0;

    all.forEach(q => {
      const status = this.getMastery(q.id);
      if (status === 'mastered') mastered++;
      if (status === 'needs_review') needsReview++;
    });

    return {
      total: all.length,
      mastered,
      needsReview,
      unrated: all.length - mastered - needsReview
    };
  }

  exportToJSON() {
    const exportPayload = {
      version: '3.0',
      exportedAt: new Date().toISOString(),
      customQuestions: this.isOnline ? this.serverQuestions.filter(q => !q.isSeed) : this.customQuestions,
      masteryStatus: this.isOnline ? this.serverMasteryStatus : this.masteryStatus
    };

    const dataStr = 'data:text/json;charset=utf-8,' + encodeURIComponent(JSON.stringify(exportPayload, null, 2));
    const downloadAnchor = document.createElement('a');
    downloadAnchor.setAttribute('href', dataStr);
    downloadAnchor.setAttribute('download', `java-revision-backup-${new Date().toISOString().slice(0, 10)}.json`);
    document.body.appendChild(downloadAnchor);
    downloadAnchor.click();
    downloadAnchor.remove();
  }

  async importFromJSON(jsonString) {
    try {
      const parsed = JSON.parse(jsonString);

      let incomingQuestions = [];
      if (Array.isArray(parsed)) {
        incomingQuestions = parsed;
      } else if (parsed.customQuestions && Array.isArray(parsed.customQuestions)) {
        incomingQuestions = parsed.customQuestions;
        if (parsed.masteryStatus) {
          if (this.isOnline) {
            this.serverMasteryStatus = { ...this.serverMasteryStatus, ...parsed.masteryStatus };
            Object.entries(parsed.masteryStatus).forEach(([qid, status]) => {
              this.setMastery(qid, status);
            });
          } else {
            this.masteryStatus = { ...this.masteryStatus, ...parsed.masteryStatus };
            this.saveMasteryStatus();
          }
        }
      }

      let addedCount = 0;
      const allQ = this.getAllQuestions();
      
      for (const item of incomingQuestions) {
        if (item.question && item.answer) {
          const categoryStr = typeof item.category === 'object' ? (item.category.en || item.category.vi) : item.category;
          const questionStr = typeof item.question === 'object' ? (item.question.en || item.question.vi) : item.question;
          const answerStr = typeof item.answer === 'object' ? (item.answer.en || item.answer.vi) : item.answer;

          const exists = allQ.some(q => {
            const existingQuestionStr = typeof q.question === 'object' ? q.question.en : q.question;
            return existingQuestionStr.toLowerCase().trim() === questionStr.toLowerCase().trim();
          });

          if (!exists) {
            await this.addCustomQuestion({
              category: categoryStr || 'Imported',
              difficulty: item.difficulty || 'Junior',
              question: questionStr,
              answer: answerStr
            });
            addedCount++;
          }
        }
      }

      return { success: true, addedCount };
    } catch (err) {
      console.error('Failed to import JSON:', err);
      return { success: false, error: err.message };
    }
  }
}
