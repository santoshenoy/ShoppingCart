<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
<style>
body  {
background-color: #ff9933;
}

input[type=text] {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
}

form {
background-color: skyblue;
	border: 3px solid #f1f1f1;
}

button {
	background-color: green;
	color: white;
	padding: 14px 20px; margin 8px 0;
	border: none;
	cursor: pointer;
	width: 30%;
}

.cancelbtn {
	background-color: red;
	color: white;
	padding: 14px 20px; margin 8px 0;
	border: none;
	cursor: pointer;
	width: 30%;
}
 
</style>
</head>
<body>
	Please fill in the required details below
	<form action="registering" method="post">
		<div class="container">
		<label><b>First Name</b></label>
		<input type="text" placeholder="Enter First Name" name="fname" required>
		<label><b>Middle Name</b></label>
	    <input type="text" placeholder="Enter Middle Name" name="mname">
	    <label><b>Last Name</b></label>
		<input type="text" placeholder="Enter Last Name" name="lname" required>
		<label><b>E-Mail Address</b></label>
		<input type="text" placeholder="Enter Email Address" name="email" required>
		<label><b>Mobile Number</b></label>
		<input type="text" placeholder="Enter Mobile Number" name="mobile" required>
		<label><b>Landline</b></label>
		<input type="text" placeholder="Enter Landline" name="line" required>
		<label><b>Address</b></label>
		<input type="text" placeholder="Enter Address" name="addr" required>
		<label><b>Pincode</b></label>
		<input type="text" placeholder="Enter Pincode" name="pcode" required>
		<label><b>City</b></label>
		<input type="text" placeholder="Enter City" name="city" required>
		<label><b>State</b></label>
		<input type="text" placeholder="Enter State" name="state" required>
		<label><b>Country</b></label>
		<input type="text" placeholder="Enter Country" name="cntry" required>
		<button type="submit">Register</button>
		<button type="button" class="cancelbtn">Cancel</button>
		</div>
	</form>
</body>
</html>