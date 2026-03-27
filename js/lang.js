/**
 * Academify Language Switcher (DE/EN)
 * Usage: Add data-i18n="key" to any HTML element.
 * German text stays in the HTML as default.
 * English translations are stored here.
 */

var LANG = {
  current: localStorage.getItem('lang') || 'de',

  en: {
    // Landing Page - Hero
    'hero-title': 'Your Studies.<br/><span class="text-transparent bg-clip-text bg-gradient-to-r from-primary via-secondary to-primary text-glow">Your Rules.</span>',
    'hero-desc': 'Forget the chaos of Excel spreadsheets, PDF folders, and missed deadlines. Academify is the smart command center that unites everything you need for a successful university experience.',
    'hero-cta': 'Get Started Free',
    'hero-tour': 'Watch Tour',
    'hero-social': 'Over 50,000 active students already trust us.',

    // How it works
    'steps-title': 'Three Steps to Your Master Plan.',
    'steps-desc': 'We built Academify so intuitively that you don\'t need a manual. In less than two minutes you\'re ready for a more stress-free semester.',
    'step1-title': 'Create Profile',
    'step1-desc': 'Choose your university and program. We adapt to your specific requirements.',
    'step2-title': 'Organize Studies',
    'step2-desc': 'Import your courses and set your personal learning goals. Everything synced in one place.',
    'step3-title': 'Use Your Network',
    'step3-desc': 'Connect with fellow students and share resources lightning-fast through our hub.',

    // Features
    'feat-ai-title': 'AI-Powered Learning',
    'feat-ai-desc': 'Get summaries created for you, practice with generated quiz questions, and receive personalized study plans based on your pace.',
    'feat-community-title': 'Community',
    'feat-community-desc': 'Automatically find study partners based on your enrolled courses in your city.',
    'feat-community-btn': 'Find Match',
    'feat-deadline-title': 'Deadline Radar',
    'feat-deadline-desc': 'Never miss a submission again. Smart push reminders synced with your calendar.',
    'feat-uni-title': 'Partner Universities',
    'feat-uni-desc': 'We already support over 150 universities in DACH with direct integration to Moodle & Canvas.',

    // Vision
    'vision-label': 'Why we build Academify',
    'vision-quote': '"We believe education should inspire, not slow you down through bureaucracy and organizational chaos."',
    'vision-mission': 'Our mission is to give every student the tools to unlock their full potential – efficiently, connected, and with joy in learning.',

    // Social Proof
    'social-title': 'Loved by Students.',

    // FAQ
    'faq-q1': 'Is Academify really free?',
    'faq-a1': 'Yes, the basic version for students is and will remain completely free.',
    'faq-q2': 'How secure is my data?',
    'faq-a2': 'Your privacy comes first. We use bank-grade encryption and servers in Germany (GDPR-compliant).',
    'faq-q3': 'Does it work with my university?',
    'faq-a3': 'We already support over 150 universities in Germany, Austria, and Switzerland.',

    // Footer
    'footer-desc': 'Your smart portal for a stress-free university life. By students, for students.',

    // Nav
    'nav-login': 'Login',
    'nav-signup': 'Sign Up',
    'nav-features': 'Features',
    'nav-community': 'Community',
    'nav-vision': 'Vision',

    // Shared sidebar items
    'nav-dashboard': 'Dashboard',
    'nav-messages': 'Messages',
    'nav-profile': 'Profile & Friends',
    'nav-courses': 'Online Courses',
    'nav-tutoring': 'Tutoring',
    'nav-studydocs': 'StudyDocs',
    'nav-campus': 'Campus Life',
    'nav-map': 'Community Map',
    'nav-ride': 'StudyRide',
    'nav-merch': 'Merch Shop',
    'nav-jobs': 'Jobs & Internships',
    'nav-logout': '← Log Out',

    // Section labels
    'label-overview': 'Overview',
    'label-learning': 'Learning',
    'label-campus': 'Campus & Life',
    'label-career': 'Career',
    'label-main': 'Main Menu',
    'label-campus-career': 'Campus & Career',
  },

  de: {} // German is the default in HTML, no overrides needed
};

// Store original German text on first load
var originals = {};

function initLang() {
  // Create toggle button
  var btn = document.createElement('div');
  btn.id = 'lang-toggle';
  btn.style.cssText = 'position:fixed;bottom:20px;right:20px;z-index:9999;display:flex;background:#1a1b26;border:1px solid rgba(255,255,255,0.1);border-radius:30px;overflow:hidden;font-family:sans-serif;font-size:13px;font-weight:600;cursor:pointer;box-shadow:0 4px 20px rgba(0,0,0,0.4)';
  btn.innerHTML = '<span id="lang-de" style="padding:8px 14px;transition:all 0.2s">DE</span><span id="lang-en" style="padding:8px 14px;transition:all 0.2s">EN</span>';
  document.body.appendChild(btn);

  // Store originals
  document.querySelectorAll('[data-i18n]').forEach(function(el) {
    originals[el.getAttribute('data-i18n')] = el.innerHTML;
  });

  // Click handlers
  document.getElementById('lang-de').onclick = function() { switchLang('de'); };
  document.getElementById('lang-en').onclick = function() { switchLang('en'); };

  // Apply saved language
  updateToggleStyle();
  if (LANG.current === 'en') applyLang('en');
}

function switchLang(lang) {
  LANG.current = lang;
  localStorage.setItem('lang', lang);
  applyLang(lang);
  updateToggleStyle();
}

function applyLang(lang) {
  document.querySelectorAll('[data-i18n]').forEach(function(el) {
    var key = el.getAttribute('data-i18n');
    if (lang === 'en' && LANG.en[key]) {
      el.innerHTML = LANG.en[key];
    } else if (lang === 'de' && originals[key]) {
      el.innerHTML = originals[key];
    }
  });
}

function updateToggleStyle() {
  var de = document.getElementById('lang-de');
  var en = document.getElementById('lang-en');
  if (!de || !en) return;
  if (LANG.current === 'de') {
    de.style.background = '#7c6dfa'; de.style.color = '#fff';
    en.style.background = 'transparent'; en.style.color = '#6b6880';
  } else {
    en.style.background = '#7c6dfa'; en.style.color = '#fff';
    de.style.background = 'transparent'; de.style.color = '#6b6880';
  }
}

// Auto-init when DOM is ready
if (document.readyState === 'loading') {
  document.addEventListener('DOMContentLoaded', initLang);
} else {
  initLang();
}
