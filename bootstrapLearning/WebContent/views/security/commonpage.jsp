<%@ page language="java" contentType="text/html; charset=UTF-8"  
    pageEncoding="UTF-8"%>  
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">  
<title>Insert title here</title> 
<script>
		function formSubmit() {
			document.getElementById("logoutForm").submit();
		}
</script> 
</head>  
<body>  

    <h1>Common Page</h1>  
    <p>每个人都能访问的页面.</p>  
    	<form action="<%=basePath %>auth/logout" method="post" id="logoutForm">
		<input type="hidden" 
			name="${_csrf.parameterName}"
			value="${_csrf.token}" />
	</form>
    <a href="<%=basePath %>main/admin"> Go AdminPage </a>  
    <br />  
    <a href="javascript:formSubmit();">退出登录</a>  
  
</body>  
</html> 