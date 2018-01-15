<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en" class="fullscreen-bg">

<head>
    <title>Victoria管理系统</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <link rel="stylesheet" href="admin/assetss/css/bootstrap.min.css">
    <link rel="stylesheet" href="admin/assetss/vendor/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="admin/assetss/vendor/linearicons/style.css">
    <link rel="stylesheet" href="admin/assetss/css/main.css">
    <link rel="stylesheet" href="admin/assetss/css/demo.css">
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700" rel="stylesheet">
    <link rel="apple-touch-icon" sizes="76x76" href="admin/assetss/img/apple-icon.png">
    <script src="js/ajax.js"></script>
    <script src="js/jquery-2.1.4.min.js"></script>

</head>

<body>
<!-- WRAPPER -->
<div id="wrapper">
    <div class="vertical-align-wrap">
        <div class="vertical-align-middle">
            <div class="auth-box ">
                <div class="left">
                    <div class="content">
                        <div class="header">
                            <div class="logo text-center"><img src="img/logo.jpg" alt="Klorofil Logo"></div>
                            <p class="lead">登陆你的账户</p>
                        </div>
                        <%--<form class="form-auth-small" action="/servlet/AdminServlet" method="post">--%>
                            <div class="form-group">
                                <label for="signin-email" class="control-label sr-only">账号</label>
                                <input type="text" class="form-control" id="signin-email" name="adminName" placeholder="账号">
                            </div>
                            <div class="form-group">
                                <label for="signin-password" class="control-label sr-only">密码</label>
                                <input type="password" class="form-control" id="signin-password" name="adminPassword"  placeholder="密码">
                            </div>
                            <button type="button" class="btn btn-primary btn-lg btn-block" onclick="login()">登陆</button>
                        <%--</form>--%>
                    </div>
                </div>
                <div class="right">
                    <div class="overlay"></div>
                    <div class="content text">
                        <h1 class="heading">用户登陆</h1>
                        <p>by Victoria</p>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
</div>
<!-- END WRAPPER -->
</body>

</html>

