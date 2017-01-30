<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="resources/css/bootstrap.css">
<script src="resources/js/bootstrap.min.js"></script>
<link href='//fonts.googleapis.com/css?family=Freckle Face'
	rel='stylesheet'>
<link href='//fonts.googleapis.com/css?family=Sansita' rel='stylesheet'>
<title></title>
<style>
body {
	background-color: lemonchiffon;
}

.navbar-default {
	background-color: #E5892D
}

.navbar-brand {
	font-family: 'Freckle Face';
	font-size: 55px;
}

.navbar-nav {
	font-family: 'Sansita';
}
</style>
</head>
<body>
	<nav class="navbar navbar-default">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="/shoppingCart" style="color: #000080">GUITARMANIA
			</a>
		</div>
		<ul class="nav navbar-nav" style="font-size: 20px">
			<c:forEach items="${categoryList}" var="category">
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href=${category.name
					}
					style="color: #000080">${category.name}<span class="caret"></span>
				</a>
					<ul class="dropdown-menu">
						<c:forEach items="${category.products}" var="product">
							<li><a style="color: #000000"
								href="<c:url value='product/get/${product.id}'/>">
									${product.name} </a>
						</c:forEach>
						<li><a style="color: #F5F5DC" href="#"></a></li>
					</ul></li>
			</c:forEach>
		</ul>
		<ul class="nav navbar-nav navbar-right" style="font-size: 16px">
			<li class="divider-vertical"></li>
			<c:if test="${pageContext.request.userPrincipal.name != null}">
				<c:if
					test="${pageContext.request.userPrincipal.name != 'santoshenoy@gmail.com'}">
					<li><a href="<c:url value="/myCart" />" style="color: navy"><span
							class="glyphicon glyphicon-shopping-cart" style="color: navy"></span>CART</a>${cartSize}</li>
				</c:if>
				<c:if
					test="${pageContext.request.userPrincipal.name  == 'santoshenoy@gmail.com'}">
					<li><a style="color: navy" href="<c:url value="/admin" />">VIEW
							ALL</a></li>
				</c:if>
				<li><a style="color: navy">Hello,
						${pageContext.request.userPrincipal.name}</a></li>
				<li><a style="color: navy; margin: 0px 0px 0px 0px"
					href="<c:url value="/j_spring_security_logout" />"> <span
						class="glyphicon glyphicon-log-out"></span> Log Out
				</a></li>
			</c:if>
			<c:if test="${pageContext.request.userPrincipal.name  == null}">
				<li><a style="color: navy; margin: 0px 0px 0px 0px"
					href="<c:url value="login" />"><span
						class="glyphicon glyphicon-log-in"></span> Log In</a></li>
				<li><a style="color: navy; margin: 0px 0px 0px 0px"
					href="<c:url value="register" />"><span
						class="glyphicon glyphicon-user"></span> Sign Up</a></li>
			</c:if>
		</ul>
	</div>
	</nav>
</body>
</html>