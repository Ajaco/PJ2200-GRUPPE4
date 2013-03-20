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
 <div class="searchheader"></div>
 	<div class="searchinputwrap">
      	<form class="form-search">
		    <select type="text" name="c" class="searchdrop" value="<c:out value="${param.c}" />">
		      <option value = "fullName">Full Name</option>
		      <option value = "dateOfBirth">Date of Birth</option>
		      <option value = "sex">Gender</option>
		      <option value = "email">E-mail adress</option>
		      <option value = "phoneNr">Phone Number</option>
		      <option value = "occupation">Field of expertise</option>
		      <option value = "groupName">Group Name</option>
		    </select>
			<input type="text" name="v" class="searchinput" value="<c:out value="${param.v}" />">
			<button type="submit" class="searchbtn" ><img src="img/search.png"></button>
		</form>
	</div>

	<div class="resultsheader"></div>
	<div class="resultswrap">
		<table class="resultstbl">
			<ul class="resultstitles">
	          <li class="linameres">Name</li>
	          <li class="lidobres">Date of Birth </br>[yyyy.mm.dd]</li>
	          <li class="ligenderres">Gender</li>
	          <li class="limailres">Email adress</li>
	          <li class="liphoneres">Phone Number</li>
	          <li class="lioccures">Field of expertise</li>
	          <li class="ligrpnameres">Group name</li>
            </ul>
			<c:forEach var="User" items="${user}">
				<ul class="results">
					<li class="linameres"><c:out value="${User.name}" /></li>
					<li class="lidobres"><c:out value="${User.dateOfBirth}" /></li>
					<li class="ligenderres"><c:out value="${User.sex}" /></li>
					<li class="limailres"><a href="mailto:${User.email}" target="_"><c:out value="${User.email}" /></a></li>
					<li class="liphoneres"><c:out value="${User.phoneNumber}" /></li>
					<li class="lioccures"><c:out value="${User.occupation}" /></li>
					<li class="ligrpnameres"><c:out value="${User.groupName}" /></li>
					<li class="liedituserres"><a href="/edituser">Edit this user</a></li>
				</ul>
			</c:forEach>
			</tbody>
		</table>
	</div>

  </div> <!-- Content -->
<div class="footer"></div>
</div><!-- Container-->
</body>
</html>