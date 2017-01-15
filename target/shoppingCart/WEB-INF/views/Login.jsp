<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<style>
body {
	background-color: #ff9933;
}

input[type=text], input[type=password] {
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
	width: 100%;
}

.cancelbtn {
	width: auto;
	padding: 10px 18px;
	background-color: red;
}

.container {
	padding: 16px;
}

span.psw {
	float: right;
	padding-top: 16px;
}

@media screen and (max-width:300px) {
	span.psw {
		display: block;
		float: none;
	}
	.cancelbtn {
		width: 100%;
		background-color: red;
	}
}
</style>
</head>
<body>
	Please enter your Username and Password below

	<form name="userLogin" method="post">
		<div class="container">
			<label><b>Username</b></label> <input type="text"
				placeholder="Enter Username" name="id"> <label><b>Password</b></label>
			<input type="text" placeholder="Enter Password" name="password"
				required />

			<button type="submit">Login</button>
			<button type="button" class="cancelbtn">Cancel</button>
		</div>
	</form>
</body>
</html>