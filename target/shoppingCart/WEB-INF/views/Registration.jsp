<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
<style>
body  {
background-color: powderblue;
}
</style>
</head>
<body>
	Please fill in the required details below
	<form action="registering" method="post">
		E-Mail ID : <input type="text" name="mailId"> <br>
		Password: <input type="password" name="password"> <br>

		Mobile : <input type="text" name="mobile"> <br> Address :
		<input type="text" name="address"> <br> <input
			type="submit" value="Register"> <input type="reset"
			value="Reset">
	</form>
</body>
</html>