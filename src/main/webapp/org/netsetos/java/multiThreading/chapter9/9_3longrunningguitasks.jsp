<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="../../css/content.css" />
<jsp:include page="../Header_Java.jsp" />
<title>cHAPTER 9 lONG  RUNNING  gui  tASKS</title>
<% session.setAttribute("key","9_3");%>
</head>
<div id="menu">
<ul>
  <li><a href="../TechnicalViews.jsp">Technical Views</a></li>
  <li><a href="../funWeDo.html">Fun WE</a></li>
</ul>
</div>
<body>
<script type="text/javascript" src="../../js/script.js"></script>
<table>
<tr>
<td width=20% height=100% valign="top" bgcolor="#eaeaea">
<button class="accordion">wHY  ARE  guiS  sINGLE  THREADED</button>
<div class="panel">
<p><a href="../chapter9/9_1whyareguissinglethreaded.jsp">wHY  ARE  guiS  sINGLE  THREADED</a></p></div>
<button class="accordion">sHORT  RUNNING  gui  tASKS</button>
<div class="panel">
<p><a href="../chapter9/9_2shortrunningguitasks.jsp">sHORT  RUNNING  gui  tASKS</a></p></div>
<button class="accordion">lONG  RUNNING  gui  tASKS</button>
<div class="panel">
<p><a href="../chapter9/9_3longrunningguitasks.jsp">lONG  RUNNING  gui  tASKS</a></p></div>
<button class="accordion">sHARED  dATA  mODELS</button>
<div class="panel">
<p><a href="../chapter9/9_4shareddatamodels.jsp">sHARED  dATA  mODELS</a></p></div>
<button class="accordion">oTHER  fORMS  OF  sINGLE  THREADED  sUBSYSTEMS</button>
<div class="panel">
<p><a href="../chapter9/9_5otherformsofsinglethreadedsubsystems.jsp">oTHER  fORMS  OF  sINGLE  THREADED  sUBSYSTEMS</a></p></div>

</td>
<td>
<div id="post">
<h3>cHAPTER 9 lONG  RUNNING  gui  tASKS</h3>
<jsp:include page="../status_change.jsp" />
</div>
</td>
</tr>
</table>
<script>
var acc = document.getElementsByClassName("accordion");
var i;

for (i = 0; i < acc.length; i++) {
    acc[i].onclick = function(){
        this.classList.toggle("active");
        var panel = this.nextElementSibling;
        if (panel.style.display === "block") {
            panel.style.display = "none";
        } else {
            panel.style.display = "block";
        }
    }
}
</script>

</body>
<a href="../chapter9/9_2shortrunningguitasks.jsp"> << Previous</a>
<a href="../TableOfContentJava.jsp"> TOC </a>
<a href="../chapter9/9_4shareddatamodels.jsp">Next >> </a>
<jsp:include page="../footer.html" />
</html>
