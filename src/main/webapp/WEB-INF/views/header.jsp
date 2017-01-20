<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<title>GUITARMANIA</title>
<style>
body {
	background-color: #ff9933;
}
</style>
</head>
<body>
	<nav class="navbar navbar-inverse">
	<div class="container-fluid" style="color: white">
		<div class="navbar-header" style="color: white">
			<a style="color: #F5F5DC" class="navbar-brand" href="#">GUITARMANIA</a>
		</div>
		<ul class="nav navbar-nav">
			<li><a style="color: #F5F5DC" href="aboutUs">CONTACT US</a></li>
		</ul>
		<ul class="nav navbar-nav navbar-right">
			<li class="divider-vertical"></li>
			<c:if test="${pageContext.request.userPrincipal.name != null}">
				<c:if
					test="${pageContext.request.userPrincipal.name != 'santoshenoy'}">
					<li><a href="<c:url value="/myCart" />"><span
							class="glyphicon glyphicon-shopping-cart"></span> CART</a>${cartSize}</li>
				</c:if>
				<c:if
					test="${pageContext.request.userPrincipal.name  == 'santoshenoy'}">
					<li><a style="color: #F5F5DC" href="<c:url value="/admin" />">VIEW
							ALL</a></li>
				</c:if>
				<li><a style="color: #F5F5DC">HELLO,
						${pageContext.request.userPrincipal.name}</a></li>
				<li><a style="color: #F5F5DC; margin: 0px 0px 0px 0px"
					href="<c:url value="/j_spring_security_logout" />"> <span
						class="glyphicon glyphicon-log-out"></span> Log Out
				</a></li>
			</c:if>
			<c:if test="${pageContext.request.userPrincipal.name  == null}">
				<li><a style="color: #F5F5DC; margin: 0px 0px 0px 0px"
					href="<c:url value="login" />"><span
						class="glyphicon glyphicon-log-in"></span> Login</a></li>
				<li><a style="color: #F5F5DC; margin: 0px 0px 0px 0px"
					href="<c:url value="register" />"><span
						class="glyphicon glyphicon-user"></span> Sign Up</a></li>
			</c:if>
		</ul>
	</div>
	</nav>
</body>
</html>