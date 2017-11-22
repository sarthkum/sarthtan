<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="../../css/content.css" />
<jsp:include page="../Header_Java.jsp" />
<title>cHAPTER 6 sPANNING tREE pROTOCOL </title>
<% session.setAttribute("key","2_1_3");%>
</head>
<div id="menu">
<ul>
  <li><a href="../TechnicalViews.jsp">Technical Views </a></li>
  <li><a href="../funWeDo.html">Fun WE</a></li>
</ul>
</div>
<body>
<script type="text/javascript" src="../../js/script.js"></script>
<table>
<tr>
<td width=20% height=100% valign="top" bgcolor="#eaeaea">
<button class="accordion">iNSTALLING THE NETWORK</button>
<div class="panel">
<p><a href="../chapter2/2_1installingthejavadevelopmentkit.jsp">iNSTALLING THE NETWORK</a></p><p><a href="../chapter2/2_1_1downloadingthejdk.jsp">dOWNLOADING THE jdk</a></p>
<p><a href="../chapter2/2_1_2settingupthejdk.jsp">sETTING UP THE Environment</a></p>
<p><a href="../chapter2/2_1_3installingsourcefilesanddocumentation.jsp">Bus Topology</a></p>
</div>
<button class="accordion">uSING THE cOMMANDlINE tOOLS</button>
<div class="panel">
<p><a href="../chapter2/2_2usingthecommandlinetools.jsp">uSING THE cOMMANDlINE tOOLS</a></p></div>
<button class="accordion">uSING AN dEVELOPMENT eNVIRONMENT</button>
<div class="panel">
<p><a href="../chapter2/2_3usinganintegrateddevelopmentenvironment.jsp">uSING AN dEVELOPMENT eNVIRONMENT</a></p></div>
<button class="accordion">Switcher</button>
<div class="panel">
<p><a href="../chapter2/2_4runningagraphicalapplication.jsp">Router</a></p></div>
<button class="accordion">Router</button>
<div class="panel">
<p><a href="../chapter2/2_5buildingandrunningapplets.jsp">Topology</a></p></div>

</td>
<td>
<div id="post">
<h3>cHAPTER 6 sPANNING tREE pROTOCOL</h3>
<p>Before studying Spanning tree protocol we need to have some information about Redundant Topology .</p>
<p><b>Redundant Topology</b></p>

<ol> 

<li>To eliminate single point of failure backup links are used.</li>
<li>This type of Network is called as redundant network.</li>
 

</ol> 

 <p> Problems faced in Redundant Topology :-</p>
 
 <ol> 
 <li>Multiple frame copies</li>
 <li>Mac address table instability.</li>
 <li>Broadcast Storms. </li>
</ol>

 <img src="img/netimg1.png"> 

<p>To overcome these problems which are known as Layer 2 switching loops were overcome by  STP(Spanning Tree protocol).</p>


<p>Now we will study about what is Spanning Tree Protocol.</p>

<p>Spanning Tree Protocol</p>

<p>Spanning-Tree Protocol (STP) prevents loops from being formed when switches or bridges are interconnected via multiple paths.
</p>

<p>Spanning-Tree Protocol implements the 802.1D IEEE algorithm by exchanging BPDU(Bridge Protocol data unit) messages with other switches to detect loops and 
then removes the loop by shutting down selected bridge interfaces</p>

<p> It uses Spanning-Tree algorithm.</p>

<p> It blocks redundant paths that could cause a loop.</p>


<img src="img/imgnet2.png"> 

<p>By making one link down   We can avoid the loops..</p>

<p>STP Terminology </p>

<p><b>Root Switch </b></p>

<p>The switch with best (lowest ) Switch ID.
-Out of all the switches in the network, one switch is elected as Root switch.This Root switch becomes the focul point of the network.</p>

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
<a href="../chapter2/2_1_2settingupthejdk.jsp"> << Previous</a>
<a href="../TableOfContentJava.jsp"> TOC </a>
<a href="../chapter2/2_2usingthecommandlinetools.jsp">Next >> </a>
<jsp:include page="../footer.html" />
</html>
