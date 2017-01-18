<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product Page</title>
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
	<form:form action="product/add" commandName="product" method="post">
		<table class="table table-condensed">
			<tr bgcolor=#F0F8FF>
				<td><form:label style="color:#000000" path="id">
						<spring:message text="id" />
					</form:label></td>
				<c:choose>
					<c:when test="${!empty product.id}">
						<td><form:input
								style="background-color:#F5F5DC;border:0.25px solid black"
								path="id" disabled="true" readonly="true" /></td>
					</c:when>
					<c:otherwise>
						<td><form:input
								style="background-color:#F5F5DC;border:0.25px solid black"
								path="id" pattern=".{4,7}" required="true"
								title="id should be between 4 to 7 characters" /></td>
					</c:otherwise>
				</c:choose>
			</tr>
			<tr bgcolor="#F0F8FF">
				<form:input path="id" hidden="true" />
				<td><form:label style="color:#000000" path="name">
						<spring:message text="name" />
					</form:label></td>
				<td><form:input
						style="background-color:#F5F5DC;border:0.25px solid black"
						path="name" required="true" /></td>
			</tr>
			<tr bgcolor="#F0F8FF">
				<td><form:label style="color:#000000" path="description">
						<spring:message text="description" />
					</form:label></td>
				<td><form:input
						style="background-color:#F5F5DC;border:0.25px solid black"
						path="description" required="true" /></td>
			</tr>
			<tr bgcolor="#F0F8FF">
				<td><form:label style="color:#000000" path="category_id">
						<spring:message text="category_id" />
					</form:label></td>
				<td><form:input
						style="background-color:#F5F5DC;border:0.25px solid black"
						path="category_id" required="true" /></td>
			</tr>
			<tr bgcolor="#F0F8FF">
				<td><form:label style="color:#000000" path="supplier_id">
						<spring:message text="supplier_id" />
					</form:label></td>
				<td><form:input
						style="background-color:#F5F5DC;border:0.25px solid black"
						path="supplier_id" required="true" /></td>
			</tr>
			<tr bgcolor="#F0F8FF">
				<td><form:label style="color:#000000" path="price">
						<spring:message text="price" />
					</form:label></td>
				<td><form:input
						style="background-color:#F5F5DC;border:0.25px solid black"
						path="price" required="true" /></td>
			</tr>
			<tr bgcolor="#F0F8FF">
				<td><form:label style="color:#000000" path="stock">
						<spring:message text="stock" />
					</form:label></td>
				<td><form:input
						style="background-color:#F5F5DC;border:0.25px solid black"
						path="stock" required="true" /></td>
			</tr>
			<tr bgcolor="#F0F8FF">
				<td align="right" colspan="2"><c:if
						test="${!empty product.name}">
						<input style="align: middle" class="btn btn-primary btn-md"
							type="submit" value="<spring:message text="Edit Product"/>" />
					</c:if> <c:if test="${empty product.name}">
						<input style="align: middle" class="btn btn-primary btn-md"
							type="submit" value="<spring:message text="Add Product"/>" />
					</c:if></td>
			</tr>
		</table>
	</form:form>
	<table>
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Description</th>
			<th>Category_ID</th>
			<th>Supplier_ID</th>
			<th>Price</th>
			<th>Stock</th>
			<th>Edit</th>
			<th>Delete</th>
		</tr>
		<c:forEach items="${productList}" var="product">
			<tr>
				<td>${product.id}</td>
				<td>${product.name}</td>
				<td>${product.description}</td>
				<td>${product.category_id}</td>
				<td>${product.supplier_id}</td>
				<td>${product.price}</td>
				<td>${product.stock}</td>
				<td><a href="<c:url value='product-edit-${product.id}'/>"><input
						type="button" value="EDIT" /></a></td>
				<td><a href="<c:url value='product-delete-${product.id}'/>"><input
						type="button" value="DELETE" /></a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>