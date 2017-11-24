<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="../../css/content.css" />
<jsp:include page="../Header_Java.jsp" />
<title>cHAPTER 12 tESTING  FOR  pERFORMANCE</title>
<% session.setAttribute("key","12_2");%>
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
<button class="accordion">tESTING  FOR  cORRECTNESS</button>
<div class="panel">
<p><a href="../chapter12/12_1testingforcorrectness.jsp">tESTING  FOR  cORRECTNESS</a></p></div>
<button class="accordion">tESTING  FOR  pERFORMANCE</button>
<div class="panel">
<p><a href="../chapter12/12_2testingforperformance.jsp">tESTING  FOR  pERFORMANCE</a></p></div>
<button class="accordion">aVOIDING  pERFORMANCE  tESTING  pITFALLS</button>
<div class="panel">
<p><a href="../chapter12/12_3avoidingperformancetestingpitfalls.jsp">aVOIDING  pERFORMANCE  tESTING  pITFALLS</a></p></div>
<button class="accordion">cOMPLEMENTARY  tESTING  aPPROACHES</button>
<div class="panel">
<p><a href="../chapter12/12_4complementarytestingapproaches.jsp">cOMPLEMENTARY  tESTING  aPPROACHES</a></p></div>

</td>
<td>
<div id="post">
<h3>cHAPTER 12 tESTING  FOR  pERFORMANCE</h3>
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
<a href="../chapter12/12_1testingforcorrectness.jsp"> << Previous</a>
<a href="../TableOfContentJava.jsp"> TOC </a>
<a href="../chapter12/12_3avoidingperformancetestingpitfalls.jsp">Next >> </a>
<jsp:include page="../footer.html" />
</html>
