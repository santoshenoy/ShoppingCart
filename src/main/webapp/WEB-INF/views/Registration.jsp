<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
<style>
body {
	background-color: #ff9933;
}

input[type=text], [type=password] {
	width: 40%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
}

form {
	background-color: cornsilk;
	border: 3px solid #f1f1f1;
	width: 40%;
	margin: 0 auto;
}

.sbmtbtn {
	background-color: green;
	color: white;
	padding: 14px 20px; margin 8px 0;
	border: none;
	cursor: pointer;
	width: 40%;
}

.container {
	padding: 16px;
}
</style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<form:form action="registered" commandName="user" method="post">
		<div class="container">
			<form:label path="name">
				<b>NAME:</b>
			</form:label>
			<br>
			<form:input type="text" placeholder="Enter Name" path="name"
				name="name" required="true" />
			<br>
			<form:label path="mail">
				<b>E-MAIL ADDRESS:</b>
			</form:label>
			<br>
			<form:input type="text" placeholder="Enter Email Address" path="mail"
				name="mail" required="true" />
			<br>
			<form:label path="mobile">
				<b>MOBILE NUMBER:</b>
			</form:label>
			<br>
			<form:input type="text" placeholder="Enter Mobile Number"
				path="mobile" name="mobile" required="true" />
			<br>
			<form:label path="password">
				<b>PASSWORD:</b>
			</form:label>
			<br>
			<form:input type="password" placeholder="Enter Password" path="password"
				name="password" required="true" />
			<br>
			<button type="submit" style="background-color: green" class="sbmtbtn">Register</button>
		</div>
	</form:form>
</body>
</html>