<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css">
</head>

<body>

	<div class="container"></div>
	<div class="page-header">
		<h1>Books</h1>
	</div>

	<!-- Søkeskjema -->
	<form class="form-search">
	<input type="text" name="q" class="input-medium search-query"
			value="<c:out value="${param.q}" />">
		<button type="submit" class="btn">Søk</button>
	</form>

	<!-- Resultater -->
	<table class="table">
		<thead>
			<tr>
				<th>Name</th>
				<th>Date of Birth</th>
				<th>Sex</th>
				<th>Email</th>
				<th>Phone Number</th>
				<th>Occupation</th>
			</tr>
		</thead>
		<c:forEach var="user" items="${users}">
			<tr>
				<td><c:out value="${user.fullName}" /></td>
				<td><c:out value="${user.dateOfBirth}" /></td>
				<td><c:out value="${user.sex}" /></td>
				<td><c:out value="${user.email}" /></td>
				<td><c:out value="${user.phoneNr}" /></td>
				<td><c:out value="${user.occupation}" /></td>
			</tr>
		</c:forEach>
	</table>

</body>
</html>
