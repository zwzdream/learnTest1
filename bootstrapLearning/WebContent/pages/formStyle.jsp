<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>表单样式</title>
<link type="text/css"
	href="${pageContext.request.contextPath}/css/bootstrap.min.css"
	rel="stylesheet">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
</head>
<body>
<!-- 默认表单样式  无需对<form>添加任何类或改变标签结构，每个单独的表单控件都已经被赋予了样式。默认是堆叠、label左侧对齐并在控件之上。-->
	<form action="#">
		<fieldset>
			<legend>Legend</legend>
			<label>Label Name</label><br> <input type="text"
				placeholder="Type something..."> <span class="help-block">Example
				block-level help text here.</span> <label class="checkbox"> <input
				type="checkbox">Check mo out
			</label>
			<button type="submit" class='btn'>Submit</button>
		</fieldset>
	</form>
    <!-- 搜索表单  为表单增加.form-search类，并为<input>增加.search-query类，可将输入框变成圆角状。-->
	1
	<form action="#" class="form-search">
		<label>Your Name</label> <input type="text"
			class="input-medium search-query"
			placeholder="For example, Joe Smith">
		<button type="submit" class="btn">Search</button>

	</form>
	2
	<form action="#" class="form-search">
		<label>Your Name</label>
		<fieldset>
			<input type="text" class="input-medium search-query"
				placeholder="For example, Joe Smith">
			<button type="submit" class="btn">Search</button>
		</fieldset>
	</form>
	3
	<form action="#" class="form-search">
		<label>Your Name</label>
		<fieldset>
			<input type="text" class=" search-query"
				placeholder="For example, Joe Smith">
			<button type="submit" class="btn">Search</button>
		</fieldset>
	</form>
	4
	<form action="#">
		<label>Your Name</label>
		<fieldset>
			<input type="text" class="input-medium search-query"
				placeholder="For example, Joe Smith">
			<button type="submit" class="btn">Search</button>
		</fieldset>
	</form>
	5
	<form action="#" class="form-search">
		<label>Your Name</label> <input type="text"
			class="input-medium search-query"
			placeholder="For example, Joe Smith">
		<button type="submit" class="btn">Search</button>

	</form>
	6
	<form action="#" class="form-search">
		<label>Your Name</label> <input type="text" class=" search-query"
			placeholder="For example, Joe Smith">
		<button type="submit" class="btn">Search</button>

	</form>
	<!-- 行内表单 为表单增加.form-inline类， 结果是一个压缩型排列的表单，其中label左侧对齐、控件为inline-block类型。 -->
    <form class="form-inline">
      <input type="text" class="input-small" placeholder="Email">
      <input type="password" class="input-small" placeholder="Password">
      <label class="checkbox">
        <input type="checkbox"> Remember me
      </label>
      <button type="submit" class="btn">Sign in</button>
    </form>
    <!-- 水平表单 右侧对齐并且左侧浮动的label和控件排列在同一行。这需要对默认的表单格式做修改：R

    为表单添加.form-horizontal类
    将label和控件包裹在.control-group中
    为label添加.control-label类
    将任何相关的控件包裹在.controls中，以确保最佳的对齐
    -->
        <form class="form-horizontal">
      <div class="control-group">
        <label class="control-label" for="inputEmail">Email</label>
        <div class="controls">
          <input type="text" id="inputEmail" placeholder="Email">
        </div>
      </div>
      <div class="control-group">
        <label class="control-label" for="inputPassword">Password</label>
        <div class="controls">
          <input type="password" id="inputPassword" placeholder="Password">
        </div>
      </div>
      <div class="control-group">
        <div class="controls">
          <label class="checkbox">
            <input type="checkbox"> Remember me
          </label>
          <button type="submit" class="btn">Sign in</button>
        </div>
      </div>
    </form>
    
</body>
</html>