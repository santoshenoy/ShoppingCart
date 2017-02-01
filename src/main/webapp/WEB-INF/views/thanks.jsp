<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="resources/js/jquery.min.js" /></script>
<title>Thank You!</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<label style="font-size: 30px; margin: 50px 0px 0px 120px">YOUR
		ORDER HAS BEEN RECEIVED!</label>
	<br>
	<label style="font-size: 20px; margin: 30px 0px 0px 120px">Thank
		you for your purchase! You will receive an Email with further shipping
		and delivery details. Check out some more of our products below: </label>
	<br>
	<br>
	<div class="container">
		<br>
		<h2 style="text-align: center">
			<i>The Hottest on the Planet!</i>
		</h2>
		<br>
		<div class="row">
			<div class="col-xs-6">
				<div class="floating-box">
					<div class="item">
						<a href="<c:url value='Acoustic-CAT_002'/>"> <img
							src="<c:url value="/resources/images/Pic7.jpg"/>" width="450px"
							height="300px" style="border-radius: 30px 80px">
						</a>
						<div class="carousel-caption">
							<h1>
								<a href="<c:url value='Acoustic-CAT_002'/>"
									style="color: powderblue"><i>ACOUSTIC</i></a>
							</h1>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-6">
				<div class="floating-box">
					<div class="item">
						<a href="<c:url value='Electric-CAT_001'/>"> <img
							src="<c:url value="/resources/images/Pic8.jpg"/>" width="450px"
							height="300px" style="border-radius: 30px 80px">
						</a>
						<div class="carousel-caption">
							<h1>
								<a href="<c:url value='Electric-CAT_001'/>" style="color: blue"><i>ELECTRIC</i></a>
							</h1>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-xs-6">
				<div class="floating-box">
					<div class="item">
						<a href="<c:url value='Bass-CAT_004'/>"> <img
							src="<c:url value="/resources/images/Pic9.jpg"/>" width="450px"
							height="300px" style="border-radius: 30px 80px">
						</a>
						<div class="carousel-caption">
							<h1>
								<a href="<c:url value='Bass-CAT_004'/>"
									style="color: midnightblue"><i>BASS</i></a>
							</h1>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-6" style="align: center">
				<div class="floating-box">
					<div class="item">
						<a href="<c:url value='Amps-CAT_003'/>"> <img
							src="<c:url value="/resources/images/Pic10.jpg"/>" width="450px"
							height="300px" style="border-radius: 30px 80px">
						</a>
						<div class="carousel-caption">
							<h1>
								<a href="<c:url value='Amps-CAT_003'/>" style="color: navy"><i>AMPLIFIERS</i></a>
							</h1>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>