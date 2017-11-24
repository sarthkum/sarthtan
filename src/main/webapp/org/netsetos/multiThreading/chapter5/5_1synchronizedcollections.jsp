<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="../../css/content.css" />
<jsp:include page="../Header_Java.jsp" />
<title>cHAPTER 5 sYNCHRONIZED  cOLLECTIONS</title>
<% session.setAttribute("key","5_");%>
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
<button class="accordion">sYNCHRONIZED  cOLLECTIONS</button>
<div class="panel">
<p><a href="../chapter5/5_1synchronizedcollections.jsp">sYNCHRONIZED  cOLLECTIONS</a></p></div>
<button class="accordion">cONCURRENT  cOLLECTIONS</button>
<div class="panel">
<p><a href="../chapter5/5_2concurrentcollections.jsp">cONCURRENT  cOLLECTIONS</a></p></div>
<button class="accordion">bLOCKING  qUEUES  AND  THE  pRODUCER  CONSUMER  pATTERN</button>
<div class="panel">
<p><a href="../chapter5/5_3blockingqueuesandtheproducerconsumerpattern.jsp">bLOCKING  qUEUES  AND  THE  pRODUCER  CONSUMER  pATTERN</a></p></div>
<button class="accordion">bLOCKING  AND  iNTERRUPTIBLE  mETHODS</button>
<div class="panel">
<p><a href="../chapter5/5_4blockingandinterruptiblemethods.jsp">bLOCKING  AND  iNTERRUPTIBLE  mETHODS</a></p></div>
<button class="accordion">sYNCHRONIZERS</button>
<div class="panel">
<p><a href="../chapter5/5_5synchronizers.jsp">sYNCHRONIZERS</a></p></div>
<button class="accordion">bUILDING  AN  eFFICIENT  sCALABLE  rESULT  cACHE</button>
<div class="panel">
<p><a href="../chapter5/5_6buildinganefficientscalableresultcache.jsp">bUILDING  AN  eFFICIENT  sCALABLE  rESULT  cACHE</a></p></div>

</td>
<td>
<div id="post">
<h3>cHAPTER 5 sYNCHRONIZED  cOLLECTIONS</h3>
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
<a href="../chapter4/4_5documentingsynchronizationpolicies.jsp"> << Previous</a>
<a href="../TableOfContentJava.jsp"> TOC </a>
<a href="../chapter5/5_2concurrentcollections.jsp">Next >> </a>
<jsp:include page="../footer.html" />
</html>
