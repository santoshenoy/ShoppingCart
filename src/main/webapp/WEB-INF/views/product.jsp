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
<title>Product Page</title>
<style>
form {
	background-color: lightsteelblue;
	border: 3px solid #f1f1f1;
}

.button {
	background-color: green;
	color: white;
	padding: 14px 70px;
	display: block;
	margin: auto;
	text-align: center;
	border: none;
	cursor: pointer;
	width: 30%;
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
	padding: 10px;
	border: 1px solid #dddddd;
}

tr:nth-child(even) {
	background-color: #dddddd;
}
</style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<form:form action="product/add" commandName="product" method="post"
		enctype="multipart/form-data">
		<table>
			<tr>
				<td><label> ID </label></td>
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
				<form:input
					style="background-color: lightsteelblue
					; color:lightsteelblue"
					path="id" hidden="true" readonly="true" />
				<td><label> NAME </label></td>
				<td><form:input path="name" type="text"
						placeholder="Enter Name" required="true" /></td>
			</tr>
			<tr>
				<td><label> DESCRIPTION </label></td>
				<td><form:input path="description"
						placeholder="Enter Description" required="true" /></td>
			</tr>
			<tr>
				<td><label> CATEGORY LIST </label></td>
				<td><form:select path="category.name" items="${categoryList}"
						itemValue="name" itemLabel="name"></form:select></td>
			</tr>
			<tr>
				<td><label> SUPPLIER LIST </label></td>
				<td><form:select path="supplier.name" items="${supplierList}"
						itemValue="name" itemLabel="name"></form:select></td>
			</tr>
			<tr>
				<td><label> PRICE </label></td>
				<td><form:input path="price" placeholder="Enter Price"
						required="true" /></td>
			</tr>
			<tr>
				<td><label> STOCK </label></td>
				<td><form:input path="stock" placeholder="Enter Stock"
						required="true" /></td>
			</tr>
			<tr>
				<td><label> IMAGE </label></td>
				<td><form:input type="file" path="image"
						placeholder="Enter Image" /></td>
			</tr>
			<tr>
				<td align="right" colspan="2"><c:if
						test="${!empty product.name}">
						<input type="submit" style="background-color: green"
							class="btn btn-primary btn-md" value="EDIT PRODUCT" />
					</c:if> <c:if test="${empty product.name}">
						<input type="submit" style="background-color: green"
							class="btn btn-primary btn-md" value="ADD PRODUCT" />
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
			<th>Image</th>
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
				<td><img width="250" height="250"
					src="<c:url value="/resources/images/${product.id}.jpg"/>"></img></td>
				<td><a href="<c:url value='product-edit-${product.id}'/>"><input
						type="submit" style="background-color: green"
						class="btn btn-primary btn-md" value="EDIT" /></a></td>
				<td><a href="<c:url value='product-delete-${product.id}'/>"><input
						type="submit" style="background-color: green"
						class="btn btn-primary btn-md" value="DELETE" /></a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>