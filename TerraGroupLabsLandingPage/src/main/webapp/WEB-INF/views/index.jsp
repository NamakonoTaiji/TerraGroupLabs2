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
			<h1 class="display-title mb-4 animate-fade-in">地球の未来をテクノロジーで創造する</h1>
			<p class="lead mb-5 animate-fade-in-delayed">持続可能な社会の実現に向けた革新的な技術開発</p>
			<a href="#services"
				class="btn btn-lg terra-btn-primary animate-fade-in-delayed-more">詳細はこちら
				<i class="bi bi-arrow-right ms-2"></i>
			</a>
		</div>
	</header>

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

	<!-- その他のセクション... -->

	<!-- フッター -->
	<footer class="bg-dark text-white py-4">
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
</body>
</html>