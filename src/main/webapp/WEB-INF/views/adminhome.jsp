<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="<c:url value="resources/css/bootstrap.css"/>">
<script src="<c:url value="resources/js/bootstrap.min.js"/>"></script>
<script src="<c:url value="resources/js/jquery.min.js"/>"></script>
<title>Admin Home</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div id="adminHome">
		<a href="category"><input type="submit"
			style="background-color: green" class="btn btn-primary btn-md"
			value="MANAGE CATEGORIES" /></a> &nbsp; &nbsp; <a href="supplier"><input
			type="submit" style="background-color: green"
			class="btn btn-primary btn-md" value="MANAGE SUPPLIERS" /></a> &nbsp;
		&nbsp; <a href="product"><input type="submit"
			style="background-color: green" class="btn btn-primary btn-md"
			value="MANAGE PRODUCTS" /></a> &nbsp; &nbsp;
	</div>
</body>
</html>