<%-- 
    Document   : welcome.jsp
    Created on : 2014-12-26, 16:21:06
    Author     : wanght
--%>
<%
    String ctx = request.getContextPath();
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>集客微信管理后台</title>
        <script src="<%=ctx%>/js/jquery/jquery2-min.js" type="text/javascript"></script>
        <link href="<%=ctx%>/bootstrap3/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="<%=ctx%>/bootstrap3/css/bootstrap-theme.css" rel="stylesheet" type="text/css"/>
        <script src="<%=ctx%>/bootstrap3/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="<%=ctx%>/js/bacon.js/Bacon.js" type="text/javascript"></script>
        
    </head>
    <body>
        <div class="container">

      <form class="form-signin" role="form">
        <h2 class="form-signin-heading text-center">微信管理后台</h2>
        <input type="email" class="form-control" placeholder="邮箱" required="" autofocus="">
        <input type="password" class="form-control" placeholder="密码" required="">
        <div class="checkbox">
          <label>
            <input type="checkbox" value="remember-me"> 记住我
          </label>
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit">登录</button>
      </form>

    </div>
    </body>
</html>
