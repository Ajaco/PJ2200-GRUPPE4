<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
  <title>Dare to be Digital - Index</title>
  <meta charset="utf-8" />
  <link rel="stylesheet" href="style.css" type="text/css" />
</head>

<body>

<div id="container">
<div class="frostytop"></div>
  <!-- HEADER -->
  <div class="header">
    <div class="headerbg"></div>
      <div class="logomenuwrap">
        <a href="/hello"><div class="logo"></div></a>
        <ul class="menu">
            <li><a href="hello">\\ home<a></li>
            <li><a href="/mingle">\\ find co-workers</a></li>
            <li><a href="/apply">\\ apply</a></li>
            <li><a href="/contest">\\ the contest</a></li>
            <li><a href="/news">\\ news</a></li>
            <li><a href="/contact">\\ contact</a></li>
            <li><a href="/about">\\ about</a></li>
        </ul>
      </div>
  </div>


  <div class="content">
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
				<td><button type="submit" onClick="location.href='/edituser'" class="groupsubmit">Edit "${User.name}"</button></td>
			</tr>
		</c:forEach>
		</tbody>
	</table>

  </div> <!-- Content -->
<div class="footer"></div>
</div><!-- Container-->
</body>
</html>