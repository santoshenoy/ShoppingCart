<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Confirm Registration Details</title>
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
	background-color: lavender;
	border: 3px solid #f1f1f1;
	width: 37%;
	margin: 0 auto;
}

.container {
	padding: 16px;
}
</style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<p style="font-size: 20px">
		<strong>Please Confirm the Registration Details below: </strong>
	</p>
	<br>
	<br>
	<sf:form modelAttribute="user">
		<sf:label path="id" style="font-size: 18px">USERNAME:</sf:label>    ${user.id}
		<br>
		<br>
		<sf:label path="name" style="font-size: 18px"> NAME:</sf:label> ${user.name}
		<br>
		<br>
		<sf:label path="password" style="font-size: 18px">PASSWORD:</sf:label> ${user.password}
		<br>
		<br>
		<sf:label path="mail" style="font-size: 18px">EMAIL ADDRESS:</sf:label> ${user.mail}
	    <br>
		<br>
		<sf:label path="mobile" style="font-size: 18px">MOBILE NUMBER:</sf:label> ${user.mobile}
	    <br>
		<br>
		<input name="_eventId_edit" type="submit" class="btn btn-primary"
			value="Edit" title="Edit Details" />
		<input name="_eventId_submit" type="submit" class="btn btn-success"
			value="Confirm Details" title="Details confirmed - Click to Register" />
		<br>
	</sf:form>
	<br>
	<br>
	<br>
	<br>
	<br>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>