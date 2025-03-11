<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>お問い合わせ確認 - TerraGroup Labs</title>
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
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
					<li class="nav-item"><a class="nav-link active"
						href="#contact">お問い合わせ</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<!-- 確認セクション -->
	<section class="py-5 mt-5">
		<div class="container">
			<h2 class="text-center mb-5">お問い合わせ内容の確認</h2>
			<div class="row justify-content-center">
				<div class="col-lg-6">
					<div class="card">
						<div class="card-body">
							<div class="mb-4">
								<h5>お名前</h5>
								<p class="border-bottom pb-2">${contactMessage.name}</p>
							</div>

							<div class="mb-4">
								<h5>メールアドレス</h5>
								<p class="border-bottom pb-2">${contactMessage.email}</p>
							</div>

							<div class="mb-4">
								<h5>お問い合わせ内容</h5>
								<div class="border p-3 bg-light rounded">
									${contactMessage.message}</div>
							</div>

							<div class="d-flex justify-content-between mt-4">
								<form action="<c:url value='/contact/back'/>" method="post">
									<button type="submit" class="btn btn-secondary">修正する</button>
								</form>

								<form action="<c:url value='/contact'/>" method="post">
									<!-- CSRFトークンを追加 -->
									<input type="hidden" name="${_csrf.parameterName}"
										value="${_csrf.token}" />
									<button type="submit" class="btn btn-primary">送信する</button>
								</form>
							</div>
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
	<!-- Bootstrap Icons -->
	<link rel="stylesheet"
		href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.0/font/bootstrap-icons.css">
</body>
</html>