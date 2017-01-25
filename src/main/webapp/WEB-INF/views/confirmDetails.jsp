<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<sf:form modelAttribute="user">
		<sf:label path="id">User ID :</sf:label>    ${user.id}
					<br />
		<br />
		<sf:label path="name"> User Name:</sf:label> ${user.name}
					<br />
		<br />
		<sf:label path="password">Password :</sf:label> ${user.password}
				<br>
		<br>
		<sf:label path="mail">Email:</sf:label> ${user.mail}
					<br />
		<br />
		<sf:label path="mobile">Mobile #:</sf:label> ${user.mobile}
					<br />
		<br />
		<input name="_eventId_edit" type="submit" class="btn btn-primary"
			value="Edit" />
		<input name="_eventId_submit" type="submit" class="btn btn-success"
			value="Confirm Details" />
		<br />
	</sf:form>
</body>
</html>