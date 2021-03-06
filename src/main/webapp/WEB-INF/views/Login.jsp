<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="resources/js/jquery.min.js" /></script>
<title>Login</title>
<style>
body {
	background-color: #ff9933;
}

input[type=text], input[type=password] {
	width: 27%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
}

form {
	background-color: lavender;
	border: 3px solid #f1f1f1;
	width: 25%;
	margin: 0 auto;
	box-shadow: 5px 5px 5px #888888;
}

.container {
	padding: 16px;
}

.message {
	margin: 15px 0 0;
	color: #b3b3b3;
	font-size: 12px;
}
</style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<form action="<c:url value='j_spring_security_check'/>" method="post">
		<div class="container">
			<label><b>EMAIL ADDRESS: </b></label> <br> <input type="text"
				placeholder="Enter Email" name="username" required> <br>
			<br> <label><b>PASSWORD:</b></label> <br> <input
				type="password" placeholder="Enter Password" name="password"
				required> <br>
			<button type="submit" class="btn btn-success" style="width: 27%"
				title="Click to Log In">Log In</button>
			<p class="message" style="color: black">
				Not registered? <a href="<c:url value="register" />">Create an
					account</a>
			</p>
			<c:if test='${not empty "${loginerror}"}'>
				<p style="color: red">${loginerror}</p>
			</c:if>
		</div>
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
	</form>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>