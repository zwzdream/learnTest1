<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>表单控件</title>
 
<!-- 新 Bootstrap 核心 CSS 文件 -->
<!-- <link href="http://cdn.static.runoob.com/libs/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
可选的Bootstrap主题文件（一般不使用）
<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.0/css/bootstrap-theme.min.css" rel="stylesheet"></script>


 jQuery文件。务必在bootstrap.min.js 之前引入
<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>

最新的 Bootstrap 核心 JavaScript 文件
<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.0/js/bootstrap.min.js"></script> 
 -->

 <link type="text/css"
	href="${pageContext.request.contextPath}/css/bootstrap.min.css"
	rel="stylesheet">

<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
</head>

<body>
<!-- 输入框（Input） -->
<div class="text-info">大部分常用的表单控件、文本输入控件。包括所有HTML5所支持的：text、password、datetime、 datetime-local、date、 month、time、week、number、email、url、search、tel 和 color。
任何时候都需要指定type属性。</div>
<input type="text" placeholder="Text Input">
<!--  文本域（Textarea）-->
 <div class="text-warning">此表单控件支持多行文本。可根据需要修改rows属性。</div> 
 <textarea rows="3" cols="5"></textarea>  
<!--复选框和单选框  -->
<div class="text-error">复选框是用于在一个列表中选择一个或多个选项，而单选框是在众多选择中选择一个选项。</div>
<div>默认（堆叠式）</div>
    <label class="checkbox">
      <input type="checkbox" value="1">
      1 Option one is this and that—be sure to include why it's great
    </label>
    <label class="checkbox">
      <input type="checkbox" value="2">
     2 Option one is this and that—be sure to include why it's great
    </label>
     
    <label class="radio">
      <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked>
      Option one is this and that—be sure to include why it's great
    </label>
    <label class="radio">
      <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
      Option two can be something else and selecting it will deselect option one
    </label>
<div>行内复选框
<span><b>为复选框或单选框控件添加.inline类，使他们排列在同一行。</b></span>
</div>
    <label class="checkbox inline">
      <input type="checkbox" id="inlineCheckbox1" value="option1"> 1
    </label>
    <label class="checkbox inline">
      <input type="checkbox" id="inlineCheckbox2" value="option2"> 2
    </label>
    <label class="checkbox inline">
      <input type="checkbox" id="inlineCheckbox3" value="option3"> 3
    </label>
    <!-- 下拉框 (select>-->
    <div class="text-success">下拉框从所列选项中选择一项<br>
    <b>可使用默认的选项或者指定multiple="multiple"属性一次显示多个选项。</div>
    <select>
      <option>1</option>
      <option>2</option>
      <option>3</option>
      <option>4</option>
      <option>5</option>
    </select>
     
    <select multiple="multiple">
      <option>1</option>
      <option>2</option>
      <option>3</option>
      <option>4</option>
      <option>5</option>
    </select>
    <!-- 扩展表单控件 -->
    <div style="color:SILVER">除了现有的浏览器控件，Bootstrap还额外包含了一些有用的表单组件。</div>
    <b>前缀和附加输入框

在任何文本输入框之前或之后添加文本或按钮。注意，select控件不支持。
默认选项

将.add-on和input进行组合，可以将文本放倒输入框前或后面。</b><br>
    <div class="input-prepend">
      <span class="add-on">@</span>
      <input class="span2" id="prependedInput" type="text" placeholder="Username">
    </div><br>
    <div class="input-append">
      <input class="span2" id="appendedInput" type="text">
      <span class="add-on">.00</span>
    </div>
<h3>组合

<small>同时使用两个类，并将两个.add-on放在输入框的前与后。</small></h3>
    <div class="input-prepend input-append">
      <span class="add-on">$</span>
      <input class="span2" id="appendedPrependedInput" type="text">
      <span class="add-on">.00</span>
    </div>
    <h3>按钮的情况

<small>用.btn代替<code>&lt;span&gt;</code>即可将一个（或两个）按钮添加到输入框前或后。</small></h3>
    <div class="input-append">
      <input class="span2" id="appendedInputButton" type="text">
      <button class="btn" type="button">Go!</button>
    </div><br>
        <div class="input-append">
      <input class="span2" id="appendedInputButtons" type="text">
      <button class="btn" type="button">Search</button>
      <button class="btn" type="button">Options</button>
    </div>
 <h4>按钮下拉菜单</h4>   
 <!-- 在tomcat上运行时，点击下拉，老是刷新页面，静态的html没问题，不知道怎么回事 -->
 <form class="bs-docs-example">
        <div class="input-append">
      <input class="span2" id="appendedDropdownButton" type="text">
      <div class="btn-group">
        <button class="btn dropdown-toggle" data-toggle="dropdown">
          Action
          <span class="caret"></span>
        </button>
        <ul class="dropdown-menu">
          <li><a href="#">Action</a></li>
                  <li><a href="#">Another action</a></li>
                  <li><a href="#">Something else here</a></li>
                  <li class="divider"></li>
                  <li><a href="#">Separated link</a></li>
        </ul>
      </div>
    </div>
    </form>
        <div class="input-prepend">
      <div class="btn-group">
        <button class="btn dropdown-toggle" data-toggle="dropdown">
          Action
          <span class="caret"></span>
        </button>
        <ul class="dropdown-menu">
          ...
        </ul>
      </div>
      <input class="span2" id="prependedDropdownButton" type="text">
    </div>
        <div class="input-prepend input-append">
      <div class="btn-group">
        <button class="btn dropdown-toggle" data-toggle="dropdown">
          Action
          <span class="caret"></span>
        </button>
        <ul class="dropdown-menu">
          ...
        </ul>
      </div>
      <input class="span2" id="appendedPrependedDropdownButton" type="text">
      <div class="btn-group">
        <button class="btn dropdown-toggle" data-toggle="dropdown">
          Action
          <span class="caret"></span>
        </button>
        <ul class="dropdown-menu">
          ...
        </ul>
      </div>
    </div><br>
    Bootstrap包含了（错误）error、（警告）warning、（通知）info和（成功）success信息的样式。为.control-group添加适当的属性即可使用这些样式。
        <div class="control-group warning">
      <label class="control-label" for="inputWarning">Input with warning</label>
      <div class="controls">
        <input type="text" id="inputWarning">
        <span class="help-inline">Something may have gone wrong</span>
      </div>
    </div>
     
    <div class="control-group error">
      <label class="control-label" for="inputError">Input with error </label>
      <div class="controls">
        <input type="text" id="inputError">
        <span class="help-inline">Please correct the error</span>
      </div>
    </div>
     
    <div class="control-group info">
      <label class="control-label" for="inputInfo">Input with info</label>
      <div class="controls">
        <input type="text" id="inputInfo">
        <span class="help-inline">Username is already taken</span>
      </div>
    </div>
     
    <div class="control-group success">
      <label class="control-label" for="inputSuccess">Input with success</label>
      <div class="controls">
        <input type="text" id="inputSuccess">
        <span class="help-inline">Woohoo!</span>
      </div>
    </div>
    
    <a href="#"><i class="glyphicon glyphicon-pencil"></i> Edit</a><br>
		  <i class="glyphicon glyphicon-pencil"></i><br>
		   <i class="glyphicon glyphicon-pencil icon-white"></i><br>
<i class="fa-home"></i>首页<br>

    <span class="glyphicon glyphicon-edit "></span>
</body>
</html>