<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="../../css/content.css" />
<jsp:include page="../Header_Java.jsp" />
<title>cHAPTER 16 wHAT  IS  A  mEMORY  mODEL AND  wHY  WOULD  i  wANT  oNE</title>
<% session.setAttribute("key","16_");%>
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
<button class="accordion">wHAT  IS  A  mEMORY  mODEL AND  wHY  WOULD  i  wANT  oNE</button>
<div class="panel">
<p><a href="../chapter16/16_1whatisamemorymodelandwhywouldiwantone.jsp">wHAT  IS  A  mEMORY  mODEL AND  wHY  WOULD  i  wANT  oNE</a></p></div>
<button class="accordion">pUBLICATION  sUMMARY</button>
<div class="panel">
<p><a href="../chapter16/16_2publicationsummary.jsp">pUBLICATION  sUMMARY</a></p></div>

</td>
<td>
<div id="post">
<h3>cHAPTER 16 wHAT  IS  A  mEMORY  mODEL AND  wHY  WOULD  i  wANT  oNE</h3>
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
<a href="../chapter15/15_4nonblockingalgorithmssummary.jsp"> << Previous</a>
<a href="../TableOfContentJava.jsp"> TOC </a>
<a href="../chapter16/16_2publicationsummary.jsp">Next >> </a>
<jsp:include page="../footer.html" />
</html>
