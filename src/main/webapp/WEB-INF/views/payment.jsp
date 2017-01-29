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
<title>Payment</title>
<style>
body {
	background-color: #ff9933;
}

input[type=text], [type=password] {
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
		<div class="container">
			<label> <b>FIRST NAME: </b>
			</label> <br>
			<form:input type="text" placeholder="Enter First Name" name="fname"
				path="fname" required="true" />
			<br> <br> <label> <b>LAST NAME: </b>
			</label> <br>
			<form:input type="text" placeholder="Enter Last Name" name="lname"
				path="lname" required="true" />
			<br> <br> <label> <b>ADDRESS: </b>
			</label> <br>
			<form:input type="text" placeholder="Enter Shipping Address"
				name="address" path="address" required="true" />
			<br> <br> <label> <b>CITY: </b>
			</label> <br>
			<form:input type="text" placeholder="Enter City" name="city"
				path="city" required="true" />
			<br> <br> <label> <b>STATE: </b>
			</label> <br>
			<form:input type="text" placeholder="Enter State" name="state"
				path="state" required="true" />
			<br> <br> <label> <b>COUNTRY: </b>
			</label> <br>
			<form:input type="text" placeholder="Enter Country" name="country"
				path="country" required="true" />
			<br> <br> <label> <b>ZIPCODE: </b>
			</label> <br>
			<form:input type="text" placeholder="Enter ZIPcode" name="zipcode"
				path="zipcode" required="true" />
			<br> <br> <label> <b>MOBILE: </b>
			</label> <br>
			<form:input type="text" placeholder="Enter Mobile Number"
				name="mobile" path="mobile" required="true" />
			<br> <br> <label> <b>EMAIL ADDRESS: </b>
			</label> <br>
			<form:input type="text" placeholder="Enter Email Address" name="mail"
				path="mail" required="true" />
			<br> <br> <input type="submit"
				class="btn btn-success btn-block" style="width: 40%" value="PROCEED" title="Proceed to Payment">
		</div>
	</form:form>
	<br>
	<br>
	<br>
	<br>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>