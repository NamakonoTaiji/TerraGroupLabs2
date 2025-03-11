<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>TerraGroup Labs - 地球の未来をテクノロジーで創造する</title>

<!-- Google Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&family=Space+Grotesk:wght@400;500;700&family=JetBrains+Mono&display=swap"
	rel="stylesheet">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Bootstrap Icons -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.0/font/bootstrap-icons.css">

<!-- カスタムCSS -->
<link rel="stylesheet" href="<c:url value='/css/styles.css'/>">
</head>
<body>
	<!-- ナビゲーションバー -->
	<nav
		class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top terra-nav">
		<div class="container">
			<a class="navbar-brand" href="<c:url value='/'/>"> <img
				src="<c:url value='/images/logo.svg'/>" alt="TerraGroup Labs"
				height="40" width="160"> <!-- 画像が表示されない場合のバックアップテキスト --> <span
				class="ms-2 d-none logo-text">TerraGroup Labs</span>
			</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav ms-auto">
					<li class="nav-item"><a class="nav-link active terra-nav-link"
						href="<c:url value='/'/>">ホーム</a></li>
					<li class="nav-item"><a class="nav-link terra-nav-link"
						href="<c:url value='/service'/>">サービス</a></li>
					<li class="nav-item"><a class="nav-link terra-nav-link"
						href="<c:url value='/about'/>">会社概要</a></li>
					<li class="nav-item"><a class="nav-link terra-nav-link"
						href="#contact">お問い合わせ</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<!-- ヒーローセクション -->
	<header class="hero-section">
		<div class="container text-center">
			<h1 class="display-title mb-mb-d mb-3 animate-fade-in">地球の未来をテクノロジーで創造する</h1>
			<p class="lead mb-md-5 mb-4 animate-fade-in-delayed">持続可能な社会の実現に向けた革新的な技術開発</p>
			<a href="#services"
				class="btn btn-lg terra-btn-primary animate-fade-in-delayed-more">詳細はこちら
				<i class="bi bi-arrow-right ms-2"></i>
			</a>
		</div>
	</header>
	<!-- 企業実績を表示するセクション -->
	<section class="section bg-light">
		<div class="container">
			<div class="text-center mb-5">
				<span class="badge bg-primary px-3 py-2 rounded-pill mb-3">OUR
					ACHIEVEMENTS</span>
				<h2 class="display-5 fw-bold">数字で見るTerraGroup Labs</h2>
				<p class="lead text-muted">革新的な技術と持続可能な未来への取り組み</p>
			</div>

			<div class="row g-4 text-center">
				<div class="col-md-3 col-6">
					<div class="p-4 bg-white rounded-lg shadow-sm h-100">
						<div class="display-4 text-primary mb-2">35+</div>
						<p class="fw-bold mb-1">研究プロジェクト</p>
						<p class="text-muted small">進行中の革新的な取り組み</p>
					</div>
				</div>
				<div class="col-md-3 col-6">
					<div class="p-4 bg-white rounded-lg shadow-sm h-100">
						<div class="display-4 text-primary mb-2">120</div>
						<p class="fw-bold mb-1">専門研究員</p>
						<p class="text-muted small">世界トップクラスの科学者集団</p>
					</div>
				</div>
				<div class="col-md-3 col-6">
					<div class="p-4 bg-white rounded-lg shadow-sm h-100">
						<div class="display-4 text-primary mb-2">48</div>
						<p class="fw-bold mb-1">特許取得</p>
						<p class="text-muted small">革新的な技術ソリューション</p>
					</div>
				</div>
				<div class="col-md-3 col-6">
					<div class="p-4 bg-white rounded-lg shadow-sm h-100">
						<div class="display-4 text-primary mb-2">18</div>
						<p class="fw-bold mb-1">国際パートナー</p>
						<p class="text-muted small">グローバルな研究ネットワーク</p>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- 企業の展望、理念を表示するセクション -->
	<section class="section position-relative">
		<div class="bg-image position-absolute w-100 h-100"
			style="background: linear-gradient(rgba(0, 30, 55, 0.8), rgba(0, 30, 55, 0.9)), url('/images/tech-vision-bg.jpg'); background-size: cover; background-position: center;"></div>
		<div class="container position-relative text-white">
			<div class="row">
				<div class="col-lg-6 pt-3">
					<span
						class="badge bg-light text-primary px-3 py-2 rounded-pill mb-3">OUR
						VISION</span>
					<h2 class="display-5 fw-bold mb-4">持続可能な未来へのビジョン</h2>
					<p class="lead mb-4">TerraGroup
						Labsは「科学の力で世界の課題を解決する」という信念のもと、革新的な技術開発に取り組んでいます。</p>

					<div class="d-flex align-items-center mb-4">
						<div
							class="icon-box me-3 bg-primary text-white rounded-circle d-flex align-items-center justify-content-center"
							style="width: 50px; height: 50px;">
							<i class="bi bi-lightbulb-fill"></i>
						</div>
						<div>
							<h4 class="mb-1">革新的思考</h4>
							<p class="mb-0">従来の枠組みにとらわれない発想で新たな可能性を追求します</p>
						</div>
					</div>

					<div class="d-flex align-items-center mb-4">
						<div
							class="icon-box me-3 bg-primary text-white rounded-circle d-flex align-items-center justify-content-center"
							style="width: 50px; height: 50px;">
							<i class="bi bi-globe"></i>
						</div>
						<div>
							<h4 class="mb-1">地球規模の影響</h4>
							<p class="mb-0">すべてのプロジェクトは地球環境と人類社会の調和を目指しています</p>
						</div>
					</div>

					<div class="d-flex align-items-center">
						<div
							class="icon-box me-3 bg-primary text-white rounded-circle d-flex align-items-center justify-content-center"
							style="width: 50px; height: 50px;">
							<i class="bi bi-hand-thumbs-up"></i>
						</div>
						<div>
							<h4 class="mb-1">倫理的アプローチ</h4>
							<p class="mb-0">テクノロジーの発展と倫理的価値観の共存を大切にしています</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- 企業のニュースを表示するセクション -->
	<section class="section">
		<div class="container">
			<div class="text-center mb-5">
				<span class="badge bg-primary px-3 py-2 rounded-pill mb-3 mt-3">LATEST
					NEWS</span>
				<h2 class="display-5 fw-bold">最新の研究成果</h2>
				<p class="lead text-muted">TerraGroup Labsの最新の取り組みや成果をご紹介します</p>
			</div>

			<div class="row g-4">
				<div class="col-md-4">
					<div class="card h-100 border-0 shadow-sm">
						<img src="/images/news-1.jpg" class="card-img-top" alt="研究ニュース">
						<div class="card-body">
							<div class="d-flex align-items-center mb-2">
								<span class="badge bg-primary-light text-primary me-2">エネルギー部門</span>
								<small class="text-muted">2025.02.15</small>
							</div>
							<h4 class="card-title">Project Heliosがエネルギー効率30%向上を実現</h4>
							<p class="card-text">最新の核融合発電システムのテストで画期的な成果を達成。エネルギー効率が従来モデルより30%向上し、実用化への大きな一歩に。</p>
							<a href="#" class="btn btn-link p-0">詳細を読む <i
								class="bi bi-arrow-right"></i></a>
						</div>
					</div>
				</div>

				<div class="col-md-4">
					<div class="card h-100 border-0 shadow-sm">
						<img src="/images/news-2.jpg" class="card-img-top" alt="研究ニュース">
						<div class="card-body">
							<div class="d-flex align-items-center mb-2">
								<span class="badge bg-primary-light text-primary me-2">バイオテック部門</span>
								<small class="text-muted">2025.01.22</small>
							</div>
							<h4 class="card-title">GeneLock技術の臨床試験で有望な結果</h4>
							<p class="card-text">希少疾患治療に向けた遺伝子治療技術GeneLockの初期臨床試験で有望な結果を確認。安全性プロファイルも良好。</p>
							<a href="#" class="btn btn-link p-0">詳細を読む <i
								class="bi bi-arrow-right"></i></a>
						</div>
					</div>
				</div>

				<div class="col-md-4">
					<div class="card h-100 border-0 shadow-sm">
						<img src="/images/news-3.jpg" class="card-img-top" alt="研究ニュース">
						<div class="card-body">
							<div class="d-flex align-items-center mb-2">
								<span class="badge bg-primary-light text-primary me-2">防衛部門</span>
								<small class="text-muted">2024.12.05</small>
							</div>
							<h4 class="card-title">TG-Sentinelシステムがドローンの高い迎撃率を記録</h4>
							<p class="card-text">無人戦闘システムTG-Sentinelが飽和攻撃に対する高い抗堪性を示した。コストと信頼性を両立させた、ミサイルに代わる新しい防衛システム。</p>
							<a href="#" class="btn btn-link p-0">詳細を読む <i
								class="bi bi-arrow-right"></i></a>
						</div>
					</div>
				</div>
			</div>

			<div class="text-center mt-5">
				<a href="#" class="btn terra-btn-primary">すべてのニュースを見る <i
					class="bi bi-arrow-right ms-2"></i></a>
			</div>
		</div>
	</section>

	<!-- サービスセクション -->
	<section id="services" class="section bg-light">
		<div class="container">
			<div class="text-center mb-5">
				<span class="badge bg-primary px-3 py-2 rounded-pill mb-3">OUR
					SERVICES</span>
				<h2 class="display-5 fw-bold">革新的な技術ソリューション</h2>
				<p class="lead text-muted">最先端の研究と開発で、より良い未来を創造します</p>
			</div>

			<div class="row g-4">
				<!-- エネルギー部門 -->
				<div class="col-md-4">
					<div class="terra-card h-100">
						<div class="card-img-top-container">
							<img src="<c:url value='/images/energy-tech.jpg'/>"
								class="card-img-top" alt="エネルギー技術">
							<div class="card-body p-4">
								<div class="service-icon mb-4">
									<i class="bi bi-lightning-charge-fill"></i>
								</div>
								<h3>エネルギー技術</h3>
								<p>次世代のクリーンエネルギー技術で持続可能な社会の実現を目指します。核融合研究「Project
									Helios」や次世代太陽光パネルなど、革新的なエネルギーソリューションを開発しています。</p>
								<div class="mt-auto pt-3">
									<a href="<c:url value='/service/energy'/>"
										class="btn terra-btn-outline"> 詳細を見る <i
										class="bi bi-arrow-right ms-2"></i>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- 防衛部門 -->
				<div class="col-md-4">
					<div class="terra-card h-100">
						<div class="card-img-top-container">
							<img src="<c:url value='/images/defence-tech.jpg'/>"
								class="card-img-top" alt="エネルギー技術">
							<div class="card-body p-4">
								<div class="service-icon mb-4">
									<i class="bi bi-shield-lock-fill"></i>
								</div>
								<h3>防衛システム</h3>
								<p>高度なセキュリティと防衛技術で社会の安全を守ります。無人戦闘システム「TG-Sentinel」や特殊装備の開発を通じて、最先端の防衛ソリューションを提供しています。</p>
								<div class="mt-auto pt-3">
									<a href="<c:url value='/service/defense'/>"
										class="btn terra-btn-outline"> 詳細を見る <i
										class="bi bi-arrow-right ms-2"></i>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- バイオテクノロジー部門 -->
				<div class="col-md-4">
					<div class="terra-card h-100">
						<div class="card-img-top-container">
							<img src="<c:url value='/images/bio-tech.jpg'/>"
								class="card-img-top" alt="エネルギー技術">
							<div class="card-body p-4">
								<div class="service-icon mb-4">
									<i class="bi bi-virus"></i>
								</div>
								<h3>バイオテクノロジー</h3>
								<p>生命科学の革新的研究により、人類の健康と環境の未来を切り拓きます。遺伝子治療「GeneLock」や極限環境耐性生物の研究など、最先端のバイオテクノロジーを探求しています。</p>
								<div class="mt-auto pt-3">
									<a href="<c:url value='/service/biotech'/>"
										class="btn terra-btn-outline"> 詳細を見る <i
										class="bi bi-arrow-right ms-2"></i>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- 企業スローガン -->
			<div class="text-center mt-5">
				<p class="lead fw-bold">"Innovating Tomorrow, Securing Today"</p>
				<a href="<c:url value='/service'/>"
					class="btn terra-btn-primary mt-3"> すべてのサービスを見る <i
					class="bi bi-arrow-right ms-2"></i>
				</a>
			</div>
		</div>
	</section>

	<!-- お問い合わせセクション -->
	<section id="contact" class="section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-8">
					<div class="text-center mb-5">
						<span class="badge bg-primary px-3 py-2 rounded-pill mb-3">CONTACT
							US</span>
						<h2 class="display-5 fw-bold">お問い合わせ</h2>
						<p class="lead text-muted">ご質問やお見積りのご依頼など、お気軽にお問い合わせください</p>
					</div>

					<div class="card shadow-sm">
						<div class="card-body p-4 p-md-5">
							<form:form id="contactForm" modelAttribute="contactMessage"
								action="${pageContext.request.contextPath}/contact/confirm"
								method="post" class="needs-validation" novalidate="true">
								<div class="mb-4">
									<label for="name" class="form-label">お名前 <span
										class="text-danger">*</span></label>
									<div class="input-group">
										<span class="input-group-text"><i class="bi bi-person"></i></span>
										<form:input path="name" id="name" class="form-control"
											required="true" />
									</div>
									<form:errors path="name" cssClass="text-danger small mt-1"
										element="div" />
								</div>

								<div class="mb-4">
									<label for="email" class="form-label">メールアドレス <span
										class="text-danger">*</span></label>
									<div class="input-group">
										<span class="input-group-text"><i
											class="bi bi-envelope"></i></span>
										<form:input path="email" id="email" type="email"
											class="form-control" required="true" />
									</div>
									<form:errors path="email" cssClass="text-danger small mt-1"
										element="div" />
								</div>

								<div class="mb-4">
									<label for="message" class="form-label">お問い合わせ内容 <span
										class="text-danger">*</span></label>
									<form:textarea path="message" id="message" class="form-control"
										rows="5" required="true" />
									<form:errors path="message" cssClass="text-danger small mt-1"
										element="div" />
								</div>

								<div class="mb-3">
									<div class="g-recaptcha" data-sitekey="${recaptchaSiteKey}"
										data-callback="recaptchaCallback"></div>
									<c:if test="${not empty recaptchaError}">
										<div class="text-danger mt-2">${recaptchaError}</div>
									</c:if>
								</div>

								<div class="d-grid gap-2">
									<button type="submit" class="btn btn-primary btn-lg">
										送信する <i class="bi bi-send ms-2"></i>
									</button>
								</div>
							</form:form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- フッター -->
	<footer class="bg-dark text-white py-4 mt-5">
		<div class="container text-center">
			<p>&copy; 2025 TerraGroup Labs All Rights Reserved.</p>
			<div class="social-icons mt-3">
				<a href="#" class="text-white me-3"><i class="bi bi-twitter"></i></a>
				<a href="#" class="text-white me-3"><i class="bi bi-facebook"></i></a>
				<a href="#" class="text-white me-3"><i class="bi bi-linkedin"></i></a>
			</div>
		</div>
	</footer>
	<!-- Bootstrap JS -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

	<!-- アニメーション用のカスタムCSS追加 -->
	<style>
