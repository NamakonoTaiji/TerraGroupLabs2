<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ログイン - TerraGroup Labs</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap Icons -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.0/font/bootstrap-icons.css">
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
                    <li class="nav-item"><a class="nav-link" href="<c:url value='/service'/>">サービス</a></li>
                    <li class="nav-item"><a class="nav-link" href="<c:url value='/about'/>">会社概要</a></li>
                    <li class="nav-item"><a class="nav-link" href="<c:url value='/#contact'/>">お問い合わせ</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- ログインフォーム -->
    <section class="py-5 mt-5">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-6">
                    <div class="card border-0 shadow-sm">
                        <div class="card-body p-5">
                            <h2 class="text-center mb-4">管理者ログイン</h2>
                            
                            <!-- エラーメッセージ表示 -->
                            <c:if test="${param.error != null}">
                                <div class="alert alert-danger" role="alert">
                                    ユーザー名またはパスワードが正しくありません。
                                </div>
                            </c:if>
                            
                            <c:if test="${param.logout != null}">
                                <div class="alert alert-success" role="alert">
                                    ログアウトしました。
                                </div>
                            </c:if>
                            
                            <!-- ログインフォーム -->
                            <form action="<c:url value='/login'/>" method="post">
                                <!-- CSRF対策トークン（Spring Securityが自動で追加） -->
                                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                                
                                <div class="mb-3">
                                    <label for="username" class="form-label">ユーザー名</label>
                                    <input type="text" id="username" name="username" class="form-control" required autofocus>
                                </div>
                                
                                <div class="mb-3">
                                    <label for="password" class="form-label">パスワード</label>
                                    <input type="password" id="password" name="password" class="form-control" required>
                                </div>
                                
                                <div class="d-grid gap-2">
                                    <button type="submit" class="btn btn-primary">ログイン</button>
                                </div>