<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Confirmation</title>
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
	crossorigin="anonymous">
</head>
<body style="padding: 50px">

	<c:out value="${name}"/>'s <c:out value="${type}"/> has been added to the grades. The score was <c:out value="${score}"/>
	out of <c:out value="${total}"/>, which is <fmt:formatNumber value="${percent}" pattern="#.0"/>%. </br>


	<button type="button" class="btn"><a href="/" class="btn btn-default">Return to Homepage</a></button>
</body>
</html>