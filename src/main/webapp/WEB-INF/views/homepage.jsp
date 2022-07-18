<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Grades Homepage</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
</head>
<body>

<table class = "table">

	<thead>
		<tr>
			<th>Name</th>
			<th>Type</th>
			<th>Score</th>
			<th>Total</th>									
		</tr>
	</thead>
	<tbody>
		<c:forEach var="grade" items="${grades}">
			<tr>
				<td><c:out value="${grade.name}"/></td>
				<td><c:out value="${grade.type}"/></td>
				<td><fmt:formatNumber value="${grade.score}" pattern="#.0"/></td>
				<td><fmt:formatNumber value="${grade.total}" pattern="#.0"/></td>				
				<td><button type="button" class="btn"><a href="/delete?id=${grade.id}">Delete</a></button></td>								
			</tr>		
		</c:forEach>
	</tbody>

</table>

<button type="button" class="btn"><a href="/addgrade">Add a Grade</a></button>


</body>
</html>