<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product Page</title>
</head>
<body>

	<form:form action="product/add" commandName="product" method="post">

		<div class="container">
			<form:label path="id">
				<b>ID</b>
			</form:label>
			<form:input type="text" placeholder="Enter Product ID" path="id"
				name="id" required="true" />

			<form:label path="name">
				<b>NAME</b>
			</form:label>
			<form:input type="text" placeholder="Enter Product Name" path="name"
				name="name" required="true" />

			<form:label path="description">
				<b>DESCRIPTION</b>
			</form:label>
			<form:input type="text" placeholder="Enter Description"
				path="description" name="description" required="true" />

			<form:label path="category_id">
				<b>CATEGORY_ID</b>
			</form:label>
			<form:input type="text" placeholder="Enter Category ID"
				path="category_id" name="category_id" required="true" />

			<form:label path="supplier_id">
				<b>SUPPLIER_ID</b>
			</form:label>
			<form:input type="text" placeholder="Enter Supplier ID"
				path="supplier_id" name="supplier_id" required="true" />

			<form:label path="price">
				<b>PRICE</b>
			</form:label>
			<form:input type="text" placeholder="Enter Price" path="price"
				name="price" required="true" />

			<form:label path="stock">
				<b>STOCK</b>
			</form:label>
			<form:input type="text" placeholder="Enter Stock" path="stock"
				name="stock" required="true" />

			<button type="submit">ADD PRODUCT</button>

		</div>
	</form:form>

</body>
</html>