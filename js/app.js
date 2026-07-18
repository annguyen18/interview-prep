/**
 * app.js
 * Main Controller for the Java Technical Revision Portal.
 * Handles DOM rendering, Markdown conversion, syntax highlighting, filters, modals,
 * and seamless bilingual (EN/VI) dynamic UI translation.
 */

// Initialize persistent storage layer from the window object
const store = new window.QuestionStore();

// UI State (Persist language selection across reloads)
let currentLang = localStorage.getItem('java_prep_lang_pref') || 'en';
let allExpanded = false;

// UI Static Translation Dictionary
const TRANSLATIONS = {
  en: {
    brandTitle: "Java Technical Revision Portal",
    brandSubtitle: "Backend Engineering Interview Companion",
    btnPrompt: "Prompt Template",
    btnAdd: "Add Question",
    btnExport: "Export JSON",
    btnImport: "Import JSON",
    lblTotal: "Total Questions",
    lblMastered: "Mastered",
    lblReview: "Needs Review",
    optAllStatus: "All Statuses",
    optMastered: "Mastered Only",
    optReview: "Needs Review Only",
    optUnrated: "Unrated Only",
    toggleAllExpand: "Expand All",
    toggleAllCollapse: "Collapse All",
    searchPlaceholder: "Search questions or code symbols (e.g. HashMap, equals, GC)...",
    modalAddTitle: "Add Interview Question",
    frmLblCat: "Category",
    frmLblDiff: "Difficulty",
    frmLblQ: "Question Title",
    frmLblAns: "Detailed Answer (Supports Markdown & ```java Blocks)",
    frmBtnCancel: "Cancel",
    frmBtnSave: "Save Question",
    modalAiTitle: "AI Question Generation Prompt Template",
    promptDesc: "Send this prompt to an LLM to generate structured Java technical questions adhering to the application schema. Save the generated JSON array to disk and use <strong>Import JSON</strong>.",
    copyPrompt: "Copy Prompt",
    copied: "Copied!",
    badgeMastered: "Mastered",
    badgeReview: "Needs Review",
    badgeUnrated: "Unrated",
    deleteConfirm: "Are you sure you want to delete this custom question?",
    emptyStateTitle: "No matching questions found",
    emptyStateText: "Try adjusting your search keywords or filter settings.",
    promptTextContent: `Generate 5 Junior Java Developer technical interview questions about [TOPIC - e.g. Garbage Collection / Spring Boot] in the following strict bilingual JSON array format:
[
  {
    "category": {
      "en": "JVM & Memory",
      "vi": "JVM & Bộ nhớ"
    },
    "difficulty": "Junior",
    "question": {
      "en": "Clear technical interview question in English?",
      "vi": "Câu hỏi phỏng vấn kỹ thuật rõ ràng bằng tiếng Việt?"
    },
    "answer": {
      "en": "Comprehensive explanation in English formatted in Markdown. Include fenced \`\`\`java code examples where relevant.",
      "vi": "Giải thích chi tiết bằng tiếng Việt định dạng Markdown. Kèm theo ví dụ mã \`\`\`java nếu cần."
    }
  }
]`
  },
  vi: {
    brandTitle: "Cổng Ôn Tập Kỹ Thuật Java",
    brandSubtitle: "Cẩm Nang Ôn Thi Lập Trình Viên Backend",
    btnPrompt: "Mẫu Prompt AI",
    btnAdd: "Thêm Câu Hỏi",
    btnExport: "Xuất JSON",
    btnImport: "Nhập JSON",
    lblTotal: "Tổng số câu hỏi",
    lblMastered: "Đã làm chủ",
    lblReview: "Cần ôn tập",
    optAllStatus: "Tất cả trạng thái",
    optMastered: "Chỉ đã làm chủ",
    optReview: "Chỉ cần ôn tập",
    optUnrated: "Chỉ chưa đánh giá",
    toggleAllExpand: "Mở rộng tất cả",
    toggleAllCollapse: "Thu gọn tất cả",
    searchPlaceholder: "Tìm kiếm câu hỏi hoặc ký hiệu mã (ví dụ: HashMap, equals, GC)...",
    modalAddTitle: "Thêm Câu Hỏi Phỏng Vấn",
    frmLblCat: "Danh mục",
    frmLblDiff: "Mức độ",
    frmLblQ: "Tiêu đề câu hỏi",
    frmLblAns: "Câu trả lời chi tiết (Hỗ trợ Markdown & khối mã ```java)",
    frmBtnCancel: "Hủy",
    frmBtnSave: "Lưu câu hỏi",
    modalAiTitle: "Mẫu Prompt Sinh Câu Hỏi Bằng AI",
    promptDesc: "Gửi prompt này tới LLM để tạo các câu hỏi kỹ thuật Java theo đúng định dạng. Lưu file JSON kết quả và click <strong>Nhập JSON</strong>.",
    copyPrompt: "Sao chép Prompt",
    copied: "Đã sao chép!",
    badgeMastered: "Đã làm chủ",
    badgeReview: "Cần ôn tập",
    badgeUnrated: "Chưa đánh giá",
    deleteConfirm: "Bạn có chắc chắn muốn xóa câu hỏi tùy chỉnh này không?",
    emptyStateTitle: "Không tìm thấy câu hỏi phù hợp",
    emptyStateText: "Hãy thử thay đổi từ khóa tìm kiếm hoặc bộ lọc.",
    promptTextContent: `Tạo 5 câu hỏi phỏng vấn kỹ thuật lập trình viên Java Junior về chủ đề [CHỦ ĐỀ - ví dụ: Garbage Collection / Spring Boot] theo định dạng mảng JSON song ngữ nghiêm ngặt sau:
[
  {
    "category": {
      "en": "JVM & Memory",
      "vi": "JVM & Bộ nhớ"
    },
    "difficulty": "Junior",
    "question": {
      "en": "Clear technical interview question in English?",
      "vi": "Câu hỏi phỏng vấn kỹ thuật rõ ràng bằng tiếng Việt?"
    },
    "answer": {
      "en": "Comprehensive explanation in English formatted in Markdown. Include fenced \`\`\`java code examples where relevant.",
      "vi": "Giải thích chi tiết bằng tiếng Việt định dạng Markdown. Kèm theo ví dụ mã \`\`\`java nếu cần."
    }
  }
]`
  }
};

