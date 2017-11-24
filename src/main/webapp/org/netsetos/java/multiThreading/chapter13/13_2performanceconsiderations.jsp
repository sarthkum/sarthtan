<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="../../css/content.css" />
<jsp:include page="../Header_Java.jsp" />
<title>cHAPTER 13 pERFORMANCE  cONSIDERATIONS</title>
<% session.setAttribute("key","13_2");%>
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
<button class="accordion">lOCK  AND  rEENTRANTlOCK</button>
<div class="panel">
<p><a href="../chapter13/13_1lockandreentrantlock.jsp">lOCK  AND  rEENTRANTlOCK</a></p></div>
<button class="accordion">pERFORMANCE  cONSIDERATIONS</button>
<div class="panel">
<p><a href="../chapter13/13_2performanceconsiderations.jsp">pERFORMANCE  cONSIDERATIONS</a></p></div>
<button class="accordion">fAIRNESS   jAVA  cONCURRENCY  iN  pRACTICE</button>
<div class="panel">
<p><a href="../chapter13/13_3fairnessjavaconcurrencyinpractice.jsp">fAIRNESS   jAVA  cONCURRENCY  iN  pRACTICE</a></p></div>
<button class="accordion">cHOOSING  bETWEEN  sYNCHRONIZED  AND  rEENTRANTlOCK</button>
<div class="panel">
<p><a href="../chapter13/13_4choosingbetweensynchronizedandreentrantlock.jsp">cHOOSING  bETWEEN  sYNCHRONIZED  AND  rEENTRANTlOCK</a></p></div>
<button class="accordion">rEAD  WRITE  lOCKS  sUMMARY</button>
<div class="panel">
<p><a href="../chapter13/13_5readwritelockssummary.jsp">rEAD  WRITE  lOCKS  sUMMARY</a></p></div>

</td>
<td>
<div id="post">
<h3>cHAPTER 13 pERFORMANCE  cONSIDERATIONS</h3>
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
<a href="../chapter13/13_1lockandreentrantlock.jsp"> << Previous</a>
<a href="../TableOfContentJava.jsp"> TOC </a>
<a href="../chapter13/13_3fairnessjavaconcurrencyinpractice.jsp">Next >> </a>
<jsp:include page="../footer.html" />
</html>
