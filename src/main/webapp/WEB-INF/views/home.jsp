<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2> WELCOME TO HOME PAGE....</h2>

<a href="login">Login</a>
<br>
<a href="register">Register</a>
<hr>
<c:if test="${showLoginPage}">
<jsp:include page="Login.jsp"></jsp:include>
</c:if>
<c:if test="${showRegistrationPage}">
<jsp:include page="Registration.jsp"></jsp:include>
</c:if>
</body>
</html>