<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<form:form modelAttribute="user">
		<br />
		<tr>
			<td><form:label path="id">User ID:</form:label></td>
			<td><form:input path="id" /></td>
			<br />
		</tr>
		<!-- to display validation messages -->
		<c:forEach
			items="${flowRequestContext.messageContext.getMessagesBySource('id')}"
			var="err">
			<div>
				<span>${err.text}</span>
			</div>
		</c:forEach>
		<tr>
			<td><form:label path="name">Name:</form:label></td>
			<td><form:input path="name" /></td>
			<br />
		</tr>
		<!-- to display validation messages -->
		<c:forEach
			items="${flowRequestContext.messageContext.getMessagesBySource('name')}"
			var="err">
			<div>
				<span>${err.text}</span>
			</div>
		</c:forEach>
		<tr>
			<td><form:label path="password">Password:</form:label></td>
			<td><form:input type="password" path="password" /></td>
			<br />
		</tr>
		<!-- to display validation messages -->
		<c:forEach
			items="${flowRequestContext.messageContext.getMessagesBySource('password')}"
			var="err">
			<div>
				<span>${err.text}</span>
			</div>
		</c:forEach>
		<tr>
			<td><form:label path="mail">Email ID:</form:label></td>
			<td><form:input path="mail" /></td>
			<br />
		</tr>
		<!-- to display validation messages -->
		<c:forEach
			items="${flowRequestContext.messageContext.getMessagesBySource('email')}"
			var="err">
			<div>
				<span>${err.text}</span>
			</div>
		</c:forEach>
		<tr>
			<td><form:label path="mobile">Mobile #:</form:label></td>
			<td><form:input path="mobile" /></td>
			<br />
		</tr>
		<!-- to display validation messages -->
		<c:forEach
			items="${flowRequestContext.messageContext.getMessagesBySource('mobile')}"
			var="err">
			<div>
				<span>${err.text}</span>
			</div>
		</c:forEach>

		<br />
		<input name="_eventId_submit" type="submit" class="btn btn-success"
			value="Submit" />
		<br />
	</form:form>

</body>
</html>