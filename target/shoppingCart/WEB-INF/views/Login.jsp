<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<style>
body {
background-color: powderblue;
}
</style>
</head>
<body>
	Enter your Username and Password below
	<form action="validate" method="post">
		<table border="1" align="center">
			<tr>
				<td>User Name : <input type="text" name="id">
				</td>
			</tr>
			<tr>
				<td>Password : <input type="password" name="password">
				</td>
			</tr>
			<tr>
				<td><input type="submit" value="Login"></td>
				<td><input type="reset" value="Reset"></td>
			</tr>
		</table>
	</form>
</body>
</html>