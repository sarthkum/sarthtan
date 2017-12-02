<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="../../css/content.css" />
<jsp:include page="../Header_Java.jsp" />
<title>cHAPTER 3 tHREAD  cONFINEMENT</title>
<% session.setAttribute("key","3_3");%>
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
<h3>cHAPTER 3 tHREAD  cONFINEMENT</h3>
<p>Accessing shared, mutable data requires using synchronization, one way to avoid this requirement Is to not share, If data is accessed from one thread no synchronization is needed. This technique, thread confinement , is one of the simplest ways to achieve thread safety. </p> 

 

<p>When an object is confined to a thread, such usage is automatically thread-safe even if the confined object itself is not.</p> 

 

<p>Swing uses thread confinement extensively . The swing visual component and data model are not thread safe , instead safety is achieved by confining them to the swing event dispatch thread . To use Swing properly, code running in thread other than the event thread should not access these object.(To make this easier, swing provides the invokeLater mechanism to schedule a Runnable for execution in the event thread) . Many concurrency errors in Swing application stem form improper use of these confined objects from another thread.</p> 

 

 

<p>Another common application of the thread confinement is the use of pooled JDBC (java database connectivity) Connection Objects be thread safe . In typical server application, a thread acquires a connection from the pool uses it for processing a single request and returns it.</p> 

 

<p> Since most requests, such as servlet requests or EJB calls are processed synchronously by a single thread and the pool will not dispense the same connection to another thread until it has been returned. This pattern of connection management implicitly confines the connection to that thread for the duration of the request. </p> 

 

<p>Just as the language has no mechanism for enforcing that a variable should be guarded by a lock. It has no means of confining an object to a thread . Thread confinement is an element of  yours program design that must be enforced by its implementation.</p> 

 

<p>The language and core libraries provide mechanisms that can help in maintaining thread confinement local variables and the ThreadLocal class but even with these, it is still the programmer's responsibility to ensure that thread-confined objects do not escape from their intended thread.</p>     

 

<h3>Ad-hoc Thread Confinement</h3> 

 

<p>Ad-hoc thread confinement describe when the responsibility for maintaining thread confinement falls entirely on the implementation.</p> 

 

<h3>Stack Confinement</h3> 

 

<p>Stack confinement is a special case of thread confinement in which object can only be reached through local variable. Just as encapsulation can make it easier to preserve invariants local variable can make it easier to confine objects to a thread.</p> 

 

<p>Local variable are intrinsically confined to the executing thread. They exist on the executing threads stack , which is not accessible to the other threads.</p> 

 

<pre> 

    public int loadTheArk(Collection<Animal> candidates){ 

        SortedSet<Animal> animals; 

        int numPairs = 0; 

        Animal candidate = null; 

        //animals confined to methods dont let them escape 

        animals = new TreeSet<Animal>(new SpeciesGenderComparator()); 

        animals.addAll(candidates); 

        for(Animal a:animals){ 

            if(candidate == null || !candidate.isPotentialMate(a)){ 

                candidate = a; 

            } 

            else{ 

                ark.load(new AnimalPair(candidate,a)); 

                ++numPairs; 

                candidate = null; 

            } 

        } 

        return numPairs; } 

</pre> 

 

<p>Maintaining a stack confinement for object reference requires a little more assistance from the programmer so that the reference should not escape.</p> 

 

<p>IN loadTheArk method we instantiate a TreeSet and store a reference to it  in animals. At this point , there is exactly one reference to the Set, held in a local variable and therefore confined to executing thread. However, if we were to publish a reference to the Set , the confinement would we violated and the animal would be escaped. </p> 

 

<p>Using a non-thread-safe object in a within-thread context is still thread safe. However, be careful the design requirement that the object be confined to the executing thread or the awareness that the confined object is not thread safe. Often exists in the head of the developer when coded .</p> 

 

 

<h3>ThreadLocal</h3> 

 

<p>A more formal way of maintaining thread confinement is ThreadLocal , which allows you to assosiate a per thread with a value holding object. Thread Local provides get and set accessor method that maintains a separate copy of the value for each thread that uses it, so a get will return the most recent value  passed to set from  currently executing thread.</p> 

 

<p>Thread local variables are often used to prevent sharing in design based on mutable Singletons or global variables. For Example , a single threaded application might maintain a global database connection that is initialized at startup to avoid having to pass a Connection to every method. </p> 

<p>Since JDBC connection may not be thread safe a multithreaded application that uses a global connection without additional coordination is not thread safe either. By Using a ThreadLocal to store the jdbc connection as in Connection Holder each thread will have its own connection </p> 

 

<pre> 

    private static ThreadLocal<Connection> connectionHolder = new ThreadLocal<Connection>(){ 

        public Connection initialValue(){ 

            return DriverManager.getConnection("DB_URL"); 

        } 

    }; 

     

    public static Connection getConnection(){ 

        return connectionHolder.get(); 

    } 

 

</pre> 

 

<p>This technique can also be used when a frequently used operation requires a temporary object such as a buffer and want to avoid reallocating the temporary object on each invocation. For example, before java 5.0, Integer.toString used a ThreadLocal to store the 12 byte buffer used for formatting its result rather than using a shared static buffer. (which would require locking ) or allocating a new buffer  for each invocation. </p> 

 

<p>When a thread calls ThreadLocal.get for the first time, initialValue is consulted to provide the initial value for that thread. Conceptually you can think of a ThreadLocal<T> as holding a Map<Thread,T> that stores the thread specific values, though this is not how it is actually implemented. The thread specific values are stored in the Thread object itself; when the thread terminates, the thread specific value can be garbage collected. </p> 

 

<p>If you are porting a single threaded application to multithreaded environment , you can preserve thread safety by converting shared global variables ThreadLocals if the semantics of the shared globals permit this </p> 

 

<p>ThreadLocal is widely used in implemanting application frameworks. For example, J2EE containers assosiate a transaction context with an executing thread for the duration of an EJB call . This is easily implemented by using a static Thread Local holding the transaction context when framework code needs to determine what transaction is currently running it fetches the transaction context from this thread local.  </p> 

 
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
<a href="../chapter3/3_2publicationandescape.jsp"> << Previous</a>
<a href="../TableOfContentJava.jsp"> TOC </a>
<a href="../chapter3/3_4immutability.jsp">Next >> </a>
<jsp:include page="../footer.html" />
</html>
