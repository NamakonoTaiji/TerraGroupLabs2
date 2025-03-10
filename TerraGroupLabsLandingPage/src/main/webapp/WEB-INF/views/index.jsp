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
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- カスタムCSS -->
<link rel="stylesheet" href="<c:url value='/css/styles.css'/>">
</head>
<body>
	<!-- ナビゲーションバー -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top">
		<div class="container">
			<a class="navbar-brand" href="<c:url value='/'/>"> <img
				src="<c:url value='/images/logo.svg'/>" alt="TerraGroup Labs"
				height="40">
			</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav ms-auto">
					<li class="nav-item"><a class="nav-link active"
						href="<c:url value='/'/>">ホーム</a></li>
					<li class="nav-item"><a class="nav-link"
						href="<c:url value='/service'/>">サービス</a></li>
					<li class="nav-item"><a class="nav-link"
						href="<c:url value='/about'/>">会社概要</a></li>
					<li class="nav-item"><a class="nav-link" href="#contact">お問い合わせ</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>

	<!-- ヒーローセクション -->
	<header class="hero-section d-flex align-items-center">
		<div class="container text-center">
			<h1 class="display-4 text-white">地球の未来をテクノロジーで創造する</h1>
			<p class="lead text-white">持続可能な社会の実現に向けた革新的な技術開発</p>
			<a href="#services" class="btn btn-lg btn-primary mt-3">詳細はこちら</a>
		</div>
	</header>

	<!-- サービスセクション -->
	<section id="services" class="py-5">
		<div class="container">
			<h2 class="text-center mb-5">サービス一覧</h2>
			<div class="row">
				<div class="col-md-4 mb-4">
					<div class="card h-100 service-card">
						<div class="card-body text-center">
							<div class="service-icon mb-3">
								<i class="bi bi-fingerprint"></i>
							</div>
							<h3 class="card-title">バイオテクノロジー</h3>
							<p class="card-text">持続可能な未来のための生体技術研究と開発を行っています。環境に優しい素材開発や医療応用など、幅広い分野での革新を目指しています。</p>
						</div>
					</div>
				</div>
				<div class="col-md-4 mb-4">
					<div class="card h-100 service-card">
						<div class="card-body text-center">
							<div class="service-icon mb-3">
								<i class="bi bi-cpu"></i>
							</div>
							<h3 class="card-title">AI研究</h3>
							<p class="card-text">最先端の人工知能と機械学習技術の研究開発を通じて、複雑な環境問題の解決や効率的なリソース管理システムの構築に取り組んでいます。</p>
						</div>
					</div>
				</div>
				<div class="col-md-4 mb-4">
					<div class="card h-100 service-card">
						<div class="card-body text-center">
							<div class="service-icon mb-3">
								<i class="bi bi-tree"></i>
							</div>
							<h3 class="card-title">環境テクノロジー</h3>
							<p class="card-text">地球環境保全のための革新的技術開発に取り組んでいます。カーボンニュートラルな社会の実現に向けた様々なソリューションを提供します。</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- 実績セクション -->
	<section id="achievements" class="py-5 bg-light">
		<div class="container">
			<h2 class="text-center mb-5">実績</h2>
			<div class="row justify-content-center">
				<div class="col-lg-8">
					<div class="card">
						<div class="card-body">
							<canvas id="achievementChart"></canvas>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- 企業理念セクション -->
	<section id="philosophy" class="py-5">
		<div class="container">
			<h2 class="text-center mb-5">企業理念</h2>
			<div class="row justify-content-center">
				<div class="col-lg-8">
					<div class="card">
						<div class="card-body">
							<p class="lead text-center">TerraGroup
								Labsは、持続可能な未来のためのテクノロジー開発を通じて、 地球環境と人類の共存を目指します。私たちは、革新的な研究開発と
								社会実装を通じて、より良い社会の構築に貢献します。</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- お問い合わせフォーム -->
	<section id="contact" class="py-5 bg-light">
		<div class="container">
			<h2 class="text-center mb-5">お問い合わせ</h2>

			<!-- 送信成功メッセージ -->
			<c:if test="${not empty successMessage}">
				<div class="alert alert-success" role="alert">
					${successMessage}</div>
			</c:if>

			<div class="row justify-content-center">
				<div class="col-lg-6">
					<div class="card">
						<div class="card-body">
							<!-- Spring Form タグライブラリを使用 -->
							<form:form
								action="${pageContext.request.contextPath}/contact/confirm"
								method="post" modelAttribute="contactMessage">

								<!-- CSRFトークンは自動的に追加されます -->

								<div class="mb-3">
									<form:label path="name" class="form-label">お名前</form:label>
									<c:set var="hasNameError">
										<form:errors path="name" />
									</c:set>
									<form:input path="name"
										class="form-control${not empty hasNameError ? ' is-invalid' : ''}"
										htmlEscape="true" />
									<form:errors path="name" cssClass="invalid-feedback"
										htmlEscape="true" />
								</div>

								<div class="mb-3">
									<form:label path="email" class="form-label">メールアドレス</form:label>
									<c:set var="hasEmailError">
										<form:errors path="email" />
									</c:set>
									<form:input path="email"
										class="form-control${not empty hasEmailError ? ' is-invalid' : ''}"
										htmlEscape="true" />
									<form:errors path="email" cssClass="invalid-feedback"
										htmlEscape="true" />
								</div>

								<div class="mb-3">
									<form:label path="message" class="form-label">お問い合わせ内容</form:label>
									<c:set var="hasMessageError">
										<form:errors path="message" />
									</c:set>
									<form:textarea path="message"
										class="form-control${not empty hasMessageError ? ' is-invalid' : ''}"
										rows="5" htmlEscape="true" />
									<form:errors path="message" cssClass="invalid-feedback"
										htmlEscape="true" />
								</div>

								<div class="text-center">
									<button type="submit" class="btn btn-primary">確認画面へ</button>
								</div>
							</form:form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

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
	<!-- Bootstrap Icons -->
	<link rel="stylesheet"
		href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.0/font/bootstrap-icons.css">
	<!-- Chart.js -->
	<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
	<!-- カスタムJS -->
	<script src="<c:url value='/js/main.js'/>"></script>
</body>
</html>