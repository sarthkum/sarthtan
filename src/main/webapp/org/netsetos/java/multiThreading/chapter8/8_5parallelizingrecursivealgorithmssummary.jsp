<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="../../css/content.css" />
<jsp:include page="../Header_Java.jsp" />
<title>cHAPTER 8 pARALLELIZING  rECURSIVE  aLGORITHMS  sUMMARY</title>
<% session.setAttribute("key","8_5");%>
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
<button class="accordion">iMPLICIT  cOUPLINGS  bETWEEN  tASKS  AND  eXECUTION  pOLICIES</button>
<div class="panel">
<p><a href="../chapter8/8_1implicitcouplingsbetweentasksandexecutionpolicies.jsp">iMPLICIT  cOUPLINGS  bETWEEN  tASKS  AND  eXECUTION  pOLICIES</a></p></div>
<button class="accordion">sIZING  tHREAD  pOOLS</button>
<div class="panel">
<p><a href="../chapter8/8_2sizingthreadpools.jsp">sIZING  tHREAD  pOOLS</a></p></div>
<button class="accordion">cONFIGURING  tHREADpOOLeXECUTOR</button>
<div class="panel">
<p><a href="../chapter8/8_3configuringthreadpoolexecutor.jsp">cONFIGURING  tHREADpOOLeXECUTOR</a></p></div>
<button class="accordion">eXTENDING  tHREADpOOLeXECUTOR</button>
<div class="panel">
<p><a href="../chapter8/8_4extendingthreadpoolexecutor.jsp">eXTENDING  tHREADpOOLeXECUTOR</a></p></div>
<button class="accordion">pARALLELIZING  rECURSIVE  aLGORITHMS  sUMMARY</button>
<div class="panel">
<p><a href="../chapter8/8_5parallelizingrecursivealgorithmssummary.jsp">pARALLELIZING  rECURSIVE  aLGORITHMS  sUMMARY</a></p></div>

</td>
<td>
<div id="post">
<h3>cHAPTER 8 pARALLELIZING  rECURSIVE  aLGORITHMS  sUMMARY</h3>
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
<a href="../chapter8/8_4extendingthreadpoolexecutor.jsp"> << Previous</a>
<a href="../TableOfContentJava.jsp"> TOC </a>
<a href="../chapter9/9_1whyareguissinglethreaded.jsp">Next >> </a>
<jsp:include page="../footer.html" />
</html>
