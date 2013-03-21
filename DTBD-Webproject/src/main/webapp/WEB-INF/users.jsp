<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
  <title>DTBD - Search!</title>
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
            <li><a href="hello">\\ home</a></li>
            <li><a href="/mingle">\\ find co-workers</a></li>
            <li><a href="/apply">\\ apply</a></li>
            <li><a href="/contest">\\ the contest</a></li>
            <li><a href="/contact">\\ contact</a></li>
            <li><a href="/about">\\ about</a></li>
        </ul>
      </div>
  </div>


  <div class="content">
  	   <ul class="registermenu">
	      <li><a href="/mingle#page0"><img src="img/registergroup.png" onmouseover="this.src='img/registergrouphover.png'" onmouseout="this.src='img/registergroup.png'" /></a>
	      <li><a href="/search"><img src="img/alreadyregistered.png" onmouseover="this.src='img/alreadyregisteredhover.png'" onmouseout="this.src='img/alreadyregistered.png'" /></a>
	      <li><a href="/mingle#page1"><img src="img/registersolo.png" onmouseover="this.src='img/registersolohover.png'" onmouseout="this.src='img/registersolo.png'" /></a>
    </ul>
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
					<li class="liedituserres"><a href="/edit">Edit this user</a></li>
				</ul>
			</c:forEach>
			</tbody>
		</table>
	</div>
	<ul class="registermenu">
      <li><a href="/mingle#page0"><img src="img/registergroup.png" onmouseover="this.src='img/registergrouphover.png'" onmouseout="this.src='img/registergroup.png'" /></a>
      <li><a href="/search"><img src="img/alreadyregistered.png" onmouseover="this.src='img/alreadyregisteredhover.png'" onmouseout="this.src='img/alreadyregistered.png'" /></a>
      <li><a href="/mingle#page1"><img src="img/registersolo.png" onmouseover="this.src='img/registersolohover.png'" onmouseout="this.src='img/registersolo.png'" /></a>
    </ul>

  </div> <!-- Content -->
  <div class="footer">
    <div class="footercontent">
      <div class="iconwrap">
        <a href="https://twitter.com/daretobedigital" target="_"><div class="tweeticon"></div></a>
        <a href="http://www.facebook.com/daretobedigital" target="_"><div class="faceicon"></div></a>
        <a href="http://www.daretobedigital.com" target="_"><div class="dareicon"></div></a>
      </div>
      <p class="footertext">
        All rights reserved (C) Dare to be Digital | Phone: +47 00 11 22 33 | Email: <a href="mailto:daretobednith@gmail.com" target="_blank">daretobenith@gmail.com</a> | Visit adress: Schweigaardsgate 14
      </p>
    </div>
  </div>
</div><!-- Container-->
</body>
</html>