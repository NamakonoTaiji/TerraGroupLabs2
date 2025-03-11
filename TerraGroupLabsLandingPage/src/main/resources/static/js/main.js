// チャートの初期化
document.addEventListener('DOMContentLoaded', function() {
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
    
    // スムーズスクロール
    document.querySelectorAll('a[href^="#"]').forEach(anchor => {
        anchor.addEventListener('click', function (e) {
            e.preventDefault();
            
            const targetId = this.getAttribute('href');
            if (targetId === '#') return;
            
            const targetElement = document.querySelector(targetId);
            if (targetElement) {
                targetElement.scrollIntoView({
                    behavior: 'smooth'
                });
            }
        });
    });
});

// 既存のmain.jsファイルに追加
document.addEventListener('DOMContentLoaded', function() {
  const contactForm = document.getElementById('contactForm');
  if (contactForm) {
    contactForm.addEventListener('submit', function(e) {
      let isValid = true;
      
      // 名前のバリデーション
      const nameInput = document.getElementById('name');
      if (!nameInput.value.trim()) {
        showError(nameInput, '名前は必須です');
        isValid = false;
      } else {
        clearError(nameInput);
      }
      
      // メールアドレスのバリデーション
      const emailInput = document.getElementById('email');
      const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
      if (!emailPattern.test(emailInput.value)) {
        showError(emailInput, '有効なメールアドレスを入力してください');
        isValid = false;
      } else {
        clearError(emailInput);
      }
      
      // メッセージのバリデーション
      const messageInput = document.getElementById('message');
      if (!messageInput.value.trim()) {
        showError(messageInput, 'メッセージは必須です');
        isValid = false;
      } else {
        clearError(messageInput);
      }
      
      if (!isValid) {
        e.preventDefault();
      }
    });
  }
  
  function showError(input, message) {
    const formGroup = input.closest('.mb-3');
    const errorDiv = formGroup.querySelector('.invalid-feedback') || document.createElement('div');
    errorDiv.className = 'invalid-feedback';
    errorDiv.textContent = message;
    input.classList.add('is-invalid');
    
    if (!formGroup.querySelector('.invalid-feedback')) {
      formGroup.appendChild(errorDiv);
    }
  }
  
  function clearError(input) {
    input.classList.remove('is-invalid');
    input.classList.add('is-valid');
  }
});