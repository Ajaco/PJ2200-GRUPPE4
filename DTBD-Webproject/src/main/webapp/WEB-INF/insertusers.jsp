<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<link rel="stylesheet" type="text/css" href="bootstrap.min.css">
</head>

<body>
	<div id="container">
		<div class="logo"></div>
    	<ul class="menu">
        	<div class="liwrap">
 	      		<li><a href="#"><img src="img/contestmenu.png" alt="about" id="about"></a></li>
        		<li><a href="#"><img src="img/applymenu.png" alt="about" id="about"></a></li>
        		<li><a href="#"><img src="img/newsmenu.png" alt="apply" id="apply"></a></li>
        		<li><a href="#"><img src="img/contactmenu.png" alt="news" id="news"></a></li>
        		<li><a href="#"><img src="img/aboutmenu.png" alt="mingle" id="mingle"></a></li>
      		</div>
    	</ul>


		<!-- Insert-skjema -->
		<div class="content">
			<h1>Users</h1>
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
				<option value = "3D Artist">3D Artist</option>
				<option value = "Graphic Designer">Graphic Designer</option>
				<option value = "Audio">Audio</option>
				</select>
				<button type="submit" action="/search">Insert user</button>
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
		<div class="push"></div>
		</div>
	<div class="footer"></div>
	</div><!--container>
</body>
</html>

