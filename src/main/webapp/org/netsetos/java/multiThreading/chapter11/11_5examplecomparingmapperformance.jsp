<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="../../css/content.css" />
<jsp:include page="../Header_Java.jsp" />
<title>cHAPTER 11 eXAMPLE    cOMPARING  mAP  pERFORMANCE</title>
<% session.setAttribute("key","11_5");%>
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
<button class="accordion">tHINKING  ABOUT  pERFORMANCE</button>
<div class="panel">
<p><a href="../chapter11/11_1thinkingaboutperformance.jsp">tHINKING  ABOUT  pERFORMANCE</a></p></div>
<button class="accordion">aMDAHL  S  lAW</button>
<div class="panel">
<p><a href="../chapter11/11_2amdahlslaw.jsp">aMDAHL  S  lAW</a></p></div>
<button class="accordion">cOSTS  iNTRODUCED  BY  tHREADS</button>
<div class="panel">
<p><a href="../chapter11/11_3costsintroducedbythreads.jsp">cOSTS  iNTRODUCED  BY  tHREADS</a></p></div>
<button class="accordion">rEDUCING  lOCK  cONTENTION</button>
<div class="panel">
<p><a href="../chapter11/11_4reducinglockcontention.jsp">rEDUCING  lOCK  cONTENTION</a></p></div>
<button class="accordion">eXAMPLE    cOMPARING  mAP  pERFORMANCE</button>
<div class="panel">
<p><a href="../chapter11/11_5examplecomparingmapperformance.jsp">eXAMPLE    cOMPARING  mAP  pERFORMANCE</a></p></div>
<button class="accordion">rEDUCING  cONTEXT  sWITCH  oVERHEAD  sUMMARY</button>
<div class="panel">
<p><a href="../chapter11/11_6reducingcontextswitchoverheadsummary.jsp">rEDUCING  cONTEXT  sWITCH  oVERHEAD  sUMMARY</a></p></div>

</td>
<td>
<div id="post">
<h3>cHAPTER 11 eXAMPLE    cOMPARING  mAP  pERFORMANCE</h3>
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
<a href="../chapter11/11_4reducinglockcontention.jsp"> << Previous</a>
<a href="../TableOfContentJava.jsp"> TOC </a>
<a href="../chapter11/11_6reducingcontextswitchoverheadsummary.jsp">Next >> </a>
<jsp:include page="../footer.html" />
</html>
