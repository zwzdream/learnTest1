<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>导航栏的自行图标(navbar)</title>
<!-- Bootstrap -->

<!-- <link href="http://cdn.static.runoob.com/libs/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.0/js/bootstrap.min.js"></script>  -->
<link type="text/css"
	href="${pageContext.request.contextPath}/css/bootstrap.min.css"
	rel="stylesheet">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<style >
body{padding-top:50px;padding-left:50px}
</style>	
<!--[if lt IE 9]>
<script src="http://apps.bdimg.com/libs/html5shiv/3.7/html5shiv.min.js"></script>
<![endif]-->
	
</head>
<body>
	<!-- navbar-fixed-top使导航栏固定在顶部，navbar-inverse，使页面颜色反转 -->
	<div class="navbar navbar-fixed-top navbar-inverse" role="navigation">
	     <div class="container">
	         <!-- Brand(商标） and toggle（切换） get grouped（组合） for better mobile display（移动展示） -->
	         <div class="navbar-header">
	            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
	              <span class="sr-only">Toggle navigation</span>
	              <span class="icon-bar"></span>
	              <span class="icon-bar"></span>
	              <span class="icon-bar"></span>	            
	            </button>
	            <a class="navbar-brand" href="#">Project name</a>
	         </div>
	          <!-- Collect the nav links, forms, and other content for toggling -->
	     <div class="collapse navbar-collapse">
	       <ul class="nav navbar-nav">
	           <li class="active"><a href="#"><span class="glyphicon glyphicon-home">Home</span></a></li>
	           <li><a href="#shop"><span class="glyphicon glyphicon-shopping-cart">Shop</span></a></li>
	           <li><a href="#support"><span class="glyphicon glyphicon-headphones">Support</span></a></li>
	       </ul>   
	     </div><!-- /.nav-collapse -->   
	     </div><!-- /.container -->
	</div>
<br>
<div class="container"><i class="glyphicon glyphicon-home" style="color:RED"></i></div>
</body>
</html>