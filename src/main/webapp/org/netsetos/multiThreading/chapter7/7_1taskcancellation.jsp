<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="../../css/content.css" />
<jsp:include page="../Header_Java.jsp" />
<title>cHAPTER 7 tASK  cANCELLATION</title>
<% session.setAttribute("key","7_");%>
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
<button class="accordion">tASK  cANCELLATION</button>
<div class="panel">
<p><a href="../chapter7/7_1taskcancellation.jsp">tASK  cANCELLATION</a></p></div>
<button class="accordion">sTOPPING  A  tHREAD  BASED  sERVICE</button>
<div class="panel">
<p><a href="../chapter7/7_2stoppingathreadbasedservice.jsp">sTOPPING  A  tHREAD  BASED  sERVICE</a></p></div>
<button class="accordion">hANDLING  aBNORMAL  tHREAD  tERMINATION</button>
<div class="panel">
<p><a href="../chapter7/7_3handlingabnormalthreadtermination.jsp">hANDLING  aBNORMAL  tHREAD  tERMINATION</a></p></div>
<button class="accordion">jvm  sHUTDOWN  sUMMARY</button>
<div class="panel">
<p><a href="../chapter7/7_4jvmshutdownsummary.jsp">jvm  sHUTDOWN  sUMMARY</a></p></div>

</td>
<td>
<div id="post">
<h3>cHAPTER 7 tASK  cANCELLATION</h3>
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
<a href="../chapter6/6_3findingexploitableparallelismsummary.jsp"> << Previous</a>
<a href="../TableOfContentJava.jsp"> TOC </a>
<a href="../chapter7/7_2stoppingathreadbasedservice.jsp">Next >> </a>
<jsp:include page="../footer.html" />
</html>
