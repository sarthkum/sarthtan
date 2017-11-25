<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="../../css/content.css" />
<jsp:include page="../Header_Java.jsp" />
<title>cHAPTER 2 lIVENESS  AND  pERFORMANCE</title>
<% session.setAttribute("key","2_5");%>
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
<h3>cHAPTER 2 lIVENESS  AND  pERFORMANCE</h3>
<p>In UnsafeCachingFactorizer, we introduce some caching into our factoring servlet in the hope of improving our performance. Caching required some shared state, which in turn required synchronization to maintain the integrity of that state. But The way we used synchronization in Facorizer will make it perform badly.</p> 

 

<p>In the approach we are synchronizing the whole method with the servlet intrinsic lock.</p> 

 

<p>Because service is synchronized so only one thread may execute it at once. This subvert the intended use of the servlet that servlet are able to handle multiple request at a time . If the number enough to be factored than other user have to wait for the thread until lock is released .</p> 

 

 

<p>For this purpose we have to reduce the scope of the synchronization</p> 

 

 

<pre> 

package jc.multi.chap2; 

  

import java.math.BigInteger; 

  

  

public class CachedFactorizer{ 

     

    private BigInteger lastNumber ; 

    private  BigInteger [] lastFactors ; 

    private long hits; 

    private long cacheHits; 

    private BigInteger[] factors; 

     

    public synchronized long getHits() { 

        return hits; 

    } 

     

    public synchronized double getCachedHitRatio() { 

        return (double)cacheHits / (double)hits; 

    } 

     

    public void service(String req,String resp) { 

        BigInteger i = extractFromRequest(req); 

         

        synchronized(this) { 

            if(i.equals(lastNumber)) { 

                ++cacheHits; 

                factors = lastFactors.clone(); 

                 

            } 

        } 

         

        if(factors == null) { 

            factors = factor(i); 

            synchronized(this) { 

                lastNumber = i; 

                lastFactors = factors.clone(); 

            } 

        } 

         

         

        encodeIntoResponse(resp,factors); 

         

     

    } 

  

    private BigInteger[] factor(BigInteger i) { 

        // TODO Auto-generated method stub 

        return null; 

    } 

  

    private void encodeIntoResponse(String resp, BigInteger[] bigIntegers) { 

        // TODO Auto-generated method stub 

         

    } 

  

    private BigInteger extractFromRequest(String req) { 

        // TODO Auto-generated method stub 

        return null; 

    } 

     

  

} 

</pre> 

 

 

<p>Here we have restructured the servlet to use two separate to use two separate synchronized block, each limited to a small section</p> 

 

<p>One guards the check than act and another guards the updating of factors and lastfactors . As a bonus we have added the hit counter and added a "cache hit" counter and updating them within the initial synchronized block.BECAUSE THESE connter shared mutable state as well, we must use synchronizaton everywhere they are accessed.</p> 
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
<a href="../chapter2/2_4guardingstatewithlocks.jsp"> << Previous</a>
<a href="../TableOfContentJava.jsp"> TOC </a>
<a href="../chapter3/3_1visibility.jsp">Next >> </a>
<jsp:include page="../footer.html" />
</html>
