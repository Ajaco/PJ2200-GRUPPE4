<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/sorttable.js"></script>
</head>

<body>

	<div class="container"></div>
	<div class="page-header">
		<h1>Users</h1>
	</div>

	<!-- Søkeskjema -->
	<form class="form-search">
	    <select type="text" name="c" class="input-occu" value="<c:out value="${param.c}" />">
	      <option value = "fullName">Full Name</option>
	      <option value = "dateOfBirth">Date of Birth</option>
	      <option value = "sex">Gender</option>
	      <option value = "email">E-mail adress</option>
	      <option value = "phoneNr">Phone Number</option>
	      <option value = "occupation">Field of expertise</option>
	      <option value = "groupName">Group Name</option>
	    </select>
		<input type="text" name="v" class="input-medium search-query" value="<c:out value="${param.v}" />">
		<button type="submit" class="btn">Søk</button>
	</form>

	<!-- Resultater -->
	<table class="sortable">
		<thead>
			<tr>
				<th>Navn</th>
				<th>Date of Birth</th>
				<th>Sex</th>
				<th>Email</th>
				<th>Phone Nr</th>
				<th>Occupation</th>
				<th>Group Name</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach var="User" items="${user}">
			<tr>
				<td><c:out value="${User.name}" /></td>
				<td><c:out value="${User.dateOfBirth}" /></td>
				<td><c:out value="${User.sex}" /></td>
				<td><c:out value="${User.email}" /></td>
				<td><c:out value="${User.phoneNumber}" /></td>
				<td><c:out value="${User.occupation}" /></td>
				<td><c:out value="${User.groupName}" /></td>
				<td><button type="submit" action="/hello" class="groupsubmit">Edit "${User.name}"</button></td>
			</tr>
		</c:forEach>
		</tbody>
	</table>

</body>
</html>
