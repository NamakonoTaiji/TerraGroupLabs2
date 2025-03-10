<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>サービス - TerraGroup Labs</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- カスタムCSS -->
    <link rel="stylesheet" href="<c:url value='/css/styles.css'/>">
</head>
<body>
    <!-- ナビゲーションバー -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top">
        <div class="container">
            <a class="navbar-brand" href="<c:url value='/'/>">
                <img src="<c:url value='/images/logo.svg'/>" alt="TerraGroup Labs" height="40">
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link" href="<c:url value='/'/>">ホーム</a></li>
                    <li class="nav-item"><a class="nav-link active" href="<c:url value='/service'/>">サービス</a></li>
                    <li class="nav-item"><a class="nav-link" href="<c:url value='/about'/>">会社概要</a></li>
                    <li class="nav-item"><a class="nav-link" href="<c:url value='/#contact'/>">お問い合わせ</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- ヘッダー -->
    <header class="page-header py-5 mt-5 bg-light">
        <div class="container">
            <h1>サービス</h1>
            <p class="lead">TerraGroup Labsが提供する革新的なサービスと技術ソリューション</p>
        </div>
    </header>

    <!-- サービス詳細セクション -->
    <section class="py-5">
        <div class="container">
            <!-- サービス一覧をループで表示 -->
            <c:forEach var="service" items="${services}" varStatus="status">
                <div class="row mb-5 align-items-center service-detail ${status.index % 2 == 0 ? '' : 'flex-row-reverse'}">
                    <div class="col-md-6">
                        <div class="service-icon-large text-center mb-3">
                            <i class="${service.iconName} display-1 text-primary"></i>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <h2>${service.title}</h2>
                        <p class="lead">${service.description}</p>
                        <h4 class="mt-4">主な特徴</h4>
                        <ul>
                            <li>革新的なアプローチ</li>
                            <li>持続可能な開発</li>
                            <li>最先端の技術活用</li>
                            <li>専門家チームによる実装</li>
                        </ul>
                        <a href="#" class="btn btn-primary mt-3">詳細を見る</a>
                    </div>
                </div>
                <hr class="my-5">
            </c:forEach>
        </div>
    </section>

    <!-- 事例セクション -->
    <section class="py-5 bg-light">
        <div class="container">
            <h2 class="text-center mb-5">導入事例</h2>
            <div class="row">
                <div class="col-md-4 mb-4">
                    <div class="card h-100">
                        <div class="card-body">
                            <h3 class="card-title">グリーンエネルギー株式会社</h3>
                            <p class="card-text">バイオテクノロジーを活用した再生可能エネルギー生産システムの導入により、エネルギー効率が30%向上。</p>
                        </div>
                        <div class="card-footer bg-transparent border-0">
                            <a href="#" class="btn btn-outline-primary">詳細を見る</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="card h-100">
                        <div class="card-body">
                            <h3 class="card-title">未来都市プロジェクト</h3>
                            <p class="card-text">AIを活用した都市環境モニタリングシステムにより、CO2排出量の削減と生活環境の向上を実現。</p>
                        </div>
                        <div class="card-footer bg-transparent border-0">
                            <a href="#" class="btn btn-outline-primary">詳細を見る</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="card h-100">
                        <div class="card-body">
                            <h3 class="card-title">エコファーム協同組合</h3>
                            <p class="card-text">環境テクノロジーを活用した次世代農業システムの導入により、水使用量の50%削減と収穫量の増加を実現。</p>
                        </div>
                        <div class="card-footer bg-transparent border-0">
                            <a href="#" class="btn btn-outline-primary">詳細を見る</a>
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
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Bootstrap Icons -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.0/font/bootstrap-icons.css">
    <!-- カスタムJS -->
    <script src="<c:url value='/js/main.js'/>"></script>
</body>
</html>