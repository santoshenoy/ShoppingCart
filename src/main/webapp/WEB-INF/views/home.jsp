<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome to GuitarMania!</title>
<script src="resources/js/jquery.min.js"></script>
<style>
.carousel-inner>.item>img, .carousel-inner>.item>a>img {
	max-height: 502px;
	overflow: hidden;
}
</style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="container">
		<br>
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
				<li data-target="#myCarousel" data-slide-to="3"></li>
				<li data-target="#myCarousel" data-slide-to="4"></li>
				<li data-target="#myCarousel" data-slide-to="5"></li>
			</ol>
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img src="resources/images/Pic10.jpg" width="1200px">
				</div>

				<div class="item">
					<img src="resources/images/Pic14.jpg" width="1200px">
				</div>

				<div class="item">
					<img src="resources/images/Pic11.jpg" width="1200px">
				</div>

				<div class="item">
					<img src="resources/images/Pic9.jpg" width="1200px">
				</div>
				<div class="item">
					<img src="resources/images/Pic12.jpg" width="1200px">
				</div>
				<div class="item">
					<img src="resources/images/Pic20.jpg" width="1200px">
				</div>
			</div>
			<a class="left carousel-control" href="#myCarousel" role="button"
				data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel" role="button"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
	</div>
</body>
</html>