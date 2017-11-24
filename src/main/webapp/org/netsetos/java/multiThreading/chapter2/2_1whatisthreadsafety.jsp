<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="../../css/content.css" />
<jsp:include page="../Header_Java.jsp" />
<title>cHAPTER 2 wHAT  IS  tHREAD  sAFETY</title>
<% session.setAttribute("key","2_");%>
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
<button class="accordion">wHAT  IS  tHREAD  sAFETY</button>
<div class="panel">
<p><a href="../chapter2/2_1whatisthreadsafety.jsp">wHAT  IS  tHREAD  sAFETY</a></p></div>
<button class="accordion">aTOMICITY</button>
<div class="panel">
<p><a href="../chapter2/2_2atomicity.jsp">aTOMICITY</a></p></div>
<button class="accordion">lOCKING</button>
<div class="panel">
<p><a href="../chapter2/2_3locking.jsp">lOCKING</a></p></div>
<button class="accordion">gUARDING  sTATE  WITH  lOCKS</button>
<div class="panel">
<p><a href="../chapter2/2_4guardingstatewithlocks.jsp">gUARDING  sTATE  WITH  lOCKS</a></p></div>
<button class="accordion">lIVENESS  AND  pERFORMANCE</button>
<div class="panel">
<p><a href="../chapter2/2_5livenessandperformance.jsp">lIVENESS  AND  pERFORMANCE</a></p></div>

</td>
<td>
<div id="post">
<h3>cHAPTER 2 wHAT  IS  tHREAD  sAFETY</h3>
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
<a href="../chapter1/1_12threadsareeverywhere.jsp"> << Previous</a>
<a href="../TableOfContentJava.jsp"> TOC </a>
<a href="../chapter2/2_2atomicity.jsp">Next >> </a>
<jsp:include page="../footer.html" />
</html>
