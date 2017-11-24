<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="../../css/content.css" />
<jsp:include page="../Header_Java.jsp" />
<title>cHAPTER 10 oTHER  lIVENESS  hAZARDS  sUMMARY</title>
<% session.setAttribute("key","10_3");%>
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
<button class="accordion">dEADLOCK</button>
<div class="panel">
<p><a href="../chapter10/10_1deadlock.jsp">dEADLOCK</a></p></div>
<button class="accordion">aVOIDING  AND  dIAGNOSING  dEADLOCKS</button>
<div class="panel">
<p><a href="../chapter10/10_2avoidinganddiagnosingdeadlocks.jsp">aVOIDING  AND  dIAGNOSING  dEADLOCKS</a></p></div>
<button class="accordion">oTHER  lIVENESS  hAZARDS  sUMMARY</button>
<div class="panel">
<p><a href="../chapter10/10_3otherlivenesshazardssummary.jsp">oTHER  lIVENESS  hAZARDS  sUMMARY</a></p></div>

</td>
<td>
<div id="post">
<h3>cHAPTER 10 oTHER  lIVENESS  hAZARDS  sUMMARY</h3>
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
<a href="../chapter10/10_2avoidinganddiagnosingdeadlocks.jsp"> << Previous</a>
<a href="../TableOfContentJava.jsp"> TOC </a>
<a href="../chapter11/11_1thinkingaboutperformance.jsp">Next >> </a>
<jsp:include page="../footer.html" />
</html>
