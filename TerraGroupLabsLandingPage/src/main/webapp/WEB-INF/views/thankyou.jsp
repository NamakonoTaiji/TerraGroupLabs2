<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>お問い合わせありがとうございました - TerraGroup Labs</title>
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Bootstrap Icons -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.0/font/bootstrap-icons.css">
<!-- カスタムCSS -->
<link rel="stylesheet" href="<c:url value='/css/styles.css'/>">
<!-- Google Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&family=Space+Grotesk:wght@400;500;700&family=JetBrains+Mono&display=swap"
	rel="stylesheet">
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
					<li class="nav-item"><a class="nav-link"
						href="<c:url value='/'/>">ホーム</a></li>
					<li class="nav-item"><a class="nav-link"
						href="<c:url value='/service'/>">サービス</a></li>
					<li class="nav-item"><a class="nav-link"
						href="<c:url value='/about'/>">会社概要</a></li>
					<li class="nav-item"><a class="nav-link"
						href="<c:url value='/#contact'/>">お問い合わせ</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<!-- サンクスセクション -->
	<section class="py-5 mt-5">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-8">
					<div class="card border-0 shadow-sm">
						<div class="card-body text-center p-5">
							<div class="mb-4">
								<i class="bi bi-check-circle-fill text-success"
									style="font-size: 5rem;"></i>
							</div>
							<h1 class="display-5 mb-3">お問い合わせありがとうございました</h1>
							<p class="lead mb-4">ご入力いただいた内容は正常に送信されました。担当者より順次ご連絡いたします。</p>
							<p class="text-muted mb-4">お問い合わせの内容によっては、回答までにお時間をいただく場合がございます。ご了承ください。</p>
							<a href="<c:url value='/'/>" class="btn btn-primary"> <i
								class="bi bi-house-door me-2"></i>ホームに戻る
							</a>
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
	<!-- カスタムJS -->
	<script src="<c:url value='/js/main.js'/>"></script>
</body>
</html>