// Configure Marked.js to use Highlight.js for code blocks
if (window.marked && window.hljs) {
  marked.setOptions({
    highlight: function(code, lang) {
      const language = hljs.getLanguage(lang) ? lang : 'java';
      return hljs.highlight(code, { language }).value;
    },
    breaks: true,
    gfm: true
  });
}

document.addEventListener('DOMContentLoaded', () => {
  initCategoryFilter();
  updateUiTexts();
  renderApp();
  setupEventListeners();
});

/**
 * Populate category dropdown filter based on existing questions in selected language
 */
function initCategoryFilter() {
  const categorySelect = document.getElementById('categoryFilter');
  if (!categorySelect) return;

  const active = categorySelect.value || 'All';
  const categories = store.getCategories(currentLang);
  
  categorySelect.innerHTML = categories
    .map(cat => {
      const value = cat === 'Tất cả' || cat === 'All' ? 'All' : cat;
      return `<option value="${value}" ${value === active ? 'selected' : ''}>${cat}</option>`;
    })
    .join('');
}

/**
 * Apply selected language translation map to all static UI tags in index.html
 */
function updateUiTexts() {
  const t = TRANSLATIONS[currentLang];

  // Header / Branding
  document.getElementById('ui-brand-title').textContent = t.brandTitle;
  document.getElementById('ui-brand-subtitle').textContent = t.brandSubtitle;
  document.getElementById('langText').textContent = currentLang === 'en' ? 'VI' : 'EN';
  
  // Header Nav Actions
  document.getElementById('ui-btn-prompt').textContent = t.btnPrompt;
  document.getElementById('ui-btn-add').textContent = t.btnAdd;
  document.getElementById('ui-btn-export').textContent = t.btnExport;
  document.getElementById('ui-btn-import').textContent = t.btnImport;

  // Stats Labels
  document.getElementById('ui-lbl-total').textContent = t.lblTotal;
  document.getElementById('ui-lbl-mastered').textContent = t.lblMastered;
  document.getElementById('ui-lbl-review').textContent = t.lblReview;

  // Search Input
  document.getElementById('searchInput').placeholder = t.searchPlaceholder;

  // Mastery Select Options
  document.getElementById('ui-opt-all-status').textContent = t.optAllStatus;
  document.getElementById('ui-opt-mastered').textContent = t.optMastered;
  document.getElementById('ui-opt-review').textContent = t.optReview;
  document.getElementById('ui-opt-unrated').textContent = t.optUnrated;

  // Expand button
  document.getElementById('toggleAllText').textContent = allExpanded ? t.toggleAllCollapse : t.toggleAllExpand;

  // Add Question Modal
  document.getElementById('modalAddTitle').textContent = t.modalAddTitle;
  document.getElementById('ui-frm-lbl-cat').textContent = t.frmLblCat;
  document.getElementById('ui-frm-lbl-diff').textContent = t.frmLblDiff;
  document.getElementById('ui-frm-lbl-q').textContent = t.frmLblQ;
  document.getElementById('ui-frm-lbl-ans').textContent = t.frmLblAns;
  document.getElementById('ui-frm-btn-cancel').textContent = t.frmBtnCancel;
  document.getElementById('ui-frm-btn-save').textContent = t.frmBtnSave;

  // AI Prompt Modal
  document.getElementById('modalAiTitle').textContent = t.modalAiTitle;
  document.getElementById('ui-prompt-desc').innerHTML = t.promptDesc;
  document.getElementById('promptText').textContent = t.promptTextContent;
  document.getElementById('copyBtnText').textContent = t.copyPrompt;
}

