<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="../../css/content.css" />
<jsp:include page="../Header_Java.jsp" />
<title>cHAPTER 6 tHE  eXECUTOR  fRAMEWORK</title>
<% session.setAttribute("key","6_2");%>
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
<button class="accordion">eXECUTING  tASKS  IN  tHREADS</button>
<div class="panel">
<p><a href="../chapter6/6_1executingtasksinthreads.jsp">eXECUTING  tASKS  IN  tHREADS</a></p></div>
<button class="accordion">tHE  eXECUTOR  fRAMEWORK</button>
<div class="panel">
<p><a href="../chapter6/6_2theexecutorframework.jsp">tHE  eXECUTOR  fRAMEWORK</a></p></div>
<button class="accordion">fINDING  eXPLOITABLE  pARALLELISM  sUMMARY</button>
<div class="panel">
<p><a href="../chapter6/6_3findingexploitableparallelismsummary.jsp">fINDING  eXPLOITABLE  pARALLELISM  sUMMARY</a></p></div>

</td>
<td>
<div id="post">
<h3>cHAPTER 6 tHE  eXECUTOR  fRAMEWORK</h3>
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
<a href="../chapter6/6_1executingtasksinthreads.jsp"> << Previous</a>
<a href="../TableOfContentJava.jsp"> TOC </a>
<a href="../chapter6/6_3findingexploitableparallelismsummary.jsp">Next >> </a>
<jsp:include page="../footer.html" />
</html>
