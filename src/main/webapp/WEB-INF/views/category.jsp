<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="<c:url value="resources/css/bootstrap.css"/>">
<script src="<c:url value="resources/js/bootstrap.min.js"/>"></script>
<script src="<c:url value="resources/js/jquery.min.js"/>"></script>
<title>Category Page</title>
<style>
form {
	background-color: lightsteelblue;
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
	text-align: center;
	border: 1px solid #dddddd;
	padding: 15px;
}

tr:nth-child(even) {
	background-color: #dddddd;
}
</style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<form:form action="category/add" commandName="category" method="post">
		<table class="table table-condensed">
			<tr>
				<td><label>ID</label></td>
				<c:choose>
					<c:when test="${!empty category.id}">
						<td><form:input placeholder="Enter ID" path="id"
								disabled="true" readonly="true" /></td>
					</c:when>
					<c:otherwise>
						<td><form:input placeholder="Enter ID" path="id"
								required="true" /></td>
					</c:otherwise>
				</c:choose>
			</tr>
			<tr>
				<form:input
					style="background-color: lightsteelblue
					; color:lightsteelblue"
					path="id" hidden="true" readonly="true" />
				<td><label>NAME</label></td>
				<td><form:input path="name" type="text"
						placeholder="Enter Name" required="true" /></td>
			</tr>
			<tr>
				<td><label>DESCRIPTION</label></td>
				<td><form:input path="description" type="text"
						placeholder="Enter Description" required="true" /></td>
			</tr>
			<tr bgcolor="#F0F8FF">
				<td align="right" colspan="2"><c:if
						test="${!empty category.name}">
						<input type="submit" style="background-color: green"
							class="btn btn-primary btn-md" value="EDIT CATEGORY" />
					</c:if> <c:if test="${empty category.name}">
						<input type="submit" style="background-color: green"
							class="btn btn-primary btn-md" value="ADD CATEGORY" />
					</c:if></td>
			</tr>
		</table>
	</form:form>
	<table>
		<tr>
			<th>ID</th>
			<th>NAME</th>
			<th>DESCRIPTION</th>
			<th>EDIT</th>
			<th>DELETE</th>
		</tr>
		<c:forEach items="${categoryList}" var="category">
			<tr>
				<td>${category.id}</td>
				<td>${category.name}</td>
				<td>${category.description}</td>
				<td><a href="<c:url value='category-edit-${category.id}'/>"><input
						type="submit" style="background-color: green"
						class="btn btn-primary btn-md" value="EDIT" /></a></td>
				<td><a href="<c:url value='category-delete-${category.id}'/>"><input
						type="submit" style="background-color: green"
						class="btn btn-primary btn-md" value="DELETE" /></a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>