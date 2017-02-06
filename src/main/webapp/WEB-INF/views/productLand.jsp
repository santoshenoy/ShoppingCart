<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="resources/js/jquery.min.js" /></script>
<title>GuitarMania</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<c:forEach items="${category.products}" var="product">
		<div class="row">
			<div class="col-xs-3">
				<p style="text-align: center;">
					<img style="width: 200px; height: 200px;"
						src="<c:url value="/resources/images/${product.id}.jpg"/>" />
				</p>
			</div>
			<div class="col-xs-4">
				<h2>
					<a href="<c:url value='product/get/${product.id}'/>"><p
							style="color: white">${product.name}</p></a>
				</h2>
				<br>
				<p style="color: gold">${product.description}</p>
			</div>
			<div class="col-xs-2"></div>
			<div class="col-xs-3">
				<p style="text-align: center">
				<h2>
					<p style="color: white">$ ${product.price}</p>
				</h2>
				<br> <strong><p style="color: gold">Stock</strong> <br>${product.stock}
				remaining
				</p>
				<br>
			</div>
		</div>
	</c:forEach>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>