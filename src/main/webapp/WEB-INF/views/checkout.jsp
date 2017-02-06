<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<link href='//fonts.googleapis.com/css?family=Architects Daughter'
	rel='stylesheet'>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="resources/js/jquery.min.js" /></script>
<title>Checkout</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<h1 style="font-family: 'Architects Daughter'">
		<center style="color: white">REVIEW ORDER</center>
	</h1>
	<div class="container" style="align: center; margin: 80px 230px">
		<c:if test="${!empty cartList}">
			<div class="row">
				<div class="col-xs-8">
					<div class="panel panel-info"
						style="box-shadow: 5px 5px 5px #888888">
						<div class="panel-heading" style="background-color: #ff9933">
							<div class="panel-title">
								<div class="row">
									<div class="col-xs-6">
										<h5 style="color: navy">
											<span class="glyphicon glyphicon-shopping-cart"
												style="color: navy"></span> <strong> YOUR CART </strong>
										</h5>
									</div>
									<div class="col-xs-6">
										<a href="<c:url value="/myCart" />" type="button"
											class="btn btn-primary btn-sm btn-block"
											title="Go back to Edit your Cart">EDIT CART </a>
									</div>
								</div>
							</div>
						</div>
						<div class="panel-body">
							<c:forEach items="${cartList}" var="cart">
								<div class="row">
									<div class="col-xs-3">
										<img style="width: 150px; height: 100px"
											src="<c:url value="/resources/images/${cart.p_id}.jpg"/>"
											title="Image of Item" />
									</div>
									<div class="col-xs-3">
										<h4 class="product-name">
											<strong title="Name of Item">${cart.p_name}</strong>
										</h4>
										<h4>
											<small>Quantity:${cart.quantity}</small>
										</h4>
									</div>
									<div class="col-xs-6">
										<div class="col-xs-6 text-right">
											<h4 class="text-right">
												<strong title="Price of the Item">$${cart.price}</strong>
											</h4>
										</div>
									</div>
								</div>
								<hr>
							</c:forEach>
						</div>
						<div class="panel-footer">
							<div class="row text-center">
								<div class="col-xs-4">
									<h4 class="text-right" title="Your Total Amount">Total:
										$${sum}</h4>
								</div>
								<div class="col-xs-5">
									<a href="shipping" type="button"
										class="btn btn-success btn-block" title="Proceed to Shipment">
										PROCEED </a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</c:if>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>