.animate-fade-in {
	opacity: 0;
	animation: fadeIn 1s ease-in-out forwards;
}

.animate-fade-in-delayed {
	opacity: 0;
	animation: fadeIn 1s ease-in-out 0.3s forwards;
}

.animate-fade-in-delayed-more {
	opacity: 0;
	animation: fadeIn 1s ease-in-out 0.6s forwards;
}

@
keyframes fadeIn {from { opacity:0;
	transform: translateY(20px);
}

to {
	opacity: 1;
	transform: translateY(0);
}
}
</style>

	<!-- ナビゲーションバーのスクロール効果用のJS -->
	<script>
    document.addEventListener('DOMContentLoaded', function() {
      const nav = document.querySelector('.terra-nav');
      
      window.addEventListener('scroll', function() {
        if (window.scrollY > 50) {
          nav.classList.add('scrolled');
        } else {
          nav.classList.remove('scrolled');
        }
      });
      
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
    });

 // サービスカードのスクロールアニメーション
    const observer = new IntersectionObserver((entries) => {
      entries.forEach(entry => {
        if (entry.isIntersecting) {
          entry.target.classList.add('fade-in-up');
          observer.unobserve(entry.target);
        }
      });
    }, { threshold: 0.1 });

    document.addEventListener('DOMContentLoaded', function() {
      const cards = document.querySelectorAll('.terra-card');
      cards.forEach(card => {
        card.classList.add('animate-on-scroll');
        observer.observe(card);
      });
    });
  </script>
	<!-- reCAPTCHA JS -->
	<script src="https://www.google.com/recaptcha/api.js" async defer></script>
	<!-- クライアント側でもバリデーションチェック -->
	<script>
  document.addEventListener('DOMContentLoaded', function() {
    const contactForm = document.getElementById('contactForm');
    if (contactForm) {
      contactForm.addEventListener('submit', function(e) {
        let isValid = true;
        let firstInvalidField = null;
        
        // 名前のバリデーション
        const nameInput = document.getElementById('name');
        if (!nameInput.value.trim()) {
          showError(nameInput, '名前は必須です');
          isValid = false;
          firstInvalidField = firstInvalidField || nameInput;
        } else {
          clearError(nameInput);
        }
        
        // メールアドレスのバリデーション
        const emailInput = document.getElementById('email');
        const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        if (!emailPattern.test(emailInput.value)) {
          showError(emailInput, '有効なメールアドレスを入力してください');
          isValid = false;
          firstInvalidField = firstInvalidField || emailInput;
        } else {
          clearError(emailInput);
        }
        
        // メッセージのバリデーション
        const messageInput = document.getElementById('message');
        if (!messageInput.value.trim()) {
          showError(messageInput, 'メッセージは必須です');
          isValid = false;
          firstInvalidField = firstInvalidField || messageInput;
        } else {
          clearError(messageInput);
        }
        
        // フォームが無効な場合は送信をキャンセルし、最初のエラー項目にフォーカス
        if (!isValid) {
          e.preventDefault();
          if (firstInvalidField) {
            firstInvalidField.focus();
            
            // エラーのある場所にスクロール（少し上にオフセット）
            const fieldTop = firstInvalidField.getBoundingClientRect().top + window.pageYOffset - 120;
            window.scrollTo({
              top: fieldTop,
              behavior: 'smooth'
            });
          }
        }
      });
    }
    
    // エラーを表示する関数
    function showError(input, message) {
      input.classList.add('is-invalid');
      input.classList.remove('is-valid');
      
      // エラーメッセージ要素を探すか作成する
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
  });
</script>
<!-- reCAPTCHA関連のスクリプト -->
<script src="https://www.google.com/recaptcha/api.js" async defer></script>

<script>
document.addEventListener('DOMContentLoaded', function() {
  // フラッシュメッセージやエラーが存在するか確認
  const hasError = ${not empty hasError ? true : false};
  const recaptchaError = document.querySelector(".text-danger:contains('reCAPTCHA')");
  
  if (hasError || recaptchaError) {
    // コンタクトフォームの位置を取得
    const contactForm = document.getElementById('contact');
    if (contactForm) {
      // スムーズにスクロール
      setTimeout(function() {
        window.scrollTo({
          top: contactForm.offsetTop - 100,
          behavior: 'smooth'
        });
        
        // reCAPTCHAのリセットと再描画
        if (typeof grecaptcha !== 'undefined') {
          grecaptcha.reset();
        }
      }, 300);
    }
  }
  
  // フォーム送信前のバリデーション
  const contactForm = document.getElementById('contactForm');
  if (contactForm) {
    contactForm.addEventListener('submit', function(e) {
      // 他のバリデーションロジック...
      
      // reCAPTCHAの検証（クライアントサイド）
      const recaptchaResponse = grecaptcha.getResponse();
      const recaptchaContainer = document.querySelector('.g-recaptcha');
      
      if (!recaptchaResponse) {
        e.preventDefault();
        
        // reCAPTCHAエラーメッセージを表示
        let errorElement = document.createElement('div');
        errorElement.className = 'text-danger mt-2';
        errorElement.textContent = 'ロボットではないことを確認してください';
        
        // 既存のエラーメッセージを削除
        const existingError = recaptchaContainer.nextElementSibling;
        if (existingError && existingError.classList.contains('text-danger')) {
          existingError.remove();
        }
        
        recaptchaContainer.after(errorElement);
        
        // reCAPTCHAコンテナを目立たせる
        recaptchaContainer.style.animation = 'shake 0.5s ease-in-out';
        
        // スクロールして表示
        window.scrollTo({
          top: recaptchaContainer.offsetTop - 120,
          behavior: 'smooth'
        });
      }
    });
  }
});

// reCAPTCHAのコールバック
function recaptchaCallback() {
  // reCAPTCHAが完了したときに関連するエラーメッセージを削除
  const recaptchaContainer = document.querySelector('.g-recaptcha');
  const errorElement = recaptchaContainer.nextElementSibling;
  if (errorElement && errorElement.classList.contains('text-danger')) {
    errorElement.remove();
  }
}
</script>
</body>
</html>