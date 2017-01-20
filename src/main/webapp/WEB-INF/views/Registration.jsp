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

input[type=text] {
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
	width: 30%;
}

.cancelbtn {
	background-color: red;
	color: white;
	padding: 14px 20px; margin 8px 0;
	border: none;
	cursor: pointer;
	width: 30%;
}
</style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	Please fill in the required details below
	<form:form action="registered" commandName="user" method="post">
		<div class="container">
			<form:label path="name">
				<b>Name</b>
			</form:label>
			<form:input type="text" placeholder="Enter Name" path="name"
				name="name" required="true" />
			<form:label path="mail">
				<b>E-Mail Address</b>
			</form:label>
			<form:input type="text" placeholder="Enter Email Address" path="mail"
				name="mail" required="true" />
			<form:label path="mobile">
				<b>Mobile Number</b>
			</form:label>
			<form:input type="text" placeholder="Enter Mobile Number"
				path="mobile" name="mobile" required="true" />
			<form:label path="password">
				<b>PASSWORD</b>
			</form:label>
			<form:input type="text" placeholder="Enter Password" path="password"
				name="password" required="true" />
			<form:label path="id">
				<b>Enter Username</b>
			</form:label>
			<form:input type="text" placeholder="Enter Username" path="id"
				name="id" required="true" />
			<button type="submit">Register</button>
			<button type="button" class="cancelbtn">Cancel</button>
		</div>
	</form:form>
</body>
</html>