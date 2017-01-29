<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="resources/js/jquery.min.js" /></script>
<title>Payment Details</title>
<style>
body {
	background-color: #ff9933;
}

input[type=text] {
	width: 40%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
}

form {
	background-color: lavender;
	border: 3px solid #f1f1f1;
	width: 37%;
	margin: 0 auto;
}

.container {
	padding: 16px;
}
</style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<form:form action="addPayment" commandName="payment" method="post">
		<div class="panel panel-info">
			<div class="panel-heading" style="font-size: 17px">
				<span><i class="glyphicon glyphicon-lock"></i></span><strong><u>SECURE
						PAYMENT</u></strong>
			</div>
		</div>
		<div class="container">
			<label><b>CARD TYPE:</b></label> <br> <select
				id="CreditCardType" name="CreditCardType">
				<option value="5">Visa</option>
				<option value="6">MasterCard</option>
				<option value="7">American Express</option>
				<option value="8">Discover</option>
			</select> <br> <br> <label><b>CARD NUMBER:</b></label> <br>
			<form:input type="text" placeholder="Enter Card Number"
				name="card_no" path="card_no" required="true" />
			<br> <br> <label><b>CVV NUMBER:</b></label> <br>
			<form:input type="text" placeholder="Enter CVV Number"
				name="card_cvv" path="card_cvv" required="true" />
			<br> <br> <label><b>CARD EXPIRATION DATE:</b></label> <br>
			<form:select path="card_exp" name="card_exp">
				<option value="">Month</option>
				<option value="01">01</option>
				<option value="02">02</option>
				<option value="03">03</option>
				<option value="04">04</option>
				<option value="05">05</option>
				<option value="06">06</option>
				<option value="07">07</option>
				<option value="08">08</option>
				<option value="09">09</option>
				<option value="10">10</option>
				<option value="11">11</option>
				<option value="12">12</option>
			</form:select>
			<form:select path="card_exp" name="card_exp">
				<option value="">Year</option>
				<option value="2015">2015</option>
				<option value="2016">2016</option>
				<option value="2017">2017</option>
				<option value="2018">2018</option>
				<option value="2019">2019</option>
				<option value="2020">2020</option>
				<option value="2021">2021</option>
				<option value="2022">2022</option>
				<option value="2023">2023</option>
				<option value="2024">2024</option>
				<option value="2025">2025</option>
			</form:select>
			<br> <br> <input type="submit"
				class="btn btn-success btn-block" style="width: 40%" value="CONFIRM"
				title="Proceed to Order">
		</div>
	</form:form>
	<br>
	<br>
	<br>
	<br>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>