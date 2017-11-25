<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="../../css/content.css" />
<jsp:include page="../Header_Java.jsp" />
<title>cHAPTER 2 lOCKING</title>
<% session.setAttribute("key","2_3");%>
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
<h3>cHAPTER 2 lOCKING</h3>
<p>Just by making a class with the AtomicReference Varaible will not make a class thread safe <p> 

 

<pre> 

package jc.multi.chap2; 

  

import java.math.BigInteger; 

import java.util.concurrent.atomic.AtomicReference; 

  

public class UnsafeCachingFactorizer{ 

     

    private final AtomicReference<BigInteger> lastNumber = new AtomicReference<BigInteger>(); 

    private final AtomicReference<BigInteger []> lastFactors = new AtomicReference<BigInteger[]>(); 

     

    public void service(String req,String resp) { 

        BigInteger i = extractFromRequest(req); 

        if(i.equals(lastNumber.get())) { 

            encodeIntoResponse(resp,lastFactors.get()); 

        } 

        else { 

            BigInteger [] factors = factor(i); 

            lastNumber.set(i); 

            lastFactors.set(factors); 

            encodeIntoResponse(resp,lastFactors.get());     

        } 

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

 

 

<p>If we want to add more state to our servlet than can we do it by adding more states ? The answer is no . Suppose we want a condition that we want to add that if the number is same as the last one , So in that case we want to cache the last number.We will use the Atomic Reference for this purpose.</p> 

 

<p>Even though the Atomic reference are individually threadSafe but when they are compounded they will produce race condition </p> 

 

<p>The definition of thread safety requires that invariant be preserved regardless of timing or interleaving of operations in multiple threads.</p> 

 

<p>One invariant of the above class is that the product of the factors cached in lastFactors equals the value cached in lastNumber . One condition that should always be true is that this invariant should always hold true. When multiple variable participate in an invariant they are not independent: the value of one constrains the allowed value of the others. Thus when updating one , You must update the other in the same atomic operation.</p> 

 

<p>Things that need to be cautious is that we should take care that both should be modified simultaneously.</p> 

 

<p>To preserve state consistency, update related state variable in a single atomic operation.</p> 

 

<h3>INTRINSIC LOCKS </h3> 

 

<p>Java provide a built in locking mechanism for enforcing atomicity. The synchronized block.</p> 

 

<p>It consist of two parts</p>  

 

<ol> 

<li>A reference to an object that will serve as the lock </li> 

<li>Block of code guarded by that lock</li> 

</ol> 

 

<p>IMP Difference between the synchronized block and synchronized method</p> 

 

<p>It all over the method and whose lock is the object on which the method is being invoked </p> 

 

<pre> 

Synchronized (lock) { 

      // Access or modify shared state guard by lock 

} 

</pre> 

 

<p>Intrinsic locks in java acts as mutexes (or mutual exclusion locks), which means that at most one thread may own the lock. </p> 

 

<p>Since only one thread at a time can execute a block of code guarded by a given lock, the synchronized block guarded by the same lock. Will execute atomically with respect to one another.</p> 

 

<p>It can be think of a transaction which is indivisible and all the statement will be executed as a single indivisible unit </p> 

 

<p>No thread executing a synchronized block can see another thread in  middle of executing the same block with same lock.</p> 

 

<p>If we make the above method as synchronized than race condition will not occur now. <p> 

 

<pre> 

public class UnsafeCachingFactorizer{ 

     

    private final AtomicReference<BigInteger> lastNumber = new AtomicReference<BigInteger>(); 

    private final AtomicReference<BigInteger []> lastFactors = new AtomicReference<BigInteger[]>(); 

     

    public  syncronized void service(String req,String resp) { 

        BigInteger i = extractFromRequest(req); 

        if(i.equals(lastNumber.get())) { 

            encodeIntoResponse(resp,lastFactors.get()); 

        } 

        else { 

            BigInteger [] factors = factor(i); 

            lastNumber.set(i); 

            lastFactors.set(factors); 

            encodeIntoResponse(resp,lastFactors.get());     

        } 

    } 

</pre> 

<p>But this will take a performance hit as only one thread at a time could access it at a time .</p> 

 

 

<h3>RETRANCY</h3> 

 

<p>When a thread request a lock that is already held by another thread, the requesting thread blocks. But because intrinsic locks are reentrant , if a thread tries to acquire a lock that it already holds, the request succeeds. Reentrancy means that locks are acquired on per thread basis rather than per invocation. It is implemented by associating with each thread a acquisition count , when the count is zero lock is considered unheld. 

</p> 

<p> When a thread acquires a previously unheld lock, the JVM records the owners and sets the acquisition  count to 1 . If that same thread acquires the lock again the count is incremented and when the owing thread exists the synchronized block, the count is decremented.When the count comes to zero lock is released.</p> 

 

<p>It simplifies the encapsulation of locking behavior. </p> 

 

<p>Without Reentrant lock the simple logging class will be very difficult to implement a simple Logger class</p> 

 

 

<pre> 

package jc.multi.chap2; 

  

public class Logger { 

     

    public synchronized void applogger() { 

         

    } 

    

} 

  

class FinestLogger extends Logger { 

    public synchronized void applogger() { 

        System.out.println("Calling above class logger"); 

        super.Applogger(); 

    } 

} 

</pre> 

 

<p> 

The applogger method in both class are synchronized so both will acquire a lock before proceeding which will cause a deadlock. But because of reentrancy it will not be deadlocked </p> 
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
<a href="../chapter2/2_2atomicity.jsp"> << Previous</a>
<a href="../TableOfContentJava.jsp"> TOC </a>
<a href="../chapter2/2_4guardingstatewithlocks.jsp">Next >> </a>
<jsp:include page="../footer.html" />
</html>
