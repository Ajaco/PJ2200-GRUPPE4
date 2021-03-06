<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
  <title>DTBD - Edit!</title>
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
    <div class="disclaimer">
      <p class="disclaimertext">
        NOTE:</br> THIS PAGE IS USED FOR ADDING A PERSON TO A GROUP OR REMOVING SOMEONE FROM A GROUP</br> IF YOU WANT TO LEAVE YOUR CURRENT GROUP, LEAVE THE "GROUP" FIELD BLANK</br>IF YOU WANT TO JOIN ANOTHER GROUP, FILL IN THAT GROUP'S NAME IN THE FIELD.
      </p>
    </div>
    <div class="changegroupheader"></div>
    <div class="news">
      <form action="/edit">
        <div class="formwrapper">
          <ul class="editgrouptitles">
            <li class="editmail">Your email adress</li>
            <li class="editgroup">New group name</li>
          </ul>
              <input type="text" name="email" class="edit-input" value="<c:out value="${param.email}" />">
              <input type="text" name="groupName" class="edit-input" value="<c:out value="${param.groupName}" />">
          <button type="submit" class="editsubmit"><img src="img/register.png"></button>
        </div>
      </div>
    </form>

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