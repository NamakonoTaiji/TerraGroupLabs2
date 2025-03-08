<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <title>TerraGroup Labs</title>
    <!-- BootstrapのCSSを読み込み -->
    <link rel="stylesheet" href="<c:url value='/css/bootstrap.min.css'/>">
</head>
<body>
    <!-- ナビゲーションバーなど -->

    <!-- ヒーローセクションなど -->

    <!-- お問い合わせフォーム -->
    <form action="<c:url value='/contact'/>" method="post">
        <label for="name">名前:</label>
        <input type="text" id="name" name="name" required>
        <!-- 他のフィールド -->
        <button type="submit">送信</button>
    </form>

    <!-- フッターなど -->
    <!-- BootstrapのJSを読み込み -->
    <script src="<c:url value='/js/bootstrap.bundle.min.js'/>"></script>
</body>
</html>
