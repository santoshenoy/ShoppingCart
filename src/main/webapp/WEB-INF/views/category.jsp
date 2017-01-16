<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Category Page</title>
<style>
body {
	background-color: aliceblue;
}

form {
	background-color: lightsteelblue;
	border: 3px solid #f1f1f1;
}

.container {
	padding: 16px;
}

button {
	background-color: green;
	color: white;
	padding: 14px 20px; margin 8px 0;
	border: none;
	cursor: pointer;
	width: 10%;
}

input[type=text] {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
}

table {
	font-family: arial, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

td, th {
	border: 1px solid #dddddd;
	padding: 15px;
}

tr:nth-child(even) {
	background-color: #dddddd;
}
</style>
</head>
<body>
	<form:form action="category/add" commandName="category" method="post">
		<div class="container">
			<form:label path="id">
				<b>ID</b>
			</form:label>
			<form:input type="text" placeholder="Enter Category ID" path="id"
				name="id" required="true"/>
			<form:label path="name">
				<b>NAME</b>
			</form:label>
			<form:input type="text" placeholder="Enter Category Name" path="name"
				name="name" required="true"/>
			<form:label path="description">
				<b>DESCRIPTION</b>
			</form:label>
			<form:input type="text" placeholder="Enter Category Description"
				path="description" name="description" required="true"/>
			<button type="submit">ADD CATEGORY</button>
		</div>
	</form:form>
	<hr>
	<table>
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Description</th>
		</tr>
		<c:forEach items="${categoryList}" var="category">
			<tr>
				<td>${category.id}</td>
				<td>${category.name}</td>
				<td>${category.description}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>