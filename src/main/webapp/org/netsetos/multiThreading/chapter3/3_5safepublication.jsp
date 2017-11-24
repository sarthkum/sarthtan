<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="../../css/content.css" />
<jsp:include page="../Header_Java.jsp" />
<title>cHAPTER 3 sAFE  pUBLICATION</title>
<% session.setAttribute("key","3_5");%>
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
<button class="accordion">vISIBILITY</button>
<div class="panel">
<p><a href="../chapter3/3_1visibility.jsp">vISIBILITY</a></p></div>
<button class="accordion">pUBLICATION  AND  eSCAPE</button>
<div class="panel">
<p><a href="../chapter3/3_2publicationandescape.jsp">pUBLICATION  AND  eSCAPE</a></p></div>
<button class="accordion">tHREAD  cONFINEMENT</button>
<div class="panel">
<p><a href="../chapter3/3_3threadconfinement.jsp">tHREAD  cONFINEMENT</a></p></div>
<button class="accordion">iMMUTABILITY</button>
<div class="panel">
<p><a href="../chapter3/3_4immutability.jsp">iMMUTABILITY</a></p></div>
<button class="accordion">sAFE  pUBLICATION</button>
<div class="panel">
<p><a href="../chapter3/3_5safepublication.jsp">sAFE  pUBLICATION</a></p></div>

</td>
<td>
<div id="post">
<h3>cHAPTER 3 sAFE  pUBLICATION</h3>
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
<a href="../chapter3/3_4immutability.jsp"> << Previous</a>
<a href="../TableOfContentJava.jsp"> TOC </a>
<a href="../chapter4/4_1designingathreadsafeclass.jsp">Next >> </a>
<jsp:include page="../footer.html" />
</html>
