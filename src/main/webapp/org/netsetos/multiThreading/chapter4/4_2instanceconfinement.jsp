<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="../../css/content.css" />
<jsp:include page="../Header_Java.jsp" />
<title>cHAPTER 4 iNSTANCE  cONFINEMENT</title>
<% session.setAttribute("key","4_2");%>
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
<button class="accordion">dESIGNING  A  tHREAD  SAFE  cLASS</button>
<div class="panel">
<p><a href="../chapter4/4_1designingathreadsafeclass.jsp">dESIGNING  A  tHREAD  SAFE  cLASS</a></p></div>
<button class="accordion">iNSTANCE  cONFINEMENT</button>
<div class="panel">
<p><a href="../chapter4/4_2instanceconfinement.jsp">iNSTANCE  cONFINEMENT</a></p></div>
<button class="accordion">dELEGATING  tHREAD  sAFETY</button>
<div class="panel">
<p><a href="../chapter4/4_3delegatingthreadsafety.jsp">dELEGATING  tHREAD  sAFETY</a></p></div>
<button class="accordion">aDDING  fUNCTIONALITY  TO  eXISTING  tHREAD  SAFE  cLASSES</button>
<div class="panel">
<p><a href="../chapter4/4_4addingfunctionalitytoexistingthreadsafeclasses.jsp">aDDING  fUNCTIONALITY  TO  eXISTING  tHREAD  SAFE  cLASSES</a></p></div>
<button class="accordion">dOCUMENTING  sYNCHRONIZATION  pOLICIES</button>
<div class="panel">
<p><a href="../chapter4/4_5documentingsynchronizationpolicies.jsp">dOCUMENTING  sYNCHRONIZATION  pOLICIES</a></p></div>

</td>
<td>
<div id="post">
<h3>cHAPTER 4 iNSTANCE  cONFINEMENT</h3>
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
<a href="../chapter4/4_1designingathreadsafeclass.jsp"> << Previous</a>
<a href="../TableOfContentJava.jsp"> TOC </a>
<a href="../chapter4/4_3delegatingthreadsafety.jsp">Next >> </a>
<jsp:include page="../footer.html" />
</html>
