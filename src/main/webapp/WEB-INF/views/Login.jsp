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
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
}

form {
	background-color: skyblue;
	border: 3px solid #f1f1f1;
}

button {
	background-color: green;
	color: white;
	padding: 14px 20px; margin 8px 0;
	border: none;
	cursor: pointer;
	width: 10%;
}

.container {
	padding: 16px;
}

span.psw {
	float: right;
}

.cancelbtn {
	background-color: red;
	color: white;
	padding: 14px 20px; margin 8px 0;
	border: none;
	cursor: pointer;
	width: 10%;
}
</style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	Please enter your Username and Password below
	<form action="<c:url value='j_spring_security_check'/>" method="post">
		<div class="container">
			<label><b>USERNAME</b></label> <input type="text"
				placeholder="Enter Username" name="username" required> <label><b>PASSWORD</b></label>
			<input type="password" placeholder="Enter Password" name="password"
				required>
			<button type="submit">Login</button>
			<button type="button" class="cancelbtn">Cancel</button>
		</div>
		<div class="container" style="background-color: #f1f1f1">
			<input type="checkbox" checked="checked"> Remember me <span
				class="psw"><a href="#">Forgot password?</a></span>
		</div>
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
	</form>
</body>
</html>