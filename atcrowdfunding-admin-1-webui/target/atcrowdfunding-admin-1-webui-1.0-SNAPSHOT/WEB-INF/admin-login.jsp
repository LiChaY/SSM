<%--
  Created by IntelliJ IDEA.
  User: 17673
  Date: 2020/2/19
  Time: 16:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="UTF-8">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="keys" content="">
    <meta name="author" content="">
    <title>♥♥Admin♥♥</title>
    <base href="http://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/"/>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/login.css">
    <style>

    </style>
</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <div><a class="navbar-brand" href="index.html" style="font-size:32px;"></a></div>
        </div>
    </div>
</nav>

<div class="container">
    <form class="form-signin" role="form" action="${pageContext.request.contextPath}/do/login.html" method="post">

        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        <h2 class="form-signin-heading"><i class="glyphicon glyphicon-log-in"></i>管理员登录</h2>
        <p>${requestScope.MESSAGE}</p>
        <p>${SPRING_SECURITY_LAST_EXCEPTION}</p>
        <div class="form-group has-success has-feedback">
            <input
                    value="harry"
                    name="loginAcct"
                    type="text"
                    class="form-control"
                    placeholder="请输入登录账号"
                    autofocus>
            <span class="glyphicon glyphicon-user form-control-feedback"></span>
        </div>
        <div class="form-group has-success has-feedback">
            <input
                    value="123123"
                    name="userPswd"
                    type="text"
                    class="form-control"
                    placeholder="请输入登录密码"
                    style="margin-top:10px;">
            <span class="glyphicon glyphicon-lock form-control-feedback"></span>
        </div>
        <button class="btn btn-lg btn-success btn-block">登录</button>
    </form>

</div>




<%--<script type="text/javascript">--%>
<%--    $(function(){--%>
<%--        $("#testModalBtn").click(function () {--%>
<%--            $("#testModal").modal("show");--%>
<%--        });--%>
<%--    });--%>

<%--</script>--%>
<%--<button id="testModalBtn" class="btn btn-lg btn-success btn-block">测试模态框</button>--%>
<%--&lt;%&ndash;模态框&ndash;%&gt;--%>

</body>
</html>
