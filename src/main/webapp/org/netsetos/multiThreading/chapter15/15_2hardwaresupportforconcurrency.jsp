<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="../../css/content.css" />
<jsp:include page="../Header_Java.jsp" />
<title>cHAPTER 15 hARDWARE  sUPPORT  FOR  cONCURRENCY</title>
<% session.setAttribute("key","15_2");%>
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
<button class="accordion">dISADVANTAGES  OF  lOCKING</button>
<div class="panel">
<p><a href="../chapter15/15_1disadvantagesoflocking.jsp">dISADVANTAGES  OF  lOCKING</a></p></div>
<button class="accordion">hARDWARE  sUPPORT  FOR  cONCURRENCY</button>
<div class="panel">
<p><a href="../chapter15/15_2hardwaresupportforconcurrency.jsp">hARDWARE  sUPPORT  FOR  cONCURRENCY</a></p></div>
<button class="accordion">aTOMIC  vARIABLE  cLASSES</button>
<div class="panel">
<p><a href="../chapter15/15_3atomicvariableclasses.jsp">aTOMIC  vARIABLE  cLASSES</a></p></div>
<button class="accordion">nON  BLOCKING  aLGORITHMS  sUMMARY</button>
<div class="panel">
<p><a href="../chapter15/15_4nonblockingalgorithmssummary.jsp">nON  BLOCKING  aLGORITHMS  sUMMARY</a></p></div>

</td>
<td>
<div id="post">
<h3>cHAPTER 15 hARDWARE  sUPPORT  FOR  cONCURRENCY</h3>
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
<a href="../chapter15/15_1disadvantagesoflocking.jsp"> << Previous</a>
<a href="../TableOfContentJava.jsp"> TOC </a>
<a href="../chapter15/15_3atomicvariableclasses.jsp">Next >> </a>
<jsp:include page="../footer.html" />
</html>
