<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Category Page</title>
</head>
<body>

	<form:form action="category/add" commandName="category" method="post">

		<div class="container">
			<form:label path="id">
				<b>ID</b>
			</form:label>
			<form:input type="text" placeholder="Enter Category ID" path="id"
				name="id" required="true" />

			<form:label path="name">
				<b>NAME</b>
			</form:label>
			<form:input type="text" placeholder="Enter Category Name" path="name"
				name="name" required="true" />

			<form:label path="description">
				<b>DESCRIPTION</b>
			</form:label>
			<form:input type="text" placeholder="Enter DESCRIPTION"
				path="description" name="description" required="true" />

			<button type="submit">ADD CATEGORY</button>

		</div>
	</form:form>
</body>
</html>