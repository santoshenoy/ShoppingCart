<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="resources/css/bootstrap.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sign Up</title>
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
	<form:form modelAttribute="">
		<div class="container">
			<form:label path="name">
				<b>NAME:</b>
			</form:label>
			<br>
			<form:input type="text" placeholder="Enter Name" path="name"
				name="name" required="true" />
			<c:forEach
				items="${flowRequestContext.messageContext.getMessagesBySource('name')}"
				var="err">
				<div>
					<span>${err.text}</span>
				</div>
			</c:forEach>
			<br> <br>
			<form:label path="mail">
				<b>EMAIL ADDRESS:</b>
			</form:label>
			<br>
			<form:input type="text" placeholder="Enter Email Address" path="mail"
				name="mail" required="true" />
			<c:forEach
				items="${flowRequestContext.messageContext.getMessagesBySource('email')}"
				var="err">
				<div>
					<span>${err.text}</span>
				</div>
			</c:forEach>
			<br> <br>
			<form:label path="id">
				<b>USERNAME:</b>
			</form:label>
			<br>
			<form:input type="text" placeholder="Enter Username" path="id"
				name="id" required="true" />
			<c:forEach
				items="${flowRequestContext.messageContext.getMessagesBySource('id')}"
				var="err">
				<div>
					<span>${err.text}</span>
				</div>
			</c:forEach>
			<br> <br>
			<form:label path="password">
				<b>PASSWORD:</b>
			</form:label>
			<br>
			<form:input type="password" placeholder="Enter Password"
				path="password" name="password" required="true" />
			<c:forEach
				items="${flowRequestContext.messageContext.getMessagesBySource('password')}"
				var="err">
				<div>
					<span>${err.text}</span>
				</div>
			</c:forEach>
			<br> <br>
			<form:label path="mobile">
				<b>MOBILE NUMBER:</b>
			</form:label>
			<br>
			<form:input type="text" placeholder="Enter Mobile Number"
				path="mobile" name="mobile" required="true" />
			<c:forEach
				items="${flowRequestContext.messageContext.getMessagesBySource('mobile')}"
				var="err">
				<div>
					<span>${err.text}</span>
				</div>
			</c:forEach>
			<br> <br> <input name="_eventId_submit" type="submit"
				class="btn btn-success" style="width: 40%" value="Register"
				title="Click to Register" />
		</div>
	</form:form>
	<br>
	<br>
	<br>
	<br>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>