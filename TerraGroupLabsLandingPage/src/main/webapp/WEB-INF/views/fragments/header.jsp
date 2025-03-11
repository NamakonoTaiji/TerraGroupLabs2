<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>${pageTitle}-TerraGroupLabs</title>

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

<!-- クリティカル画像のプリロード -->
<link rel="preload" href="<c:url value='/images/logo.svg'/>" as="image">
<link rel="preload" href="<c:url value='/images/hero-bg.jpg'/>"
	as="image" media="(min-width: 768px)">
<link rel="preload" href="<c:url value='/images/hero-bg-mobile.jpg'/>"
	as="image" media="(max-width: 767px)">

<!-- SEO メタタグ -->
<meta name="description"
	content="${pageDescription != null ? pageDescription : 'TerraGroup Labs - 持続可能な社会の実現に向けた革新的な技術開発企業です。'}">
<meta name="keywords"
	content="TerraGroup Labs, 環境技術, 研究開発, バイオテクノロジー, 持続可能">

<!-- OGP タグ -->
<meta property="og:title" content="${pageTitle} - TerraGroup Labs">
<meta property="og:description"
	content="${pageDescription != null ? pageDescription : 'TerraGroup Labs - 持続可能な社会の実現に向けた革新的な技術開発企業です。'}">
<meta property="og:type" content="website">
<meta property="og:url"
	content="<c:url value="${requestScope['javax.servlet.forward.request_uri']}"/>" />
<meta property="og:image" content="<c:url value='/images/ogp.jpg'/>">
<!-- カスタムスタイルとJSの挿入用 -->
<c:if test="${not empty additionalHeadContent}">
        ${additionalHeadContent}
    </c:if>
<c:if test="${currentPage == 'home' || currentPage == 'contact'}">
	<script src="https://www.google.com/recaptcha/api.js" async defer></script>
</c:if>
</head>
<body>
	<!-- ナビゲーションバー -->
	<nav
		class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top terra-nav">
		<div class="container">
			<a class="navbar-brand" href="<c:url value='/'/>"> <img
				src="<c:url value='/images/logo.svg'/>" alt="TerraGroup Labs"
				height="40" width="160"> <span class="ms-2 d-none logo-text">TerraGroup
					Labs</span>
			</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav ms-auto">
					<li class="nav-item"><a
						class="nav-link ${currentPage == 'home' ? 'active' : ''}"
						href="<c:url value='/'/>">ホーム</a></li>
					<li class="nav-item"><a
						class="nav-link ${currentPage == 'service' ? 'active' : ''}"
						href="<c:url value='/service'/>">サービス</a></li>
					<li class="nav-item"><a
						class="nav-link ${currentPage == 'about' ? 'active' : ''}"
						href="<c:url value='/about'/>">会社概要</a></li>
					<li class="nav-item"><a
						class="nav-link ${currentPage == 'contact' ? 'active' : ''}"
						href="${currentPage == 'home' ? '#contact' : '/'}#contact">お問い合わせ</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>