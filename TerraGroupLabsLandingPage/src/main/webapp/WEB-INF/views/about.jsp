<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>会社概要 - TerraGroup Labs</title>
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
					<li class="nav-item"><a class="nav-link active"
						href="<c:url value='/about'/>">会社概要</a></li>
					<li class="nav-item"><a class="nav-link"
						href="<c:url value='/#contact'/>">お問い合わせ</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<!-- ヘッダー -->
	<header class="page-header py-5 mt-5 bg-light">
		<div class="container">
			<h1>会社概要</h1>
			<p class="lead">TerraGroup
				Labs（テラグループラボ）は、地球環境と人間社会の調和を目指す研究開発企業です。</p>
		</div>
	</header>

	<!-- 会社情報セクション -->
	<section class="py-5">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<h2>ビジョン</h2>
					<p>「テクノロジーと自然の調和による持続可能な社会の実現」</p>
					<p>TerraGroup
						Labsは、最先端のテクノロジーと自然環境の調和を図ることで、持続可能な社会の実現を目指します。人類の発展と地球環境の保全は両立可能であると信じ、その架け橋となる革新的なソリューションの開発に取り組んでいます。</p>

					<h2 class="mt-4">ミッション</h2>
					<p>「環境と調和したテクノロジーの開発と普及」</p>
					<p>私たちは以下のミッションを掲げています：</p>
					<ul>
						<li>環境負荷を最小限に抑えた革新的な技術開発</li>
						<li>自然環境の保全と回復に貢献するソリューションの提供</li>
						<li>持続可能な社会への移行を促進する知識と技術の普及</li>
						<li>次世代の環境技術研究者・開発者の育成と支援</li>
					</ul>
				</div>
				<div class="col-md-6">
					<h2>企業概要</h2>
					<table class="table">
						<tr>
							<th>社名</th>
							<td>TerraGroup Labs株式会社</td>
						</tr>
						<tr>
							<th>設立</th>
							<td>2020年4月</td>
						</tr>
						<tr>
							<th>資本金</th>
							<td>5億円</td>
						</tr>
						<tr>
							<th>従業員数</th>
							<td>120名（2024年3月現在）</td>
						</tr>
						<tr>
							<th>所在地</th>
							<td>東京都港区虎ノ門1-2-3 テラグループビル</td>
						</tr>
						<tr>
							<th>事業内容</th>
							<td>環境技術研究開発、バイオテクノロジー、AI研究、環境コンサルティング</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</section>

	<!-- 沿革セクション -->
	<section class="py-5 bg-light">
		<div class="container">
			<h2 class="text-center mb-5">沿革</h2>
			<div class="timeline">
				<div class="row g-0">
					<div class="col-sm-6">
						<div class="timeline-item">
							<div class="timeline-year">2020年</div>
							<div class="timeline-content">
								<h4>会社設立</h4>
								<p>環境技術の研究開発を目的としてTerraGroup Labs株式会社を東京都港区に設立</p>
							</div>
						</div>
					</div>
				</div>
				<div class="row g-0">
					<div class="col-sm-6 offset-sm-6">
						<div class="timeline-item">
							<div class="timeline-year">2021年</div>
							<div class="timeline-content">
								<h4>研究施設開設</h4>
								<p>つくば研究施設を開設し、バイオテクノロジー部門と環境技術部門を設置</p>
							</div>
						</div>
					</div>
				</div>
				<div class="row g-0">
					<div class="col-sm-6">
						<div class="timeline-item">
							<div class="timeline-year">2022年</div>
							<div class="timeline-content">
								<h4>国際共同研究開始</h4>
								<p>欧州環境研究機構（ERI）との共同研究プロジェクト開始</p>
								<p>AI研究部門の設立</p>
							</div>
						</div>
					</div>
				</div>
				<div class="row g-0">
					<div class="col-sm-6 offset-sm-6">
						<div class="timeline-item">
							<div class="timeline-year">2023年</div>
							<div class="timeline-content">
								<h4>特許取得と事業拡大</h4>
								<p>バイオ分解性素材の特許取得</p>
								<p>環境コンサルティング事業開始</p>
							</div>
						</div>
					</div>
				</div>
				<div class="row g-0">
					<div class="col-sm-6">
						<div class="timeline-item">
							<div class="timeline-year">2024年</div>
							<div class="timeline-content">
								<h4>グローバル展開</h4>
								<p>シンガポールオフィス開設</p>
								<p>カーボンニュートラルプロジェクト始動</p>
							</div>
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
	<!-- カスタムJS -->
	<script src="<c:url value='/js/main.js'/>"></script>
</body>
</html>