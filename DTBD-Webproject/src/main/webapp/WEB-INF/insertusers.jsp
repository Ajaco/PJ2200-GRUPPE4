<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css">
</head>

<body>

	<div class="container"></div>
	<div class="page-header">
		<h1>Users</h1>
	</div>

	<!-- Insert-skjema -->
	<form class="form">
		<input type="text" name="title" class="input-medium"
				value="<c:out value="${param.title}" />">
		<input type="text" name="author" class="input-medium"
				value="<c:out value="${param.author}" />">
		<button type="submit" class="btn">Insert user</button>
	</form>

	<!-- Resultater -->
	<table class="table">
		<thead>
			<tr>
				<th>Navn</th>
				<th>Date of Birth</th>
				<th>Sex</th>
				<th>Email</th>
				<th>Phone Nr</th>
				<th>Occupation</th>
			</tr>
		</thead>
		<c:forEach var="User" items="${user}">
			<tr>
				<td><c:out value="${User.name}" /></td>
				<td><c:out value="${User.dateOfBirth}" /></td>
				<td><c:out value="${User.sex}" /></td>
				<td><c:out value="${User.email}" /></td>
				<td><c:out value="${User.phoneNumber}" /></td>
				<td><c:out value="${User.occupation}" /></td>
			</tr>
		</c:forEach>
	</table>

</body>
</html>
