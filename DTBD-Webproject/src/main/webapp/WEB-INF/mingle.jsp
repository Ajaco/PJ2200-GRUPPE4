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
            <li><a href="/hello">\\ home</a></li>
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

    <ul class="registermenu">
      <li><a href="#page0"><img src="img/registergroup.png" onmouseover="this.src='img/registergrouphover.png'" onmouseout="this.src='img/registergroup.png'" /></a>
      <li><a href="/apply"><img src="img/alreadyregistered.png" onmouseover="this.src='img/alreadyregisteredhover.png'" onmouseout="this.src='img/alreadyregistered.png'" /></a>
      <li><a href="#page1"><img src="img/registersolo.png" onmouseover="this.src='img/registersolohover.png'" onmouseout="this.src='img/registersolo.png'" /></a>
    </ul>

    <div class="disclaimer">
      <p class="disclaimertext">
        <a href="/apply"><img class="newspic" src="img/gotoapply.png" alt="go to apply page"></img></a>
      NOTE: BY REGISTERING YOUR USER HERE, YOU DO NOT REGISTER FOR THE TOURNAMENT ITSELF.</br> THIS FEATURE IS ONLY USED FOR FINDING A GROUP, OR MEMBERS FOR YOUR GROUP. </br>IN ORDER TO APPLY TO THE TOURNAMENT WITH A FULL GROUP - PLEASE VISIT THE APPLY PAGE
      </p>
    </div>
<form class="form" id"=inputform" action="/insert">
  <c:forEach var="i" begin="1" end="2">
    <input type="text" name="fullName" class="input-medium" value="<c:out value="${param.fullName}" />">
    <input type="text" name="dateOfBirth" class="input-medium" value="<c:out value="${param.dateOfBirth}" />">
    <input type="text" name="sex" class="input-medium" value="<c:out value="${param.sex}" />">
    <input type="text" name="email" class="input-medium" value="<c:out value="${param.email}" />">
    <input type="text" name="phoneNumber" class="input-medium" value="<c:out value="${param.phoneNumber}" />">
    <select type="text" name="occupation" class="input-medium" value="<c:out value="${param.occupation}" />">
    <option value = "Developer">Developer</option>
    <option value = "3D Artist">3D Artist</option>
    <option value = "Graphic Designer">Graphic Designer</option>
    <option value = "Audio">Audio</option>
    </select>
  </c:forEach>
<button type="submit">Insert user</button>
</form>

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

                          <form class="form" id="inputform" action="/insert">
                            <!-- PAGE 0 //GROUP REGISTRY-->
                            <div class="currentpage">
                              <p class="pagetitle">Page 0</p>
                                <div class="boxcontent">
                                  GROUP REGISTRY
                                </div>
                                <a class="next" href="#page0">SUBMIT</a>
                            </div>

                            <!-- PAGE 1 -->
                            <div class="currentpage">
                              <p class="pagetitle">Page 1</p>
                                <div class="boxcontent">
                                  <input type="text" name="fullName" class="input-medium" value="<c:out value="${param.fullName}" />">
                                </div>
                                <a class="next" href="#page2">Next</a>
                            </div>

                            <!-- PAGE 2 -->
                            <div class="currentpage">
                              <p class="pagetitle">Page 2</p>
                                <div class="boxcontent">
                                  <input type="text" name="dateOfBirth" class="input-medium" value="<c:out value="${param.dateOfBirth}" />">
                                </div>
                                <a class="next" href="#page3">Next</a>
                            </div>

                            <!-- PAGE 3 -->
                            <div class="currentpage">
                              <p class="pagetitle">Page 3</p>
                                <div class="boxcontent">
                                  <input type="text" name="sex" class="input-medium" value="<c:out value="${param.sex}" />">
                                </div>
                                <a class="next" href="#page4">Next</a>
                            </div>

                            <!-- PAGE 4 -->
                            <div class="currentpage">
                              <p class="pagetitle">Page 4</p>
                                <div class="boxcontent">
                                  <input type="text" name="email" class="input-medium" value="<c:out value="${param.email}" />">
                                </div>
                                <a class="next" href="#page5">Next</a>
                            </div>

                            <!-- PAGE 5 -->
                            <div class="currentpage">
                              <p class="pagetitle">Page 5</p>
                                <div class="boxcontent">
                                  <input type="text" name="phoneNumber" class="input-medium" value="<c:out value="${param.phoneNumber}" />">
                                </div>
                                <a class="next" href="#page6">Next</a>
                            </div>

                            <!-- PAGE 6 -->
                            <div class="currentpage">
                              <p class="pagetitle">Page 6</p>
                                <div class="boxcontent">
                                  <select type="text" name="occupation" class="input-medium" value="<c:out value="${param.occupation}" />">
                                  <option value = "Developer">Developer</option>
                                  <option value = "3D Artist">3D Artist</option>
                                  <option value = "Graphic Designer">Graphic Designer</option>
                                  <option value = "Audio">Audio</option>
                                  </select>
                                  <button type="submit" action="/insert">Insert user</button>
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
  </div>


<div class="footer"></div>
</div><!-- Container-->
</body>
</html>