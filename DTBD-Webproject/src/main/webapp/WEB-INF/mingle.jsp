<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
  <title>Dare to be Digital - Mingle</title>
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
            <li><a href="/hello">\\ home<a></li>
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
      <li><a href="#page0"><img src="img/registergroup.png" onmouseover="this.src='img/registergrouphover.png'" onmouseout="this.src='img/registergroup.png'" /></a>
      <li><a href="/search"><img src="img/alreadyregistered.png" onmouseover="this.src='img/alreadyregisteredhover.png'" onmouseout="this.src='img/alreadyregistered.png'" /></a>
      <li><a href="#page1"><img src="img/registersolo.png" onmouseover="this.src='img/registersolohover.png'" onmouseout="this.src='img/registersolo.png'" /></a>
    </ul>

    <div class="disclaimer">
      <p class="disclaimertext">
        <a href="/apply"><img class="newspic" src="img/gotoapply.png" alt="go to apply page"></img></a>
      NOTE: BY REGISTERING YOUR USER HERE, YOU DO NOT REGISTER FOR THE TOURNAMENT ITSELF.</br> THIS FEATURE IS ONLY USED FOR FINDING A GROUP, OR MEMBERS FOR YOUR GROUP. </br>IN ORDER TO APPLY TO THE TOURNAMENT WITH A FULL GROUP - PLEASE VISIT THE APPLY PAGE
      </p>
    </div>

    <div id="pageswrapper">
      <div id="pages">
        <div id="page0">
          <div id="page1">
            <div id="page2">
              <div id="page3">
                <div id="page4">
                  <div id="page5">
                    <div id="page6">

                        <div id="horizontalwrapper">

                          <form action="/insert">
                            <!-- PAGE 0 //GROUP REGISTRY-->
                            <div class="page0 currentpage">
                              <div class="boxcontent">
                                <div class="groupwrap">
                                  <p class="groupname">Group name</p>
                                  <input type="text" name="groupName" class="input-groupname" value="<c:out value="${param.groupName}" />">
                                </div>
                                <div class="formwrapper">
                                    <ul class="groupinfoul">
                                      <li class="liname">Name</li>
                                      <li class="lidob">Date of Birth [yyyy.mm.dd]</li>
                                      <li class="ligender">Gender</li>
                                      <li class="limail">Email adress</li>
                                      <li class="liphone">Phone Number</li>
                                      <li class="lioccu">Field of expertise</li>
                                    </ul>
                                    <c:forEach var="i" begin="1" end="4">
                                        <input type="text" name="fullName" class="input-group" value="<c:out value="${param.fullName}" />">
                                        <input type="text" name="dateOfBirth" class="input-group" value="<c:out value="${param.dateOfBirth}" />">
                                        <select type="text" name="sex" class="input-sex" value="<c:out value="${param.sex}" />">
                                          <option value = "M">Male</option>
                                          <option value = "F">Female</option>
                                        </select>
                                        <input type="text" name="email" class="input-group" value="<c:out value="${param.email}" />">
                                        <input type="text" name="phoneNumber" class="input-group" value="<c:out value="${param.phoneNumber}" />">
                                        <select type="text" name="occupation" class="input-occu" value="<c:out value="${param.occupation}" />">
                                          <option value = "Developer">Developer</option>
                                          <option value = "3D Artist">3D Artist</option>
                                          <option value = "Graphic Designer">Graphic Designer</option>
                                          <option value = "Audio">Audio</option>
                                        </select>
                                    </c:forEach>
                                    <button type="submit" action="/insert" class="groupsubmit"><img src="img/register.png"></button>
                                </div>
                              </div>
                            </div>

                            <!-- PAGE 1 -->
                            <div class="page1 currentpage">
                              <div class"mozwrap">
                                <p class="pagetitle">Hello! Thank you for registrating. To start things off; What's your name?</p>
                                  <div class="boxcontent"> 
                                    <input type="text" name="fullName" class="input-medium" value="<c:out value="${param.fullName}" />">
                                    <div class="buttonwrap">
                                      <a class="previous"><img src="img/previousno.png"/></a>
                                      <a class="next" href="#page2"><img src="img/next.png" onmouseover="this.src='img/nexthover.png'" onmouseout="this.src='img/next.png'" /></a>
                                    </div>
                                  </div>
                              </div>
                            </div>

                            <!-- PAGE 2 -->
                            <div class="page2 currentpage">
                              <p class="pagetitle">Next off.. we need to know when you are born. Format: yyyy.mm.dd</p>
                                <div class="boxcontent">
                                  <input type="text" name="dateOfBirth" class="input-medium" value="<c:out value="${param.dateOfBirth}" />">
                                  <div class="buttonwrap">
                                    <a class="previous" href="#page1"><img src="img/previous.png" onmouseover="this.src='img/previoushover.png'" onmouseout="this.src='img/previous.png'" /></a>
                                    <a class="next" href="#page3"><img src="img/next.png" onmouseover="this.src='img/nexthover.png'" onmouseout="this.src='img/next.png'" /></a>
                                  </div>                                
                                </div>
                            </div>

                            <!-- PAGE 3 -->
                            <div class="page3 currentpage">
                              <p class="pagetitle">This is a tricky one; what's your gender?</p>
                                <div class="boxcontent">
                                  <select type="text" name="sex" class="input-medium" value="<c:out value="${param.sex}" />">
                                  <option value = "M">Male</option>
                                  <option value = "F">Female</option>
                                  </select>
                                  <div class="buttonwrap">
                                    <a class="previous" href="#page2"><img src="img/previous.png" onmouseover="this.src='img/previoushover.png'" onmouseout="this.src='img/previous.png'" /></a>
                                    <a class="next" href="#page4"><img src="img/next.png" onmouseover="this.src='img/nexthover.png'" onmouseout="this.src='img/next.png'" /></a>
                                  </div>
                                </div>   
                            </div>

                            <!-- PAGE 4 -->
                            <div class="page4 currentpage">
                              <p class="pagetitle">How can we reach you? Please enter your e-mail adress.</p>
                                <div class="boxcontent">
                                  <input type="text" name="email" class="input-medium" value="<c:out value="${param.email}" />">
                                  <div class="buttonwrap">
                                    <a class="previous" href="#page3"><img src="img/previous.png" onmouseover="this.src='img/previoushover.png'" onmouseout="this.src='img/previous.png'" /></a>
                                    <a class="next" href="#page5"><img src="img/next.png" onmouseover="this.src='img/nexthover.png'" onmouseout="this.src='img/next.png'" /></a>
                                  </div>
                                </div>
                                
                            </div>

                            <!-- PAGE 5 -->
                            <div class="page5 currentpage">
                              <p class="pagetitle">We want to make certain we can reach you. Whats your phone number?</p>
                                <div class="boxcontent">
                                  <input type="text" name="phoneNumber" class="input-medium" value="<c:out value="${param.phoneNumber}" />">
                                  <div class="buttonwrap">
                                    <a class="previous" href="#page4"><img src="img/previous.png" onmouseover="this.src='img/previoushover.png'" onmouseout="this.src='img/previous.png'" /></a>
                                    <a class="next" href="#page6"><img src="img/next.png" onmouseover="this.src='img/nexthover.png'" onmouseout="this.src='img/next.png'" /></a>
                                  </div>
                                </div>
                                
                            </div>

                            <!-- PAGE 6 -->
                            <div class="page6 currentpage">
                              <p class="pagetitle">And lastly.. what are you good at?</p>
                                <div class="boxcontent">
                                  <select type="text" name="occupation" class="input-medium" value="<c:out value="${param.occupation}" />">
                                  <option value = "Developer">Developing</option>
                                  <option value = "3D Artist">3D</option>
                                  <option value = "Graphic Designer">Graphic Design</option>
                                  <option value = "Audio">Audio</option>
                                  </select>
                                  <div class="buttonwrap">
                                    <a class="previous" href="#page5"><img src="img/previous.png" onmouseover="this.src='img/previoushover.png'" onmouseout="this.src='img/previous.png'" /></a>
                                    <a class="next"><img src="img/nextno.png"></a>
                                  </div>
                                  <button type="submit" class="submit"><img src="img/submit.png"/></button>
                                </div>
                            </div>
                          </form>

                        </div> <!-- HORIZONTAL WRAPPER-->
                    </div><!-- PAGE 6 -->
                  </div><!-- PAGE 5 -->
                </div><!-- PAGE 4-->
              </div><!-- PAGE 3 -->
            </div><!-- PAGE 2 -->
          </div><!-- PAGE 1 -->
        </div><!-- PAGE 0 -->
      </div><!-- PAGES --> 
    </div><!-- PAGES WRAPPER -->

    <ul class="registermenubottom">
      <li><a href="#page0"><img src="img/registergroup.png" onmouseover="this.src='img/registergrouphover.png'" onmouseout="this.src='img/registergroup.png'" /></a>
      <li><a href="/search"><img src="img/alreadyregistered.png" onmouseover="this.src='img/alreadyregisteredhover.png'" onmouseout="this.src='img/alreadyregistered.png'" /></a>
      <li><a href="#page1"><img src="img/registersolo.png" onmouseover="this.src='img/registersolohover.png'" onmouseout="this.src='img/registersolo.png'" /></a>
    </ul>

  </div>
  <div class="footer">
    <div class="footercontent">
      <p class="footertext">
        All rights reserved (C) Dare to be Digital | Phone: +47 00 11 22 33 | Email: <a href="mailto:${User.email}" target="_" value="daretobenith@gmail.com"/>daretobenith@gmail.com</a> | Visit adress: Schweigaardsgate 14
      </p>
    </div>
  </div>
</div><!-- Container-->
</body>
</html>