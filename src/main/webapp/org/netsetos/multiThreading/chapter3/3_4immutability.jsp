<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="../../css/content.css" />
<jsp:include page="../Header_Java.jsp" />
<title>cHAPTER 3 iMMUTABILITY</title>
<% session.setAttribute("key","3_4");%>
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
<h3>cHAPTER 3 iMMUTABILITY</h3>
<p>The other end run around the need to synchronize is to use immutable objects . Nearly all the atomicity and visibility hazards we have described so far, such as seeing stale value, losing update, or observing an object to be in an inconsistent state, have to do with the vagaries of multiple thread trying to access the same mutable state at same time . If the variable or state is immutable</p> 

 

<p>An immutable object is one whose state cannot be changed after construction . Immutable objects are inherently thread safe their invariants are established by the constructor, and if there state cannot be changed these invariants always hold</p> 

 

<p>Immutable object are always thread safe </p> 

 

<p>Immutable objects are simple. They can only be in one state which is carefully controlled by the constructor. One of the most difficult elements of program design is reasoning about the possible state of complex objects.</p> 

 

<p>Immutable objects are also safer. Passing a mutable object to untrusted code , or otherwise publishing it where untrusted code could find it , is dangerous the untrusted code might modify it state , or worse retain a reference to it and modify it state later from another thread </p> 

 

<p>Immutability is not declaring all the fields of an object final.</p> 

 

<p>An object is immutable if</p> 

 

<ol> 

<li>It state cannot be modified after construction</li> 

<li>All its field are final </li> 

</ol> 

 

<p>It is technically possible to have an immutable object without all fields being finalString is such a classbut this relies on delicate reasoning about benign data races that requires a deep understanding of the Java Memory Model. (For the curious: String lazily computes the hash code the first time hashCode is called and caches it in a nonfinal field, but this works only because that field can take on only one nondefault value that is the same every time it is computed because it is derived deterministically from immutable state. Don't try this at home.</p> 

 

<p>It is properly constructed (the this reference does not escape during construction)</p> 

 

<p>Immutable objects can still use mutable object internally to manage to manage there state , as illustrated by ThreeStooges , While the Set that stores the names is mutable, design of ThreeStooges make it impossible to modify that Set after construction. The stooges reference is final , so all object state is reached through a final field . </p> 

<p>The last requirement, proper construction , is easily met since the constructor does nothing that would cause the this reference to vecome accessible to code other than the constructor and its caller.</p> 

 

<pre> 

package jc.multi.chap3; 

  

import java.util.HashSet; 

import java.util.Set; 

  

public final class ThreeStooges { 

    private final Set<String> stoges = new HashSet<String>(); 

     

    public ThreeStooges() { 

        stoges.add("abc"); 

        stoges.add("def"); 

        stoges.add("xyz"); 

    } 

     

    public boolean isStooge(String name) { 

        return stoges.contains(name); 

    } 

  

} 

</pre> 

 

<p>Because program state changes all the time you may be tempted to think that immutable object are of limited use, but this is not the case. There is a difference between an object being immutable and reference to it being immutable . Program state stored in immutable objects can still be updated by replacing immutable objects with a new instance holding new state </p> 

 

 

<h3>Final Fields </h3> 

 

<p>Final felids can not be modified . Immutable objects can be freely accessed and shared without synchronization.</p> 

 

<p>It is a good practise to make all fields private and to make all fields final .</p> 

 

 

<h3>Example: Using Volatile to Publish Immutable Objects</h3> 

 

<p>In UnsafeCachingFactorizer we tried to use two AtomicReferences to store the the lastNumbers and lastFactors ,but this was not thread safe because we cannot fetch or update or fectch the related value atomically. Using volatile variable for these values would not be thread safe for the reason. </p> 

 

<p>The factoring servlet performs two operations that must be atomic : updating the cached result and conditionally fetching the cached factor if the cached number matches the requested number. Whenever a group of related data item must be acted on atomically, consider creating an immutable holder class for them such as OneValueCache</p> 

 

<pre> 

import java.math.BigInteger; 

  

import java.util.Arrays; 

  

public class OneValueCache { 

     

   private final BigInteger lastNumber; 

   private final BigInteger [] lastFactors ; 

    

   private OneValueCache(BigInteger i,BigInteger [] factors){ 

       this.lastNumber = i; 

       this.lastFactors = Arrays.copyOf(factors, factors.length); 

   } 

    

   public BigInteger [] getFactors(BigInteger i){ 

       if(lastNumber == null || !lastNumber.equals(i)){ 

           return null; 

       } 

       else{ 

          return Arrays.copyOf(lastFactors, lastFactors.length);  

       } 

   } 

        

} 

</pre> 

 

<p>OneValue cache would not be immutable without the copyOf calls in the constructor and getter Arrays.copyOf , clone would also work</p> 

 

<p>Race condition in accessing or updating multiple related variables can be eliminated can be eliminated by using an immutable object to hold all the variables . With a mutable holder object, you would have to use locking to ensure atomicity ; with an immutable one , once a thread acquires a reference to it, it need never worry about another thread modifying its state . If a variable are to be updated , a new holder object is created , but any thread working with previous holder still see it in consistent state </p> 

 

<p>VolatileCachedFactorizer uses a OneValueCache to store the cached number and factors. When a thread sets the volatile cache field to reference a new OneValueCache , the new cached data becomes immediately visible to other thread</p> 

 

<p>The cache related operations cannot interfere with each other because OneValueCache is immutable and the cache field is accessed only once in each of the relevant code paths. This combination of an immutable holder object for multiple state variables related by an invariant and a volatile reference used to ensure its timely visiblilty , allows Volatile cached Factorizer to be thread safe even though it does not do any explicit locking </p> 

 

 

 <pre> 

import java.math.BigInteger; 

  

public class VolatileCachedFactorizer { 

    public VolatileCachedFactorizer() { 

        super(); 

    } 

     

    public void service(String req,String resp){ 

        BigInteger i = extractFromRequest(req); 

        BigIntger []  factors =  cache.getFactors(i); 

        if(factors == null){ 

            factors = factors(i); 

            cache =  new OneValueCache(i,factors); 

        } 

        encodeIntoResponse(resp,factors); 

    } 

} 

</pre> 
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
<a href="../chapter3/3_3threadconfinement.jsp"> << Previous</a>
<a href="../TableOfContentJava.jsp"> TOC </a>
<a href="../chapter3/3_5safepublication.jsp">Next >> </a>
<jsp:include page="../footer.html" />
</html>
