<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><%@ taglib
	uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1" />
<title>Crudapp</title>

<style type="text/css">
nav {
	display: flex;
	justify-content: space-between;
	align-items: center;
	padding: 1rem;
	background-color: #393646;
	box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.1);
	width: 98%;
	position: fixed;
	top: 0;
	left: 0;
	z-index: 999;
	margin: 0;
}

.logo {
	font-size: 1.5rem;
	font-weight: bold;
}

.logo a {
	color: #f4eee0;
	text-decoration: none;
}

.nav-links {
	display: flex;
	justify-content: space-between;
	align-items: center;
	list-style: none;
	margin: 0;
	padding: 0;
}

.nav-links li {
	margin-left: 1.5rem;
}

.nav-links li a {
	color: #f4eee0;
	text-decoration: none;
	transition: color 0.3s ease;
}

.nav-links li a:hover {
	color: #ff0008;
}

.burger {
	display: none;
	cursor: pointer;
}

.burger div {
	width: 25px;
	height: 3px;
	background-color: #333;
	margin: 5px;
	transition: all 0.3s ease;
}

.back-button-container {
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100px;
}

.table-container {
	border: 2px solid #393646;
	border-radius: 5px;
	box-shadow: 0px 1px 2px #393646;
	max-width: 600px;
	margin: 0 auto;
	margin-top: 150px;
}

table {
	width: 100%;
	border-collapse: collapse;
	background-color: #fff;
	box-shadow: 0px 3px 3px rgba(0, 0, 0, 0.1);
}

thead tr {
	background-color: #393646;
	color: #f4eee0;
}

thead th {
	padding: 15px;
	text-align: left;
}

tbody td {
	padding: 10px;
	text-align: left;
}

tbody tr:nth-child(even) {
	background-color: #f2f2f2;
}

.back-button {
	display: inline-block;
	padding: 10px 25px;
	font-size: 16px;
	color: #f4eee0;
	background-color: #393646;
	border: none;
	border-radius: 5px;
	box-shadow: 0px 3px 3px rgba(0, 0, 0, 0.1);
	cursor: pointer;
	transition: all 0.3s ease-in-out;
}

.back-button:hover {
	background-color: #4f4c60;
}

@media screen and (max-width: 768px) {
	.nav-links {
		display: none;
	}
	.burger {
		display: block;
	}
	.logo {
		font-size: 1.2rem;
	}
	.nav-active {
		display: flex;
		flex-direction: column;
		align-items: center;
		justify-content: center;
		width: 100%;
		height: 100vh;
		background-color: #fff;
		position: absolute;
		top: 0;
		left: 0;
		z-index: 1;
		transition: all 0.5s ease;
	}
	.nav-active li {
		opacity: 0;
	}
	.nav-active li a {
		font-size: 1.5rem;
		color: #f4eee0;
		text-decoration: none;
		transition: all 0.5s ease;
	}
	.burger.active div:nth-child(2) {
		opacity: 0;
	}
	.burger.active div:nth-child(1) {
		transform: rotate(45deg) translate(5px, 5px);
	}
	.burger.active div:nth-child(3) {
		transform: rotate(-45deg) translate(5px, -5px);
	}
}
</style>
</head>
<body>
	<!-- Navbar Start -->

	<nav>
		<div class="logo">
			<a href="/basiccrud/">Crudapp</a>
		</div>
		<ul class="nav-links">
			<li><a href="/basiccrud/addHotelPage">Add</a></li>
			<li><a href="/basiccrud/display">Display</a></li>
		</ul>
		<div class="burger">
			<div class="line"></div>
			<div class="line"></div>
			<div class="line"></div>
		</div>
	</nav>

	<!-- Navbar End -->

	<!-- Table Start -->

	<div class="table-container">
		<table>
			<thead>
				<tr>
					<th>ID</th>
					<th>NAME</th>
					<th>RENT</th>
					<th>RATING</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="hotel" items="${hotels}">
					<tr>
						<td>${hotel.id}</td>
						<td>${hotel.name}</td>
						<td>Rs. ${hotel.rent}</td>
						<td>${hotel.rating} stars</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

	<!-- Table End -->

	<!-- Back Button Start -->

	<div class="back-button-container">
		<button class="back-button" onclick="location.href = '/basiccrud/';">Back</button>
	</div>

	<!-- End Back Button-->
</body>
</html>
