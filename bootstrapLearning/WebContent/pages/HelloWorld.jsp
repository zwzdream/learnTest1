<!DOCTYPE html>

<html lang="en">

<head>

<meta charset="utf-8">

<title>Hello Bootstrap</title>

<!-- Bootstrap core CSS -->

<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.2.0/css/bootstrap.min.css">

<style type='text/css'>

body {

background-color: #CCC;

}

.titleWord{

color: white;

}

</style>

</head>

<body>

<!-- 导航栏 -->

<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">

<div class="container">

<div class="navbar-header">

<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">

<span class="sr-only">Toggle navigation</span>

<span class="icon-bar"></span>

<span class="icon-bar"></span>

<span class="icon-bar"></span>

</button>

<a class="navbar-brand" href="#"><span class="titleWord">首页</span></a>

<a class="navbar-brand" href="#"><span class="titleWord">讨论区</span></a>

<a class="navbar-brand" href="#"><span class="titleWord">关于我们</span></a>

</div>

<div id="navbar" class="navbar-collapse collapse">

<form class="navbar-form navbar-right" role="form">

<div class="form-group">

<input type="text" placeholder="刷脸进系统或报上名来" class="form-control">

</div>

<div class="form-group">

<input type="password" placeholder="颜值不够，老实输密码吧" class="form-control">

</div>

<button type="submit" class="btn btn-success">开门的都是好芝麻</button>

</form>

</div><!--/.navbar-collapse -->

</div>

</nav>

<!-- 内容 -->

<div class="jumbotron">

<div id='content' class='row-fluid'>

<h2>初识    BootStrap!</h2>

<p class="blog-post-meta">2015-04-02 by <a href="#">WangFeng</a></p>

<p>Bootstrap，来自 Twitter，基于 HTML、CSS、JAVASCRIPT，简洁灵活，使得 Web 开发更加快捷。</p>

<p><a class="btn btn-primary btn-lg" role="button" id="readMore" data-toggle="modal" data-target=".bs-example-modal-sm">阅读全文 »</a></p>

</div>

</div>

<!-- 模态窗口 -->

<div class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">

<div class="modal-dialog modal-sm">

<div class="modal-content">

<!-- 模态窗口内容 -->

<div class="modal-body" id="modelContent"></div>

<!-- 模态窗口页脚 -->

<div class="modal-footer">

<button type="button" class="btn btn-default" id="unAgree">不同意</button>

<button type="button" class="btn btn-primary" data-dismiss="modal">我同意</button>

</div>

</div>

</div>

</div>

</body>

<script src="http://cdn.bootcss.com/jquery/1.11.2/jquery.min.js"></script>

<script src="http://cdn.bootcss.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>

<script type="text/javascript">

$('#unAgree').click(function(event) {

$('#modelContent').html('不得不同意');

});

$('#readMore').click(function(event) {

$('#modelContent').html('一目千行，全文已在你心中！');

});

</script>

</html>