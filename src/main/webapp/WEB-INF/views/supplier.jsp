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
<title>Supplier Page</title>
<style>
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
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
	width: 80%;
}

table {
	font-family: arial, sans-serif;
	border-collapse: collapse;
	width: 50%;
}

.tble {
	font-family: arial, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

td, th {
	text-align: center;
	border: 1px solid #dddddd;
	padding: 10px;
}

tr {
	background-color: lightsteelblue;
}

.tble td, th {
	border: 1px solid black;
}

.tble tr:nth-child(odd) {
	background-color: #dddddd;
}

.tble tr:nth-child(even) {
	background-color: lemonchiffon;
}
</style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<form:form action="supplier-add" commandName="supplier" method="post">
		<table>
			<tr>
				<td><label> ID </label></td>
				<c:choose>
					<c:when test="${!empty supplier.id}">
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
					style="background: url(resources/images/Background.jpg); width: 0%; border: 1px solid maroon"
					path="id" hidden="true" readonly="true" />
				<td><label> NAME </label></td>
				<td><form:input path="name" type="text"
						placeholder="Enter Name" required="true" /></td>
			</tr>
			<tr>
				<td><label> ADDRESS </label></td>
				<td><form:input path="address" type="text"
						placeholder="Enter Address" required="true" /></td>
			</tr>
			<tr>
				<td align="center" colspan="2"><c:if
						test="${!empty supplier.name}">
						<input type="submit" style="background-color: green"
							class="btn btn-primary btn-md" value="EDIT SUPPLIER" />
					</c:if> <c:if test="${empty supplier.name}">
						<input type="submit" style="background-color: green"
							class="btn btn-primary btn-md" value="ADD SUPPLIER" />
					</c:if></td>
			</tr>
		</table>
	</form:form>
	<br>
	<table class="tble">
		<tr>
			<th>ID</th>
			<th>NAME</th>
			<th>ADDRESS</th>
			<th>EDIT</th>
			<th>DELETE</th>
		</tr>
		<c:forEach items="${supplierList}" var="supplier">
			<tr>
				<td>${supplier.id}</td>
				<td>${supplier.name}</td>
				<td>${supplier.address}</td>
				<td><a href="<c:url value='supplier-edit-${supplier.id}'/>"><input
						type="submit" style="background-color: green"
						class="btn btn-primary btn-md" value="EDIT" /></a></td>
				<td><a href="<c:url value='supplier-delete-${supplier.id}'/>"><input
						type="submit" style="background-color: green"
						class="btn btn-primary btn-md" value="DELETE" /></a></td>
			</tr>
		</c:forEach>
	</table>
	<br>
	<br>
	<br>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>