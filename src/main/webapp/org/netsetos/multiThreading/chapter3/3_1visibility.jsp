<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="../../css/content.css" />
<jsp:include page="../Header_Java.jsp" />
<title>cHAPTER 3 vISIBILITY</title>
<% session.setAttribute("key","3_");%>
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
<h3>cHAPTER 3 vISIBILITY</h3>
<p>Previous topic were related to managing access to shared ,mutable state. <p> 

 

<p>One important aspect of synchronization is not only about atomicity but also about the visibility. We not only want to prevent one thread from modifying the state of an object when another is using it, but also to ensure that when a thread modifies the state of an object other threads can actually see the changes that were made.</p> 

 

<p>In a single threaded environment if you write  a variable and later read it with no intervening writes, you can expect to get same value back. But in a multithreaded environment this not be the case you can see stale values. In order to ensure visibility of memory writes across threads, you must use synchronization.</p> 

 

<p>NoVisbility illustrate want can go wrong when thread shares data without synchronization</p> 

 

<pre> 

package jc.multi.chap3; 

  

public class NoVisibility { 

     

    private static boolean ready; 

    private static int number; 

     

    private static class ReaderThread extends Thread { 

        public void run() { 

            while(!ready) { 

                Thread.yield(); 

                System.out.println(number); 

                 

            } 

        } 

    } 

     

    public static void main(String ...s) { 

        new ReaderThread().start(); 

        number=42; 

        ready=true; 

    } 

  

} 

</pre> 

 

<p>NoVisibility could loop forever because the value of ready might never became visible to the reader thread. Even more strangely, NoVisibility can print 0 as because write to ready be made visible to the reader thread before the write to number, phenomena known as reordering .</p> 

 

<p>In the absence of synchronization, the compiler, processor and the runtime can do some downright wired things to the order in which operation appear to execute. </p> 

 

 

<h3>Stale Data</h3> 

 

<p>The above program shows stale data . When the reader thread examines ready, it may see an out of date value. Unless synchronization is used every time a variable is accessed it is possible to see the stale value.</p> 

 

<p>While in case of counter for website hit it might not be so bad . But in some case it would cause wrong value to print a wrong value or not terminating at all.</p> 

 

<p>MutableInteger have get and set value method which is not synchronized </p> 

 

<pre> 

package jc.multi.chap3; 

  

public class MutableInteger { 

     

    private int value; 

     

    public int get() { 

        return value; 

    } 

     

    public void set(int value) { 

        this.value=value; 

    } 

  

} 

</pre> 

 

<p>We need to make both the function as synchronized </p> 

 

<pre> 

package jc.multi.chap3; 

  

public class SynchronizedInteger { 

     

    private int value; 

     

    public synchronized int get() { 

        return value; 

    } 

     

    public synchronized void set(int value) { 

        this.value=value; 

    } 

  

} 

</pre> 

 

<h3>Nonatomic 64-bit operations</h3> 

 

<p>When a thread reads a variable without synchronization, it may see a stale value but atleast it sees a value that is actually placed by some thread rather than some random value. This safety is called out of thin air safety.</p> 

 

<p>out of thin air safety is applied to all variables except 64 bit numeric variable (double and long) that are not declared volatile</p> 

 

<h3>Locking and visibility </h3> 

 

<p>Intrinsic locking can be used to guarantee that one thread sees the effects of another in a predictable manner, When thread A executes a synchronized and subsequently thread B enters a synchronized block guarded by the same lock, the values of variable that were visible to A prior to releasing the lock are guaranteed to be visible to B upon acquiring the lock.</p> 

 

 

 

<h3>Volatile variable</h3> 

 

<p>There is another weaker form of synchronization through declaring a variable as volatile It is like saying to compiler and runtime that operation on these variable should not be reordered with other memory operation.</p> 

 

<p>We should not rely heavily on memory visibility on volatile variable . </p> 

 

 

<p>Use volatile variables only when they simplify implementing and verifying your synchronization policy; avoid using volatile variable when verifying correctness . For visibility related things we can use volatile varaible.</p> 

 

 

<pre> 

Volatile boolean asleep; 

 

While (!asleep){ 

 CountSomeSheep(); 

} 

</pre> 

 

<p>Volatile variable are convenient but they have limitation . It should not be used when  we need to increment counter.</p> 

 

<p>You can use volatile variable only when all the following criteria are met</p> 

 

<ol> 

 

<li>Write to a variable do not depend on its current value if condition check</li> 

 

<li> variable does not participate in invariant with other state variable </li> 

 

<li> Locking is not required for any other reason while the variable is being accessed</li> 
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
<a href="../chapter2/2_5livenessandperformance.jsp"> << Previous</a>
<a href="../TableOfContentJava.jsp"> TOC </a>
<a href="../chapter3/3_2publicationandescape.jsp">Next >> </a>
<jsp:include page="../footer.html" />
</html>
