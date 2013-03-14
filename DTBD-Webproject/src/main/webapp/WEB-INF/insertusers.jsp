<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<link rel="stylesheet" type="text/css" href="style.css">

</head>

<body>

	<div class="container"></div>
	<div class="page-header">
		<h1>Users</h1>
	</div>

	<!-- Insert-skjema -->

	<form class="form" id="inputform">

		<input type="text" name="fullName" class="input-medium"
				value="<c:out value="${param.fullName}" />">

		<input type="text" name="dateOfBirth" class="input-medium"
				value="<c:out value="${param.dateOfBirth}" />">

		<input type="text" name="sex" class="input-medium"
				value="<c:out value="${param.sex}" />">

		<input type="text" name="email" class="input-medium"
				value="<c:out value="${param.email}" />">

		<input type="text" name="phoneNumber" class="input-medium"
				value="<c:out value="${param.phoneNumber}" />">
		<select type="text" name="occupation" class="input-medium"
				value="<c:out value="${param.occupation}" />">
		<option value = "Developer">Developer</option>
		<option value = "Developer">3D Artist</option>
		<option value = "Developer">Graphic Designer</option>
		<option value = "Developer">Audio</option>
		</select>


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

