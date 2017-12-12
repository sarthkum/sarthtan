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
<p>So far we have focused on ensuring that an object not be published, such as when it is supposed to be confined to a thread or within other object . Of course  sometimes we do want to share objects across objects across threads, and in this case we must to it safely. Unfortunately, simply storing a reference to an object into a public field </p> 

 

<pre> 

Public Holder holder; 

 

Public void initialize(){ 

Holder = new Holder(67); 

} 

</pre> 

 

<h3>Improper Publication : When Good Objects Go Bad</h3> 

 

<p>You cannot rely on the  integrity of partially constructed objects. An observing thread could see the object in an inconsistent state, and then latter see its state suddenly change, even though it has not been modified since publication. In fact , if the Holder in below code is published using the unsafe publication idiom in above code and a thread other than the publishing thread were to call assertSanity, it could throw AssertionError</p> 

 

<pre> 

public class Holder { 

    private int n; 

     

    public Holder(int n) { 

        this.n=n; 

    } 

    public void assertSanity(){ 

        if(n!=n){ 

            throw new AssertionError("This statement is false"); 

        } 

    } 

     

} 

 

</pre> 

 

<p>Because synchronization was not used to make Holder visible to other thread we say the Holder was not properly published. Two things can go wrong with improperly published objects. Other threads could see a stale value for the holder field and thus see a null reference or other older value even though a value has been placed in holder , but far worse other thread could see an up to date value for the holder reference but stale values for the state of Holder [While it may seem that field values set in a constructor are the first values written to the field  and therefore that there are no older value to see as state value, the Object constructor first writes the default value  to all fields before subclass constructor runs].</p> 

 

<p>To make things even less predictable , a thread may see a stale value the first time it reads a field and than a more update value the next time, which is why assertSanity can throw AssertionError </p> 

 

 

<p>Immutable Object and Initialization Safety</p> 

 

<p>Because immutable objects are so important , the JavaMemory Model offers a special gurantee of initialization safety for sharing immutable objects . As we have seen that an object reference become visible to another thread does not necessarily mean that the state of that object is visible to the consuming thread can see . In order to guarantee a consistent view of the objects state synchronization is needed </p> 

 

<p>Immutable objects, on the other hand, can be safely accessed even when synchronization is not used to publish the object reference. For this guarantee of initialization safety to hold all of the requirement for immutability must be met un modifiable state , all fields are final and proper construction.</p> 

 

<h3>Safe Publication idioms </h3> 

 

<p>Objects that are not immutable should be safely published , which usually entails synchronization by both the publishing and the consuming thread. For the moment lets focus on ensuring that the consuming thread can see the object in its apublished state </p> 

 

<p>To publish an object safely , both the reference to the object and the objects state must be made visible to other threads at the same time. A properly constructed object can be safely published.</p> 

 

<p>Initializing an object reference from a static initializer </p> 

<ol> 

<li>Storing a reference to it in volatile field or Atomic reference</li> 

<li>Storing a reference to it into a final field of a properly constructed object </li> 

<li>Storing a reference to it into a field that is properly guarded by a lock</li> 

</ol> 

 

<p>The internal synchronization in thread safe collections means that placing an object in a thread safe collection such as a Vector or synchronizedList, fulfills the last of these requirements. If thread A places object X in a thread safe collection and thread B subsequently retreives it , B is guranteed to see the state of X as A left it, even though the application code that hand X off in this manner has no explicit synchronization. The thread safe library collection offers the following safe publication guarantees, </p> 

 

<p>Placing a key or value in a Hashtable, synchronizedMap, or Concurrent-Map safely publishes it to  

any thread that retrieves it from the Map (whether directly or via an iterator);</p> 

 

<p>Placing an element in a Vector, CopyOnWriteArrayList, CopyOnWrite-ArraySet, synchronizedList, or synchronizedSet safely publishes it to any thread that retrieves it from the collection;</p> 

 

<p>Placing an element on a BlockingQueue or a ConcurrentLinkedQueue safely publishes it to any thread that retrieves it from the queue.</p> 

 

<p>Other handoff mechanism in the class library (such as Future and exchanger) also constitute safe publications we will identify these as they are introduced.</p> 

 

<p>Using an static initializer is often easiest and safest way to publish object that can be statically constructed</p> 

 

<pre>public static Holder holder = new Holder(42);</pre> 

 

<p>Static initializer are executed by the JVM at class initialization time; because of internal synchronization in the JVM , the mechanism is guaranteed to safely publish any objects initialized in this way.</p> 

 

<h3>Effectively immutable objects</h3> 

 

<p>Safe publication is sufficient for other threads to safely access objects that are not going to be modified after publication without additional synchronization. The safe publication mechanism all guarantee that the as published state of an object is visible to all accessing threads as soon as the reference to it is visible and if   that state is not going to be changed again this is sufficient to ensure that any access is safe.</p> 

 

<p>Objects that are not technically immutable, but whose state will not be modified after publication are called effectively mutable. They do not need to meet the strict definition of immutablity they merely need to be treated by the program as if they are immutable after they are published. </p> 

 

<p>For example Date is mutable but if you use it as if it were immutable you may be able to eliminate the locking that would otherwise be required when sharing a Date across thread. Suppose you want to maintain a Map storing the last login time of each user.</p> 

 

 

<pre>public Map<String,Date> lastLogin  = Collections.synchronizedMap(new HashMap<String,Date>());</pre> 

 

<p>If the Date values are not modified after they are placed in the Map, then the synchronization in the synchronizedMap implementation is sufficient to publish the Date values safely, and no additional synchronization is needed when accessing them.</p> 

 

 

<h3>Mutable Objects</h3> 

 

<p>If an object may be modified after construction , Safe publication ensures only the visibility of the as published state . Synchronization must be used not only to publish a mutable object , but also every time the object is accessed to ensure visibility of subsequent modification. To share mutable object safely , they must be safely published and be either thread  safe or guarded by a lock</p> 

 

<p>The publication requirement for an object depends on its mutablility</p> 

 

<ol> 

<li>Immutable objects can be published through any mechanism</li> 

<li>Effectively immutable object must be safely published </li> 

<li>Mutable objects must be safely published , and must be either thread safe or guarded by a lock</li> 

</ol> 

 

<h3>Sharing object Safely</h3> 

 

 

<p>Whenever you acquire a reference to an object you should know what you are allowed to do with it. Do you need to acquire a lock before using it . Are you allowed to modify its state or only to read it ? Many concurrency errors stem from failing to understand these "rule of engagement" for a shared object. When you publish an object you should document how the object can be accessed</p> 

 

<p>The most useful policies for using and sharing objects in a concurrent program </p> 

 

<p>Thread confinement</p>  

<p>A thread confined object is owned exclusively by and confined to one thread and can be modified by its owning thread</p> 

 

<p>Shared read-only A shared read-only object can be accessed concurrently by multiple thread without additional synchronization but cannot be modifed by any thread. Shared read only object includes immutable and effectivley immutable objects </p> 

 

<p>Shared thread safe </p> 

 

<p>A thread safe objects performs synchronization internally , so multiple threads can freely access it through it public interface without further synchronization</p> 

 

<p>Guarded</p> 

 

<p>A guarded object can be accessed only with a specific lock held .Guarded objects include those that are encapsulated within other thread safe objects that are known to be guarded by specific lock.></p> 
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
