<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>ADD HOTEL</h1>
	<br>
	<form action="addHotel" method="post">
		ID: <input type="text" name="id" /> NAME: <input type="text"
			name="name" /> RENT: <input type="number" name="rent" /> RATING: <input
			type="number" name="rating" />
		<button type="submit">SUBMIT</button>
	</form>
	<br> ${result}
</body>
</html>