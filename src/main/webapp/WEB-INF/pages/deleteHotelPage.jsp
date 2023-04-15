<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

.container {
	background-color: #f4eee0;
	color: #393646;
	border: 2px solid #393646;
	border-radius: 5px;
	box-shadow: 0px 2px 4px #393646;
	padding: 20px;
	width: 300px;
	margin: 0 auto;
	margin-top: 100px;
}

h1 {
	text-align: center;
	font-size: 40px;
	margin-top: 0;
}

form {
	display: flex;
	flex-direction: column;
}

label {
	margin-top: 10px;
	font-size: 20px;
}

input[type="text"], input[type="number"] {
	background-color: #fefcf8;
	border: none;
	padding: 10px;
	border-radius: 5px;
	font-size: 18px;
	margin-top: 5px;
}

button[type="submit"] {
	background-color: #393646;
	color: #f4eee0;
	border: none;
	padding: 10px;
	border-radius: 5px;
	font-size: 20px;
	margin-top: 20px;
	cursor: pointer;
}

button[type="submit"]:hover {
	background-color: #393646;
	color: #f4eee0;
}

.back-button-container {
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100px;
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
			<li><a href="/basiccrud/deleteHotelPage">Delete</a></li>
		</ul>
		<div class="burger">
			<div class="line"></div>
			<div class="line"></div>
			<div class="line"></div>
		</div>
	</nav>

	<!-- Navbar End -->

	<!-- Form Start  -->

	<div class="container">
		<h1>DELETE HOTEL</h1>
		<form action="deleteHotel" method="post">

			<label for="id">ID</label> <input type="number" id="id" name="id"
				required />

			<button type="submit">DELETE</button>
		</form>
	</div>

	<!-- Form Ends  -->

	<!-- Back Button Start -->

	<div class="back-button-container">
		<button class="back-button" onclick="location.href = '/basiccrud/';">Back</button>
	</div>

	<!-- End Back Button-->
</body>
</html>
