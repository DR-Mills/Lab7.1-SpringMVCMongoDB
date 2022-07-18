<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add a Grade</title>
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
	crossorigin="anonymous">
</head>
<body>
	<div style="padding: 30px">
		<form action="/addgrade" method="post">
			Name <input class="form-inline" type="text" name="name" id="name"> </br>
			Type <input class="form-inline" type="text" name="type" id="type"> </br>
			Score <input class="form-inline" type="number" step=".1" name="score" id="score"> </br>
			Total <input class="form-inline" type="number" step=".1" name="total" id="total"> </br>
			<input type="submit">
		</form>
	</div>
	
	<button type="button" class="btn"><a href="/" class="btn btn-default">Return to Homepage</a></button>
</body>
</html>