// main.js を整理
// 即時実行関数式（IIFE）でスコープを分離
(function() {
  // DOM読み込み完了時の処理
  document.addEventListener('DOMContentLoaded', function() {
    // 機能ごとに関数として分離
    initNavigation();
    initScrollEffects();
    initFormValidation();
    initCharts();
  });
  
  // ナビゲーション関連の初期化
  function initNavigation() {
    const nav = document.querySelector('.terra-nav');
    if (nav) {
      window.addEventListener('scroll', function() {
        if (window.scrollY > 50) {
          nav.classList.add('scrolled');
        } else {
          nav.classList.remove('scrolled');
        }
      });
    }
    
    // スムーズスクロール
    document.querySelectorAll('a[href^="#"]').forEach(anchor => {
      anchor.addEventListener('click', function(e) {
        e.preventDefault();
        
        const targetId = this.getAttribute('href');
        if (targetId === '#') return;
        
        const targetElement = document.querySelector(targetId);
        if (targetElement) {
          window.scrollTo({
            top: targetElement.offsetTop - 70,
            behavior: 'smooth'
          });
        }
      });
    });
  }
  
  // スクロールアニメーション効果
  function initScrollEffects() {
    const observer = new IntersectionObserver((entries) => {
      entries.forEach(entry => {
        if (entry.isIntersecting) {
          entry.target.classList.add('fade-in-up');
          observer.unobserve(entry.target);
        }
      });
    }, { threshold: 0.1 });

    const animateElements = document.querySelectorAll('.animate-on-scroll');
    animateElements.forEach(element => {
      observer.observe(element);
    });
  }
  
  // フォームバリデーション
  function initFormValidation() {
    const contactForm = document.getElementById('contactForm');
    if (contactForm) {
      contactForm.addEventListener('submit', validateContactForm);
    }
    
    // エラー表示後のリダイレクト処理
    const hasError = document.querySelector('.text-danger') !== null;
    if (hasError) {
      scrollToContactForm();
    }
  }
  
  // フォームバリデーション関数
  function validateContactForm(e) {
    let isValid = true;
    let firstInvalidField = null;
    
    // 名前のバリデーション
    const nameInput = document.getElementById('name');
    if (nameInput && !nameInput.value.trim()) {
      showError(nameInput, '名前は必須です');
      isValid = false;
      firstInvalidField = firstInvalidField || nameInput;
    } else if (nameInput) {
      clearError(nameInput);
    }
    
    // その他のフィールドバリデーション...
    
    // reCAPTCHAのバリデーション
    const recaptchaResponse = window.grecaptcha ? grecaptcha.getResponse() : null;
    const recaptchaContainer = document.querySelector('.g-recaptcha');
    
    if (recaptchaContainer && !recaptchaResponse) {
      e.preventDefault();
      let errorElement = document.createElement('div');
      errorElement.className = 'text-danger mt-2';
      errorElement.textContent = 'ロボットではないことを確認してください';
      
      const existingError = recaptchaContainer.nextElementSibling;
      if (existingError && existingError.classList.contains('text-danger')) {
        existingError.remove();
      }
      
      recaptchaContainer.after(errorElement);
      
      recaptchaContainer.style.animation = 'shake 0.5s ease-in-out';
      
      if (!firstInvalidField) {
        scrollToElement(recaptchaContainer);
      }
      
      isValid = false;
    }
    
    // フォームが無効な場合は送信をキャンセル
    if (!isValid) {
      e.preventDefault();
      if (firstInvalidField) {
        firstInvalidField.focus();
        scrollToElement(firstInvalidField);
      }
    }
  }
  
  // エラーを表示する関数
  function showError(input, message) {
    input.classList.add('is-invalid');
    input.classList.remove('is-valid');
    
    let errorElement = input.nextElementSibling;
    if (!errorElement || !errorElement.classList.contains('invalid-feedback')) {
      errorElement = document.createElement('div');
      errorElement.className = 'invalid-feedback';
      input.parentNode.appendChild(errorElement);
    }
    errorElement.textContent = message;
  }
  
  // エラーをクリアする関数
  function clearError(input) {
    input.classList.remove('is-invalid');
    input.classList.add('is-valid');
  }
  
  // 指定要素までスクロール
  function scrollToElement(element) {
    const elementTop = element.getBoundingClientRect().top + window.pageYOffset - 120;
    window.scrollTo({
      top: elementTop,
      behavior: 'smooth'
    });
  }
  
  // お問い合わせフォームまでスクロール
  function scrollToContactForm() {
    const contactForm = document.getElementById('contact');
    if (contactForm) {
      setTimeout(function() {
        scrollToElement(contactForm);
        
        // reCAPTCHAのリセット
        if (typeof grecaptcha !== 'undefined') {
          grecaptcha.reset();
        }
      }, 300);
    }
  }
  
  // チャートの初期化
  function initCharts() {
    if (document.getElementById('achievementChart')) {
      const ctx = document.getElementById('achievementChart').getContext('2d');
      
      const achievementChart = new Chart(ctx, {
        type: 'bar',
        data: {
          labels: ['2020', '2021', '2022', '2023', '2024'],
          datasets: [{
            label: '研究開発プロジェクト数',
            data: [12, 19, 25, 30, 42],
            backgroundColor: 'rgba(54, 162, 235, 0.5)',
            borderColor: 'rgba(54, 162, 235, 1)',
            borderWidth: 1
          }, {
            label: '特許取得数',
            data: [5, 10, 15, 22, 30],
            backgroundColor: 'rgba(75, 192, 192, 0.5)',
            borderColor: 'rgba(75, 192, 192, 1)',
            borderWidth: 1
          }]
        },
        options: {
          responsive: true,
          plugins: {
            title: {
              display: true,
              text: 'TerraGroup Labs 成長実績'
            },
          },
          scales: {
            y: {
              beginAtZero: true
            }
          }
        }
      });
    }
  }
})();

// reCAPTCHA用のコールバック関数はグローバルスコープに必要
function recaptchaCallback() {
  const recaptchaContainer = document.querySelector('.g-recaptcha');
  if (recaptchaContainer) {
    const errorElement = recaptchaContainer.nextElementSibling;
    if (errorElement && errorElement.classList.contains('text-danger')) {
      errorElement.remove();
    }
  }
}