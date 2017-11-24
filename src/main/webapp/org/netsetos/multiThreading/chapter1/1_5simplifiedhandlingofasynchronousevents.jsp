<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="../../css/content.css" />
<jsp:include page="../Header_Java.jsp" />
<title>cHAPTER 1 sIMPLIFIED  hANDLING  OF  aSYNCHRONOUS  eVENTS</title>
<% session.setAttribute("key","1_5");%>
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
<button class="accordion">a   vERY   bRIEF hISTORY OF cONCURRENCY</button>
<div class="panel">
<p><a href="../chapter1/1_1averybriefhistoryofconcurrency.jsp">a   vERY   bRIEF hISTORY OF cONCURRENCY</a></p></div>
<button class="accordion">bENEFITS OF tHREADS</button>
<div class="panel">
<p><a href="../chapter1/1_2benefitsofthreads.jsp">bENEFITS OF tHREADS</a></p></div>
<button class="accordion">eXPLOITING  mULTIPLE  pROCESSORS</button>
<div class="panel">
<p><a href="../chapter1/1_3exploitingmultipleprocessors.jsp">eXPLOITING  mULTIPLE  pROCESSORS</a></p></div>
<button class="accordion">sIMPLICITY  OF  mODELING</button>
<div class="panel">
<p><a href="../chapter1/1_4simplicityofmodeling.jsp">sIMPLICITY  OF  mODELING</a></p></div>
<button class="accordion">sIMPLIFIED  hANDLING  OF  aSYNCHRONOUS  eVENTS</button>
<div class="panel">
<p><a href="../chapter1/1_5simplifiedhandlingofasynchronousevents.jsp">sIMPLIFIED  hANDLING  OF  aSYNCHRONOUS  eVENTS</a></p></div>
<button class="accordion">mORE  rESPONSIVE  uSER  iNTERFACES</button>
<div class="panel">
<p><a href="../chapter1/1_6moreresponsiveuserinterfaces.jsp">mORE  rESPONSIVE  uSER  iNTERFACES</a></p></div>
<button class="accordion">rISKS OF tHREADS</button>
<div class="panel">
<p><a href="../chapter1/1_7risksofthreads.jsp">rISKS OF tHREADS</a></p></div>
<button class="accordion">sAFETY  hAZARDS</button>
<div class="panel">
<p><a href="../chapter1/1_9safetyhazards.jsp">sAFETY  hAZARDS</a></p></div>
<button class="accordion">lIVENESS  hAZARDS</button>
<div class="panel">
<p><a href="../chapter1/1_10livenesshazards.jsp">lIVENESS  hAZARDS</a></p></div>
<button class="accordion">pERFORMANCE  hAZARDS</button>
<div class="panel">
<p><a href="../chapter1/1_11performancehazards.jsp">pERFORMANCE  hAZARDS</a></p></div>
<button class="accordion">tHREADS ARE eVERYWHERE</button>
<div class="panel">
<p><a href="../chapter1/1_12threadsareeverywhere.jsp">tHREADS ARE eVERYWHERE</a></p></div>

</td>
<td>
<div id="post">
<h3>cHAPTER 1 sIMPLIFIED  hANDLING  OF  aSYNCHRONOUS  eVENTS</h3>
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
<a href="../chapter1/1_4simplicityofmodeling.jsp"> << Previous</a>
<a href="../TableOfContentJava.jsp"> TOC </a>
<a href="../chapter1/1_6moreresponsiveuserinterfaces.jsp">Next >> </a>
<jsp:include page="../footer.html" />
</html>
