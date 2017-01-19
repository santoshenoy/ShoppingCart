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

.tble {
	font-family: arial, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

.tble td, th {
	border: 1px solid #dddddd;
	padding: 15px;
}

.tble tr:nth-child(even) {
	background-color: #dddddd;
}
</style>
</head>
<body>
	<form:form action="product/add" commandName="product" method="post">
		<table class="table table-condensed">
			<tr>
				<td><form:label path="id">
						<spring:message text="ID" />
					</form:label></td>
				<c:choose>
					<c:when test="${!empty product.id}">
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
				<form:input path="id" hidden="true" />
				<td><form:label path="name">
						<spring:message text="NAME" />
					</form:label></td>
				<td><form:input path="name" placeholder="Enter Name"
						required="true" /></td>
			</tr>
			<tr>
				<td><form:label path="description">
						<spring:message text="DESCRIPTION" />
					</form:label></td>
				<td><form:input path="description"
						placeholder="Enter Description" required="true" /></td>
			</tr>
			<tr>
				<td>Category List</td>
				<td><form:select path="category.name" items="${categoryList}" itemValue="name" itemLabel="name"></form:select></td>
			</tr>
			<tr>
			    <td>Supplier List</td>
				<td><form:select path="supplier.name" items="${supplierList}" itemValue="name" itemLabel="name"></form:select></td>
			</tr>
			<tr>
				<td><form:label path="price">
						<spring:message text="PRICE" />
					</form:label></td>
				<td><form:input path="price" placeholder="Enter Price"
						required="true" /></td>
			</tr>
			<tr>
				<td><form:label path="stock">
						<spring:message text="STOCK" />
					</form:label></td>
				<td><form:input path="stock" placeholder="Enter Stock"
						required="true" /></td>
			</tr>
			<tr>
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
	<table class="tble">
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