<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<style>
body {
	background-color: #ff9933;
}

input[type=text], input[type=password] {
	width: 30%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
}

form {
	background-color: cornsilk;
	border: 3px solid #f1f1f1;
	width: 30%;
	margin: 0 auto;
}

.sbmtbtn {
	color: white;
	padding: 7px 15px; margin 8px 0;
	border: none;
	cursor: pointer;
	width: 30%;
}

.container {
	padding: 16px;
}
</style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<form action="<c:url value='j_spring_security_check'/>" method="post">
		<div class="container">
			<label><b>EMAIL ADDRESS: </b></label> <br> <input type="text"
				placeholder="Enter Email" name="username" required> <br>
			<label><b>PASSWORD:</b></label> <br> <input type="password"
				placeholder="Enter Password" name="password" required> <br>
			<button type="submit" style="background-color: green" class="sbmtbtn">Log
				In</button>
		</div>
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
	</form>
</body>
</html>