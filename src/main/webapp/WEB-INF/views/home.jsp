<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Welcome to GuitarMania!</title>
<style>
body {
	background-color: #ff9933;
}
</style>
</head>
<body>
<%-- 	<c:if test="${empty successMsg}"> --%>
<!-- 		<h2>Please Login or Register</h2> -->
<!-- 		<a href="login">Login</a> -->
<!-- 		<br> -->
<!-- 		<a href="register">Register</a> -->
<%-- 	</c:if> --%>
<!-- 	<hr> -->
<%-- 	${successMsg} --%>
<%-- 	<c:if test="${showLoginPage}"> --%>
<%-- 		<jsp:include page="login.jsp"></jsp:include> --%>
<%-- 	</c:if> --%>
<%-- 	<c:if test="${showRegistrationPage}"> --%>
<%-- 		<jsp:include page="registration.jsp"></jsp:include> --%>
<%-- 	</c:if> --%>
<%-- 	<c:if test="${isAdmin}"> --%>
<%-- 		<jsp:include page="adminhome.jsp"></jsp:include> --%>
<%-- 	</c:if> --%>
<%-- 	<c:if test="${isAdminClickedCategories}"> --%>
<%-- 		<jsp:include page="category.jsp"></jsp:include> --%>
<%-- 	</c:if> --%>

<jsp:include page="header.jsp"></jsp:include>


</body>
</html>