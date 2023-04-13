<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Basiccrud</title>
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
	color: #F4EEE0;
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
	color: #F4EEE0;
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

.menu {
	background-color: #F4EEE0;
	border: 2px solid #393646;
	border-radius: 5px;
	box-shadow: 0px 2px 4px #393646;
	display: flex;
	flex-direction: column;
	max-width: 300px;
	margin: 2 auto;
	padding: 3rem;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
}

.menu-btn {
	background-color: #393646;
	border: none;
	border-radius: 5px;
	color: #F4EEE0;
	font-size: 1rem;
	margin-bottom: 0.7rem;
	padding: 1rem 6rem 1rem 6rem;
	text-align: center;
	text-decoration: none;
	width: 100%;
}

.menu-btn:hover {
	color: #ff0008;
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
	.menu {
		max-width: 100%;
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
		color: #F4EEE0;
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
	<nav>
		<div class="logo">
			<a href="#">Logo</a>
		</div>
		<ul class="nav-links">
			<li><a href="#">Log In</a></li>
			<li><a href="#">Sign Up</a></li>
		</ul>
		<div class="burger">
			<div class="line"></div>
			<div class="line"></div>
			<div class="line"></div>
		</div>
	</nav>
	<div class="menu">
		<button class="menu-btn"
			onclick="location.href = '/basiccrud/addHotelPage';">Add
			Hotel</button>
		<button class="menu-btn"
			onclick="location.href = '/basiccrud/updateHotelPage';">Update
			Hotel</button>
		<button class="menu-btn"
			onclick="location.href = '/basiccrud/deleteHotelPage';">Delete
			Hotel</button>
		<button class="menu-btn"
			onclick="location.href = '/basiccrud/displayHotelPage';">Display
			Hotel</button>
		<button class="menu-btn"
			onclick="location.href = '/basiccrud/totalHotelPage';">Total
			Hotels</button>
	</div>
</body>
</html>