/**
 * Re-render statistics and accordion list based on active filters
 */
function renderApp() {
  initCategoryFilter();
  renderStats();
  renderQuestionsList();
  if (window.lucide) {
    lucide.createIcons();
  }
}

/**
 * Update dashboard statistics card values
 */
function renderStats() {
  const stats = store.getStats();
  const elTotal = document.getElementById('statTotal');
  const elMastered = document.getElementById('statMastered');
  const elReview = document.getElementById('statReview');

  if (elTotal) elTotal.textContent = stats.total;
  if (elMastered) elMastered.textContent = stats.mastered;
  if (elReview) elReview.textContent = stats.needsReview;
}

/**
 * Render filtered accordion list
 */
function renderQuestionsList() {
  const container = document.getElementById('accordionContainer');
  if (!container) return;

  const searchQuery = (document.getElementById('searchInput')?.value || '').toLowerCase().trim();
  const activeCategory = document.getElementById('categoryFilter')?.value || 'All';
  const activeMastery = document.getElementById('masteryFilter')?.value || 'All';

  const allQuestions = store.getAllQuestions();

  const filtered = allQuestions.filter(q => {
    // Get language-aware category and normalize consolidated topic prefix
    let catStr = typeof q.category === 'object' ? (q.category[currentLang] || q.category['en']) : q.category;
    catStr = (catStr || '').split(' - ')[0].trim();
    
    // Category check
    if (activeCategory !== 'All' && catStr !== activeCategory) return false;

    // Mastery check
    const mastery = store.getMastery(q.id);
    if (activeMastery !== 'All' && mastery !== activeMastery) return false;

    // Search check
    if (searchQuery) {
      const qText = typeof q.question === 'object' ? (q.question[currentLang] || q.question['en']) : q.question;
      const aText = typeof q.answer === 'object' ? (q.answer[currentLang] || q.answer['en']) : q.answer;
      
      const matchTitle = qText.toLowerCase().includes(searchQuery);
      const matchAnswer = aText.toLowerCase().includes(searchQuery);
      const matchCategory = catStr.toLowerCase().includes(searchQuery);
      return matchTitle || matchAnswer || matchCategory;
    }

    return true;
  });

  const t = TRANSLATIONS[currentLang];

  if (filtered.length === 0) {
    container.innerHTML = `
      <div class="empty-state">
        <i data-lucide="folder-search" style="width: 40px; height: 40px; color: var(--text-tertiary);"></i>
        <h3 style="font-size: 16px; font-weight: 500; color: var(--text-primary);">${escapeHtml(t.emptyStateTitle)}</h3>
        <p style="font-size: 14px; color: var(--text-secondary);">${escapeHtml(t.emptyStateText)}</p>
      </div>
    `;
    return;
  }

  container.innerHTML = filtered.map(q => {
    const masteryStatus = store.getMastery(q.id);
    const badgeConfig = getBadgeConfig(masteryStatus);

    // Extract language-aware question, answer and category fields
    const categoryText = typeof q.category === 'object' ? (q.category[currentLang] || q.category['en']) : q.category;
    const questionText = typeof q.question === 'object' ? (q.question[currentLang] || q.question['en']) : q.question;
    const answerText = typeof q.answer === 'object' ? (q.answer[currentLang] || q.answer['en']) : q.answer;

    // Parse Markdown safely
    let renderedAnswerHtml = '';
    if (window.marked) {
      renderedAnswerHtml = marked.parse(answerText);
    } else {
      renderedAnswerHtml = `<p>${escapeHtml(answerText)}</p>`;
    }

    return `
      <article class="accordion-item ${allExpanded ? 'expanded' : ''}" data-id="${q.id}">
        <header class="accordion-header" tabindex="0" role="button" aria-expanded="${allExpanded}">
          <div class="question-meta">
            <div class="badges-row">
              <span class="tag tag-category">${escapeHtml(categoryText)}</span>
              <span class="tag tag-difficulty">${escapeHtml(q.difficulty || 'Junior')}</span>
              ${(q.isCustom || q.isSeed === false) ? `<span class="tag tag-custom">Custom</span>` : ''}
            </div>
            <h3 class="question-title">${escapeHtml(questionText)}</h3>
          </div>

          <div class="header-controls">
            <button 
              type="button" 
              class="status-badge ${masteryStatus}" 
              data-action="toggle-mastery" 
              data-id="${q.id}"
              title="Change Status / Thay Đổi Trạng Thế"
            >
              <i data-lucide="${badgeConfig.icon}" style="width: 14px; height: 14px;"></i>
              <span>${badgeConfig.label}</span>
            </button>

            ${(q.isCustom || q.isSeed === false) ? `
              <button 
                type="button" 
                class="btn-icon" 
                style="color: var(--color-danger);" 
                data-action="delete-custom" 
                data-id="${q.id}" 
                title="Delete Question / Xóa Câu Hỏi"
              >
                <i data-lucide="trash-2" style="width: 16px; height: 16px;"></i>
              </button>
            ` : ''}

            <i data-lucide="chevron-down" class="accordion-chevron" style="width: 18px; height: 18px;"></i>
          </div>
        </header>

        <div class="accordion-content" style="${allExpanded ? 'max-height: 2500px;' : ''}">
          <div class="answer-container">
            ${renderedAnswerHtml}
          </div>
        </div>
      </article>
    `;
  }).join('');

  // Re-run code block syntax highlighting inside rendered DOM
  if (window.hljs) {
    container.querySelectorAll('pre code').forEach((block) => {
      hljs.highlightElement(block);
    });
  }
}

