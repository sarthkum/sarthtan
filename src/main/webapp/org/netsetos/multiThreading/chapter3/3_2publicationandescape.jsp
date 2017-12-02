<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="../../css/content.css" />
<jsp:include page="../Header_Java.jsp" />
<title>cHAPTER 3 pUBLICATION  AND  eSCAPE</title>
<% session.setAttribute("key","3_2");%>
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
<h3>cHAPTER 3 pUBLICATION  AND  eSCAPE</h3>
<p>Publishing an object means making it available to code outside it current scope, such as by storing a reference to it where other code can find it. Returning it from a non private method, or passing it to a method in another class. In many situation we want to ensure that objects and it internals are not published. </p> 

 

<p>The most blatant form of publication is to store reference in a public static field where any thread or class can see it .</p> 

 

<pre> 

publlic static Set<Secret> knownSecrets; 

 

public void initiablize(){ 

  KnownSecrets = new HashSet<Secret>(); 

} 

</pre> 

 

<p>Publishing one object may indirectly publish others. If you add a secret to the knownSecters set, you have also published that secret , because any code can iterate the Set and obtain a reference to the new Secret </p> 

 

 

<pre> 

Class UnsafeStates { 

  Private String [] states = new String [] {"AK","SK","RG"}; 

 

Public String [] getStates(){ 

  Return states; 

}  

} 

</pre> 

 

<p>Publishing state in this way is problematic because any caller can modify its content . In this case the states array has escaped its intended scope.</p> 

 

<p>Publishing an object also publishes any object referred to by its non private field .More generally , any object that is reachable from a published object by following some chain of nonprivate field references and method call has also been published.</p> 

 

<p>Passing an object to a alien method is also considered as publishing that object.</p> 

 

<p>A Final mechanism by which an object or its internal state can be published. Is to publish an inner class Instance. As shown below . When ThisEscape publishes the EventListener, It implicitly publishes the enclosing ThisEscape instance as well,because inner class instancs contain a hidden reference to the enclosing instance.</p> 

 

<pre> 

public class ThisEscape { 

    public ThisEscape(EventSource source) { 

       source.registerListener(new EventListener(){ 

           public void onEvent(){ 

               dosomething(e); 

           } 

           }); 

    } 

} 

</pre> 

 

<h3>Safe Construction Practices</h3> 

 

<p>ThisEscape illustrates an important special case of escape when the this reference escape during construction. When the inner EventListener instance is published , so is the enclosing ThisEscape instance. But an object is in a predictable , consistent only after its constructor returns. ,so publishing a object from within a constructor can publish an incompletely constructed object.</p> 

 

<p>More specifically the this reference should not escape from the thread until after the constructor returns. The this reference can be stored somewhere by the constructor so long as it is not used by another thread untill after construction.</p> 

 

 

<p>A common mistake that can let the this reference escapes during construction is to start a thread from a constructor. When an object creates a thread from its constructor, it almost always shares its this reference with the new thread, either explicitly(by passing it to constructor)  or implicitly(because the thread or runnable is the inner class of the owing object)</p> 

 

<p>The new thread might then be able to see the owing object before it is fully constructed.</p> 

 

<pre> 

public class SafeListener { 

    private final EventListener listener; 

    private SafeListener() { 

        listener = new EventListener(){ 

            public void onEvent(Event e){ 

                doSomething(); 

            } 

        }; 

         

    } 

     

    public static SafeListener newInstance(EventSource source){ 

        SafeListener safe = new SafeListener(); 

        source.registerListener(safe.listener); 

        return safe; 

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
<a href="../chapter3/3_1visibility.jsp"> << Previous</a>
<a href="../TableOfContentJava.jsp"> TOC </a>
<a href="../chapter3/3_3threadconfinement.jsp">Next >> </a>
<jsp:include page="../footer.html" />
</html>
