<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="../../css/content.css" />
<jsp:include page="../Header_Java.jsp" />
<title>cHAPTER 2 gUARDING  sTATE  WITH  lOCKS</title>
<% session.setAttribute("key","2_4");%>
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
<button class="accordion">wHAT  IS  tHREAD  sAFETY</button>
<div class="panel">
<p><a href="../chapter2/2_1whatisthreadsafety.jsp">wHAT  IS  tHREAD  sAFETY</a></p></div>
<button class="accordion">aTOMICITY</button>
<div class="panel">
<p><a href="../chapter2/2_2atomicity.jsp">aTOMICITY</a></p></div>
<button class="accordion">lOCKING</button>
<div class="panel">
<p><a href="../chapter2/2_3locking.jsp">lOCKING</a></p></div>
<button class="accordion">gUARDING  sTATE  WITH  lOCKS</button>
<div class="panel">
<p><a href="../chapter2/2_4guardingstatewithlocks.jsp">gUARDING  sTATE  WITH  lOCKS</a></p></div>
<button class="accordion">lIVENESS  AND  pERFORMANCE</button>
<div class="panel">
<p><a href="../chapter2/2_5livenessandperformance.jsp">lIVENESS  AND  pERFORMANCE</a></p></div>

</td>
<td>
<div id="post">
<h3>cHAPTER 2 gUARDING  sTATE  WITH  lOCKS</h3>
<p>Just wrapping compound action with a synchronized block is not sufficient; if synchronization is used to coordinate access to a variable , it is needed everywhere that variable is accessed.</p> 

 

<p>For all mutable state variable that may be accessed by more than one thread, all accesses to that variable must be performed with the same lock held. In this case, we say that the variable is guarded by that lock.</p> 

 

<p>Every shared, mutable variable should be guarded by exactly one lock. Make it clear to maintainers which lock that is.</p> 

 

<p>A common locking convention is to encapsulate all mutable state within an object and to protect it from concurrent access by synchronizing any code path that access mutable state using the object intrinsic lock like Vector class. </p>   

 

<p>Like TimerTask is a class in java that runs scheduling on its own thread. Suppose you have a downloading program and you want to add snapshot for the progress made in the program so that it can be saved in a file.</p> 

 

<p>So now your SnapShot program must be thread safe as the data or the mutable state will be accessed by two threads so not only the TimerTask code uses synchronization but also the code that is accessing the data in the main program</p> 

 

<p>For every invariant that involves more than one variable, all the variables involved  in that invariant must be guarded by the same lock.</p> 

 

<p>So why not make every method as synchronized to avoid the race condition. This might not be the solution . </p> 

 

<pre> 

If(!vector.contains(element)) 

   vector.add(element) 

</pre> 

 

<p>The above code has a race condition as they both individually are atomic operation.Syncronization can make individual operations atomic, additional locking is required when mutiple operations are combined in a compound statement </p> 

 

<p>As you have seen in the previous code making every code syncronized will lead to performance and liveness problem.</p> 
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
<a href="../chapter2/2_3locking.jsp"> << Previous</a>
<a href="../TableOfContentJava.jsp"> TOC </a>
<a href="../chapter2/2_5livenessandperformance.jsp">Next >> </a>
<jsp:include page="../footer.html" />
</html>