/**
 * Badge appearance mapping helper
 */
function getBadgeConfig(status) {
  const t = TRANSLATIONS[currentLang];
  switch (status) {
    case 'mastered':
      return { label: t.badgeMastered, icon: 'check-circle-2' };
    case 'needs_review':
      return { label: t.badgeReview, icon: 'alert-circle' };
    default:
      return { label: t.badgeUnrated, icon: 'help-circle' };
  }
}

/**
 * Simple HTML escape helper
 */
function escapeHtml(str) {
  if (!str) return '';
  return String(str)
    .replace(/&/g, '&amp;')
    .replace(/</g, '&lt;')
    .replace(/>/g, '&gt;')
    .replace(/"/g, '&quot;')
    .replace(/'/g, '&#039;');
}

/**
 * Setup UI event listeners via Event Delegation
 */
function setupEventListeners() {
  const container = document.getElementById('accordionContainer');

  // Accordion Expand/Collapse & Badge Click handler via Event Delegation
  container?.addEventListener('click', (e) => {
    const masteryBtn = e.target.closest('[data-action="toggle-mastery"]');
    if (masteryBtn) {
      e.stopPropagation();
      const id = masteryBtn.getAttribute('data-id');
      cycleMasteryStatus(id);
      return;
    }

    const deleteBtn = e.target.closest('[data-action="delete-custom"]');
    if (deleteBtn) {
      e.stopPropagation();
      const id = deleteBtn.getAttribute('data-id');
      if (confirm(TRANSLATIONS[currentLang].deleteConfirm)) {
        store.deleteCustomQuestion(id);
        initCategoryFilter();
        renderApp();
      }
      return;
    }

    const header = e.target.closest('.accordion-header');
    if (header) {
      const item = header.closest('.accordion-item');
      toggleAccordionItem(item);
    }
  });

  // Language switcher button click
  document.getElementById('btnLangToggle')?.addEventListener('click', () => {
    currentLang = currentLang === 'en' ? 'vi' : 'en';
    localStorage.setItem('java_prep_lang_pref', currentLang);
    updateUiTexts();
    initCategoryFilter();
    renderApp();
  });

  // Accordion Keyboard Accessibility (Enter/Space on header)
  container?.addEventListener('keydown', (e) => {
    if (e.key === 'Enter' || e.key === ' ') {
      const header = e.target.closest('.accordion-header');
      if (header) {
        e.preventDefault();
        const item = header.closest('.accordion-item');
        toggleAccordionItem(item);
      }
    }
  });

  // Search input live filtering
  const searchInput = document.getElementById('searchInput');
  searchInput?.addEventListener('input', () => renderQuestionsList());

  // Filters change
  document.getElementById('categoryFilter')?.addEventListener('change', () => renderQuestionsList());
  document.getElementById('masteryFilter')?.addEventListener('change', () => renderQuestionsList());

  // Expand / Collapse All Toggle
  const btnToggleAll = document.getElementById('btnToggleAll');
  btnToggleAll?.addEventListener('click', () => {
    allExpanded = !allExpanded;
    const labelEl = document.getElementById('toggleAllText');
    if (labelEl) {
      labelEl.textContent = allExpanded ? TRANSLATIONS[currentLang].toggleAllCollapse : TRANSLATIONS[currentLang].toggleAllExpand;
    }
    renderQuestionsList();
    if (window.lucide) lucide.createIcons();
  });

  // Modals management
  document.getElementById('btnAddQuestion')?.addEventListener('click', () => {
    document.getElementById('modalAddQuestion')?.showModal();
  });

  document.getElementById('btnAiHelper')?.addEventListener('click', () => {
    document.getElementById('modalAiPrompt')?.showModal();
  });

  document.querySelectorAll('[data-close-modal]').forEach(btn => {
    btn.addEventListener('click', () => {
      const modalId = btn.getAttribute('data-close-modal');
      document.getElementById(modalId)?.close();
    });
  });

  // Add Question Form Submit
  const formAddQuestion = document.getElementById('formAddQuestion');
  formAddQuestion?.addEventListener('submit', (e) => {
    e.preventDefault();
    const category = document.getElementById('inputCategory').value;
    const difficulty = document.getElementById('inputDifficulty').value;
    const question = document.getElementById('inputQuestion').value;
    const answer = document.getElementById('inputAnswer').value;

    store.addCustomQuestion({ category, difficulty, question, answer });
    formAddQuestion.reset();
    document.getElementById('modalAddQuestion')?.close();

    initCategoryFilter();
    renderApp();
  });

  // Copy AI Prompt Button
  document.getElementById('btnCopyPrompt')?.addEventListener('click', () => {
    const promptText = document.getElementById('promptText')?.textContent || '';
    navigator.clipboard.writeText(promptText).then(() => {
      const btnText = document.getElementById('copyBtnText');
      if (btnText) {
        btnText.textContent = TRANSLATIONS[currentLang].copied;
        setTimeout(() => {
          btnText.textContent = TRANSLATIONS[currentLang].copyPrompt;
        }, 2500);
      }
    });
  });

  // Export JSON
  document.getElementById('btnExportJson')?.addEventListener('click', () => {
    store.exportToJSON();
  });

  // Import JSON
  const importInput = document.getElementById('importFileInput');
  importInput?.addEventListener('change', (e) => {
    const file = e.target.files?.[0];
    if (!file) return;

    const reader = new FileReader();
    reader.onload = (event) => {
      const content = event.target.result;
      const result = store.importFromJSON(content);
      if (result.success) {
        alert(currentLang === 'vi' 
          ? `Nhập thành công ${result.addedCount} câu hỏi mới!` 
          : `Successfully imported ${result.addedCount} new questions!`
        );
        initCategoryFilter();
        renderApp();
      } else {
        alert(currentLang === 'vi'
          ? `Nhập file JSON thất bại: ${result.error}`
          : `Failed to import JSON file: ${result.error}`
        );
      }
      importInput.value = '';
    };
    reader.readAsText(file);
  });
}

/**
 * Toggle single accordion item smoothly
 */
function toggleAccordionItem(item) {
  if (!item) return;
  const isExpanded = item.classList.contains('expanded');
  const content = item.querySelector('.accordion-content');

  if (isExpanded) {
    item.classList.remove('expanded');
    if (content) content.style.maxHeight = null;
  } else {
    item.classList.add('expanded');
    if (content) content.style.maxHeight = content.scrollHeight + 500 + 'px';
  }
}

/**
 * Cycle question status: unrated -> needs_review -> mastered -> unrated
 */
function cycleMasteryStatus(id) {
  const current = store.getMastery(id);
  let next = 'needs_review';
  if (current === 'needs_review') next = 'mastered';
  else if (current === 'mastered') next = 'unrated';

  store.setMastery(id, next);
  renderStats();

  // Update specific badge DOM element without re-rendering entire list
  const badgeEl = document.querySelector(`.status-badge[data-id="${id}"]`);
  if (badgeEl) {
    badgeEl.className = `status-badge ${next}`;
    const cfg = getBadgeConfig(next);
    badgeEl.innerHTML = `
      <i data-lucide="${cfg.icon}" style="width: 14px; height: 14px;"></i>
      <span>${cfg.label}</span>
    `;
    if (window.lucide) lucide.createIcons();
  }
}
