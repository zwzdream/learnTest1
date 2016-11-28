<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>表格</title>
<link type="text/css"
	href="${pageContext.request.contextPath}/css/bootstrap.min.css"
	rel="stylesheet">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
</head>
<body>
	<table class="table table-bordered">
		<caption class="text-success">bootstrap表样式</caption>

		<tr>
			<th>one column</th>
			<th>two column</th>
		</tr>

		<tr class="warning">
			<td>one request</td>
			<td>one response</td>
		</tr>
		<tr class="success">
			<td>two request</td>
			<td>two response</td>
		</tr>
		<tr class="info">
			<td>three request</td>
			<td>three response</td>
		</tr>
		<tr class="error">
			<td>four request</td>
			<td>four response</td>
		</tr>

	</table>
	<table border="1" style="color:GREEN">
	<caption style="color:RED">原始table样式</caption>
	 <tr >
			<th>one column</th>
			<th>two column</th>
		</tr>

		<tr class="warning">
			<td>one request</td>
			<td>one response</td>
		</tr>
		<tr class="success">
			<td>two request</td>
			<td>two response</td>
		</tr>
		<tr class="info">
			<td>three request</td>
			<td>three response</td>
		</tr>
		<tr class="error">
			<td>four request</td>
			<td>four response</td>
		</tr>

	</table>


</body>
</html>