<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="<c:url value="resources/css/bootstrap.css"/>">
<script src="<c:url value="resources/js/bootstrap.min.js"/>"></script>
<script src="<c:url value="resources/js/jquery.min.js"/>"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>GUITARMANIA</title>
<style>
body {
	background-size: cover;
	background-repeat: no-repeat;
}
</style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="container"
		style="align: center; margin: 30px 0px 0px 180px">
		<div class="row">
			<c:if test="${!empty selectedProduct.name}">
				<div class="col-md-10 col-md-offset-1">
					<div class="panel panel-info">
						<div class="panel-body">
							<table class="table table-striped table-bordered table-list">
							<tr>
									<th align="center" width="175"><font color="black">Product
											Name</font></th>
									<th align="center" width="190"><font color="black">Product
											Description</font></th>
									<th align="center" width="90"><font color="black">Price</font></th>
									<th align="center" width="150"><font color="black">Product
											Category</font></th>
									<th align="center" width="150"><font color="black">Product
											Supplier</font></th>
									<th align="center" width="150"><font color="black">Product
											Image</font></th>

								</tr>
								<tr>
									<td align="left"><font color="black">${selectedProduct.name}</font></td>
									<td align="left"><font color="black">${selectedProduct.description}</font></td>
									<td align="left"><font color="black">${selectedProduct.price}</font></td>
									<td align="left"><font color="black">${selectedProduct.category.name}</font></td>
									<td align="left"><font color="black">${selectedProduct.supplier.name}</font></td>
									<td align="left"><img
										src="<c:url value="/resources/images/${selectedProduct.id}.jpg"/>" /></td>
								</tr>
							</table>
							<hr>
						</div>
						<div class="panel-footer">
							<div class="row text-center">
								<div class="col-xs-3">
									<a style="align: right"
										href="<c:url value='cart/add/${selectedProduct.id}' />"><button
											type="button" class="btn btn-primary">Add to Cart</button></a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</c:if>
		</div>
	</div>
</body>
</html>