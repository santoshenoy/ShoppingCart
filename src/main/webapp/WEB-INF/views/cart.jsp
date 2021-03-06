<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<link href='//fonts.googleapis.com/css?family=Architects Daughter'
	rel='stylesheet'>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="resources/js/jquery.min.js" /></script>
<title>Your Cart</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<h1 style="font-family: 'Architects Daughter'">
		<center style="color: white">CART LIST</center>
	</h1>
	<div class="container" style="align: center; margin: 80px 230px">
		<c:if test="${!empty cartList}">
			<div class="row">
				<div class="col-xs-8">
					<div class="panel panel-info"
						style="box-shadow: 3px 3px 3px #888888">
						<div class="panel-heading" style="background-color: #ff9933">
							<div class="panel-title">
								<div class="row">
									<div class="col-xs-6">
										<h5 style="color: navy">
											<span class="glyphicon glyphicon-shopping-cart"
												style="color: navy"></span> <strong>YOUR CART</strong>
										</h5>
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
											title="Picture of item" />
									</div>
									<div class="col-xs-3">
										<h4 class="product-name">
											<strong title="Name of the Item">${cart.p_name}</strong>
										</h4>
									</div>
									<div class="col-xs-5">
										<div class="col-xs-8 text-right">
											<h6 style="font-size: 15px">
												<strong title="Price of the selected item">$${cart.price}
													<span class="text-muted">x </span> <strong title="Quantity">
														${cart.quantity} </strong>
												</strong>
											</h6>
										</div>
										<div class="col-xs-1">
											<a href="<c:url value='cart/delete/${cart.id}' />"><button
													type="button" class="btn btn-link btn-xs"
													title="Remove this item from your cart">
													<span class="glyphicon glyphicon-trash"> </span>
												</button></a>
										</div>
									</div>
								</div>
								<hr>
							</c:forEach>
						</div>
						<div class="panel-footer">
							<div class="row text-center">
								<div class="col-xs-4">
									<h4 class="text-right" title="Your total amount">Total:
										$${sum}</h4>
								</div>
								<div class="col-xs-5">
									<a href="checkout" type="button"
										class="btn btn-success btn-block" title="Proceed to Checkout">
										CHECKOUT </a>
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