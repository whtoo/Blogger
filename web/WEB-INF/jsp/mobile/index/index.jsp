<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<% String ctx = request.getContextPath();
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
        <title>Mobile电商首页</title>
        <script src="<%=ctx%>/js/jquery/jquery2-min.js" type="text/javascript"></script>
        <link href="<%=ctx%>/bootstrap3/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="<%=ctx%>/bootstrap3/css/bootstrap-theme.css" rel="stylesheet" type="text/css"/>
        <script src="<%=ctx%>/bootstrap3/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="<%=ctx%>/js/bacon.js/Bacon.js" type="text/javascript"></script>
    </head>

    <body>
    <nav class="navbar navbar-default" role="navigation">
        <div class="container-fluid">
            <div class="navbar-header">
                <div class="col-xs-8 col-md-8">
                    <a class="navbar-brand" href="#">
                        <span>聚客商--正品低价</span>
                    </a>
                </div>
                <div class="col-xs-4 col-md-4">
                    <div class="btn-group">
                        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                            广东
                            <span class="caret"></span>
                        </button>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="#">广东</a></li>
                            <li><a href="#">江苏</a></li>
                            <li><a href="#">浙江</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </nav>

    <div class="container">
        <div class="row">
            <div class="col-xs-3 col-md-3">
                <span>商品分类</span>
            </div>
            <div class="col-xs-3 col-md-3">
                <span>我的订单</span>
            </div>
            <div class="col-xs-3 col-md-3">
               <span>购物车</span>
            </div>
            <div class="col-xs-3 col-md-3">
                <span>个人中心</span>
            </div>
        </div>
        
        <div class="row">
            <div class="col-xs-6 col-md-6">
                
                <a href="#" class="thumbnail">
                <img src="<%=ctx%>/images/2015010418/iphone6.jpg" class="img-responsive" alt="iPhone 6"/>
                </a>
                <div class="row">
                    $1000
                </div>
                 <div class="row">
                    iPHone6
                </div>
            </div>
            <div class="col-xs-6 col-md-6">
                
                 <a href="#" class="thumbnail">
                <img src="<%=ctx%>/images/2015010418/cake.jpg"  class="img-responsive" alt=""/>
                 </a>
                 <div class="row">
                    $1000
                </div>
                 <div class="row">
                    iPHone6
                </div>
            </div>
            <div class="col-xs-6 col-md-6">
                
                 <a href="#" class="thumbnail">
                <img src="<%=ctx%>/images/2015010418/route.jpg"  class="img-responsive" alt=""/>
                 </a>
                 <div class="row">
                    $1000
                </div>
                 <div class="row">
                    iPHone6
                </div>
            </div>
              <div class="col-xs-6 col-md-6 ">
                  
                  <a href="#" class="thumbnail">
                  <img src="<%=ctx%>/images/2015010418/tv.jpg"   class="img-responsive" alt=""/>
                  </a>
                 <div class="row">
                    $1000
                </div>
                 <div class="row">
                    iPHone6
                </div>
            </div>
        </div>
    </div>
</body>
</html>

