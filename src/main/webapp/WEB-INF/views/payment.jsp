<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="resources/css/bootstrap.css">
<title>Payment</title>
</head>
<body>
	<h1>
		<center>PAYMENT AND SHIPPING DETAILS</center>
	</h1>
	<br>
	<form action="thanks" method="post">
		<div class="container" style="align: center; margin: 20px">
			<div class="row cart-body"
				style="align: center; margin: 0px 230px 0px 0px">
				<form class="form-horizontal" method="post" action="">
					<div
						class="col-lg-8 col-md-8 col-sm-6 col-xs-12 col-md-push-6 col-sm-push-6">
						<div class="panel panel-info">
							<div class="panel-heading">SHIPPING ADDRESS</div>
							<div class="panel-body">
								<div class="form-group">
									<div class="col-md-6 col-xs-12">
										<strong>FIRST NAME:</strong> <input type="text"
											name="first_name" class="form-control"
											placeholder="Enter First Name" required />
									</div>
									<div class="span1"></div>
									<div class="col-md-6 col-xs-12">
										<strong>LAST NAME:</strong> <input type="text"
											name="last_name" class="form-control"
											placeholder="Enter Last Name" required />
									</div>
								</div>
								<div class="form-group">
									<div class="col-md-12">
										<strong>ADDRESS:</strong>
									</div>
									<div class="col-md-12">
										<input type="text" name="address" class="form-control"
											placeholder="Enter Address" required />
									</div>
								</div>
								<div class="form-group">
									<div class="col-md-12">
										<strong>CITY:</strong>
									</div>
									<div class="col-md-12">
										<input type="text" name="city" class="form-control"
											placeholder="Enter City" required />
									</div>
								</div>
								<div class="form-group">
									<div class="col-md-12">
										<strong>STATE:</strong>
									</div>
									<div class="col-md-12">
										<input type="text" name="state" class="form-control"
											placeholder="Enter State" required />
									</div>
								</div>
								<div class="form-group">
									<div class="col-md-12">
										<strong>COUNTRY:</strong>
									</div>
									<div class="col-md-12">
										<input type="text" class="form-control" name="country"
											placeholder="Enter Country" required />
									</div>
								</div>
								<div class="form-group">
									<div class="col-md-12">
										<strong>ZIP/POSTAL CODE:</strong>
									</div>
									<div class="col-md-12">
										<input type="text" name="zip_code" class="form-control"
											placeholder="Enter ZIP/Postal Code" required />
									</div>
								</div>
								<div class="form-group">
									<div class="col-md-12">
										<strong>MOBILE NUMBER:</strong>
									</div>
									<div class="col-md-12">
										<input type="text" name="phone_number" class="form-control"
											placeholder="Enter Mobile Number" required />
									</div>
								</div>
								<div class="form-group">
									<div class="col-md-12">
										<strong>EMAIL ADDRESS:</strong>
									</div>
									<div class="col-md-12">
										<input type="text" name="email_address" class="form-control"
											placeholder="Enter Email Address" required />
									</div>
								</div>
							</div>
						</div>
						<div class="panel panel-info">
							<div class="panel-heading">
								<span><i class="glyphicon glyphicon-lock"></i></span> SECURE
								PAYMENT
							</div>
							<div class="panel-body">
								<div class="form-group">
									<div class="col-md-12">
										<strong>CARD TYPE:</strong>
									</div>
									<div class="col-md-12">
										<select id="CreditCardType" name="CreditCardType"
											class="form-control">
											<option value="5">VISA</option>
											<option value="6">MASTERCARD</option>
											<option value="7">AMERICAN EXPRESS</option>
											<option value="8">DISCOVER</option>
										</select>
									</div>
								</div>
								<div class="form-group">
									<div class="col-md-12">
										<strong>CREDIT CARD NUMBER:</strong>
									</div>
									<div class="col-md-12">
										<input type="text" class="form-control" name="car_number"
											placeholder="Enter Credit Card Number" required />
									</div>
								</div>
								<div class="form-group">
									<div class="col-md-12">
										<strong>CARD CVV:</strong>
									</div>
									<div class="col-md-12">
										<input type="text" class="form-control" name="car_code"
											placeholder="Enter 3-4 digit CVV" required />
									</div>
								</div>
								<div class="form-group">
									<div class="col-md-12">
										<strong>EXPIRATION DATE</strong>
									</div>
									<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
										<select class="form-control"
											placeholder="Enter Expiration Date">
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
										</select>
									</div>
									<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
										<select class="form-control" name="">
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
										</select>
									</div>
								</div>
								<div class="form-group">
									<div class="col-md-6 col-sm-6 col-xs-12">
										<button type="submit" class="btn btn-success btn-block" title="Click to place your order!">
											PLACE ORDER </a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</form>
			</div>
			<div class="row cart-footer"></div>
		</div>
	</form>
</body>
</html>