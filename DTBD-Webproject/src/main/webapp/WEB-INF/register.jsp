<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
  <title>Dare to be Digital - Register</title>
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
            <li><a href="/contact">\\ contact</a></li>
            <li><a href="/about">\\ about</a></li>
        </ul>
      </div>
  </div>


  <div class="content">
    <div class="disclaimer">
    <p class="disclaimertext">
      NOTE:</br>
      IN ORDER TO REGISTER, ALL YOU HAVE TO DO IS MAKE SURE YOU ARE A REGISTERED GROUP OF PRECICELY FOUR (4) PEOPLE.</br>
      ONCE THIS IS DONE - ENTER YOUR GROUP NAME IN THE FIELD BELOW, TO REGISTER FOR THE TOURNAMENT!</br>
      IF YOU'RE NOT SURE IF YOUR GROUP IS 4 PEOPLE, YOU CAN CHECK THAT BY CLICKING <a href="/search">HERE</a>
    </p>
  </div>
  <form action="/register">
    <div class="news">
      <p class="registertitle">Group name</p>
        <input type="text" name="groupName" class="input-groupname" value="<c:out value="${param.groupName}" />">
        <button type="submit" class="registersubmit"><img src="img/register.png"></button>
        <p class="registertext">By registrating you hereby agree to abide by the <a href="http://www.daretobedigital.com/80_Terms-Conditions.html">Terms and Conditions</a></p>
    </div>
        

  </form>
  </div> <!-- Content -->
<div class="footer"></div>
</div><!-- Container-->
</body>
</html>