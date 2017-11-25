<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>

<html>
<head>
<title>Table of Content</title>
<link rel="stylesheet" type="text/css" href="/../css/contenttoc.css" />
<jsp:include page="./Header_Java.jsp" />
<% 
// Grab the variables from the form.
  String topic_id = (String)session.getAttribute("topic_id1"); 
%>
</head>
<body>
<table>
<tr>
<td width=20% height=100% valign="top" bgcolor="#eaeaea">
<div id="content">
<h6>Environment Setup in java NO <%=topic_id%></h6>
<h6>An Introduction to Java</h6>
<h6>Fundamental Programming Structures in Java</h6>
<h6>Objects and Classes</h6>
<h6>Inheritance</h6>
<h6>Interfaces, Lambda Expressions, and Inner Classes</h6>
<h6>Exceptions, Assertions, and Logging</h6>
<h6>Generic Programming</h6>
<h6>Collections</h6>
<h6>Graphics Programming</h6>
<h6>Event Handling</h6>
<h6>Design Pattern</h6>
<h6>Deploying Java Applications</h6>
<h6>Concurrency</h6>
</div>
</td>
<td>
<div id="post">
<h4><a href="./chapter1/1_1averybriefhistoryofconcurrency.jsp">1.1 A   Very   Brief History of Concurrency  </a></h4>
<h4><a href="./chapter1/1_2benefitsofthreads.jsp">1.2 Benefits of Threads   </a></h4>
<h4><a href="./chapter1/1_3exploitingmultipleprocessors.jsp">1.3  Exploiting  Multiple  Processors  </a></h4>
<h4><a href="./chapter1/1_4simplicityofmodeling.jsp">1.4  Simplicity  of  Modeling  </a></h4>
<h4><a href="./chapter1/1_5simplifiedhandlingofasynchronousevents.jsp">1.5  Simplified  Handling  of  Asynchronous  Events  </a></h4>
<h4><a href="./chapter1/1_6moreresponsiveuserinterfaces.jsp">1.6  More  Responsive  User  Interfaces    </a></h4>
<h4><a href="./chapter1/1_7risksofthreads.jsp">1.7  Risks of Threads  </a></h4>
<h4><a href="./chapter1/1_9safetyhazards.jsp">1.9  Safety  Hazards  </a></h4>
<h4><a href="./chapter1/1_10livenesshazards.jsp">1.10  Liveness  Hazards  </a></h4>
<h4><a href="./chapter1/1_11performancehazards.jsp">1.11  Performance  Hazards    </a></h4>
<h4><a href="./chapter1/1_12threadsareeverywhere.jsp">1.12 Threads are Everywhere  </a></h4>
<h4><a href="./chapter2/2_1whatisthreadsafety.jsp">2.1  What  is  Thread  Safety    </a></h4>
<h4><a href="./chapter2/2_2atomicity.jsp">2.2  Atomicity  </a></h4>
<h4><a href="./chapter2/2_3locking.jsp">2.3  Locking  </a></h4>
<h4><a href="./chapter2/2_4guardingstatewithlocks.jsp">2.4  Guarding  State  with  Locks  </a></h4>
<h4><a href="./chapter2/2_5livenessandperformance.jsp">2.5  Liveness  and  Performance     </a></h4>
<h4><a href="./chapter3/3_1visibility.jsp">3.1  Visibility   </a></h4>
<h4><a href="./chapter3/3_2publicationandescape.jsp">3.2  Publication  and  Escape   </a></h4>
<h4><a href="./chapter3/3_3threadconfinement.jsp">3.3  Thread  Confinement   </a></h4>
<h4><a href="./chapter3/3_4immutability.jsp">3.4  Immutability   </a></h4>
<h4><a href="./chapter3/3_5safepublication.jsp">3.5  Safe  Publication       </a></h4>
<h4><a href="./chapter4/4_1designingathreadsafeclass.jsp">4.1  Designing  a  Thread  safe  Class   </a></h4>
<h4><a href="./chapter4/4_2instanceconfinement.jsp">4.2  Instance  Confinement   </a></h4>
<h4><a href="./chapter4/4_3delegatingthreadsafety.jsp">4.3  Delegating  Thread  Safety   </a></h4>
<h4><a href="./chapter4/4_4addingfunctionalitytoexistingthreadsafeclasses.jsp">4.4  Adding  Functionality  to  Existing  Thread  safe  Classes   </a></h4>
<h4><a href="./chapter4/4_5documentingsynchronizationpolicies.jsp">4.5  Documenting  Synchronization  Policies     </a></h4>
<h4><a href="./chapter5/5_1synchronizedcollections.jsp">5.1  Synchronized  Collections   </a></h4>
<h4><a href="./chapter5/5_2concurrentcollections.jsp">5.2  Concurrent  Collections   </a></h4>
<h4><a href="./chapter5/5_3blockingqueuesandtheproducerconsumerpattern.jsp">5.3  Blocking  Queues  and  the  Producer  consumer  Pattern   </a></h4>
<h4><a href="./chapter5/5_4blockingandinterruptiblemethods.jsp">5.4  Blocking  and  Interruptible  Methods  </a></h4>
<h4><a href="./chapter5/5_5synchronizers.jsp">5.5  Synchronizers   </a></h4>
<h4><a href="./chapter5/5_6buildinganefficientscalableresultcache.jsp">5.6  Building  an  Efficient  Scalable  Result  Cache           </a></h4>
<h4><a href="./chapter6/6_1executingtasksinthreads.jsp">6.1  Executing  Tasks  in  Threads   </a></h4>
<h4><a href="./chapter6/6_2theexecutorframework.jsp">6.2  The  Executor  Framework   </a></h4>
<h4><a href="./chapter6/6_3findingexploitableparallelismsummary.jsp">6.3  Finding  Exploitable  Parallelism  Summary        </a></h4>
<h4><a href="./chapter7/7_1taskcancellation.jsp">7.1  Task  Cancellation   </a></h4>
<h4><a href="./chapter7/7_2stoppingathreadbasedservice.jsp">7.2  Stopping  a  Thread  based  Service   </a></h4>
<h4><a href="./chapter7/7_3handlingabnormalthreadtermination.jsp">7.3  Handling  Abnormal  Thread  Termination   </a></h4>
<h4><a href="./chapter7/7_4jvmshutdownsummary.jsp">7.4  JVM  Shutdown  Summary     </a></h4>
<h4><a href="./chapter8/8_1implicitcouplingsbetweentasksandexecutionpolicies.jsp">8.1  Implicit  Couplings  Between  Tasks  and  Execution  Policies   </a></h4>
<h4><a href="./chapter8/8_2sizingthreadpools.jsp">8.2  Sizing  Thread  Pools   </a></h4>
<h4><a href="./chapter8/8_3configuringthreadpoolexecutor.jsp">8.3  Configuring  ThreadPoolExecutor   </a></h4>
<h4><a href="./chapter8/8_4extendingthreadpoolexecutor.jsp">8.4  Extending  ThreadPoolExecutor   </a></h4>
<h4><a href="./chapter8/8_5parallelizingrecursivealgorithmssummary.jsp">8.5  Parallelizing  Recursive  Algorithms  Summary     </a></h4>
<h4><a href="./chapter9/9_1whyareguissinglethreaded.jsp">9.1  Why  are  GUIs  Single  threaded    </a></h4>
<h4><a href="./chapter9/9_2shortrunningguitasks.jsp">9.2  Short  running  GUI  Tasks   </a></h4>
<h4><a href="./chapter9/9_3longrunningguitasks.jsp">9.3  Long  running  GUI  Tasks   </a></h4>
<h4><a href="./chapter9/9_4shareddatamodels.jsp">9.4  Shared  Data  Models   </a></h4>
<h4><a href="./chapter9/9_5otherformsofsinglethreadedsubsystems.jsp">9.5  Other  Forms  of  Single  threaded  Subsystems    </a></h4>
<h4><a href="./chapter10/10_1deadlock.jsp">10.1  Deadlock   </a></h4>
<h4><a href="./chapter10/10_2avoidinganddiagnosingdeadlocks.jsp">10.2  Avoiding  and  Diagnosing  Deadlocks   </a></h4>
<h4><a href="./chapter10/10_3otherlivenesshazardssummary.jsp">10.3  Other  Liveness  Hazards  Summary     </a></h4>
<h4><a href="./chapter11/11_1thinkingaboutperformance.jsp">11.1  Thinking  about  Performance   </a></h4>
<h4><a href="./chapter11/11_2amdahlslaw.jsp">11.2  Amdahl  s  Law  </a></h4>
<h4><a href="./chapter11/11_3costsintroducedbythreads.jsp">11.3  Costs  Introduced  by  Threads   </a></h4>
<h4><a href="./chapter11/11_4reducinglockcontention.jsp">11.4  Reducing  Lock  Contention   </a></h4>
<h4><a href="./chapter11/11_5examplecomparingmapperformance.jsp">11.5  Example    Comparing  Map  Performance   </a></h4>
<h4><a href="./chapter11/11_6reducingcontextswitchoverheadsummary.jsp">11.6  Reducing  Context  Switch  Overhead  Summary     </a></h4>
<h4><a href="./chapter12/12_1testingforcorrectness.jsp">12.1  Testing  for  Correctness   </a></h4>
<h4><a href="./chapter12/12_2testingforperformance.jsp">12.2  Testing  for  Performance   </a></h4>
<h4><a href="./chapter12/12_3avoidingperformancetestingpitfalls.jsp">12.3  Avoiding  Performance  Testing  Pitfalls   </a></h4>
<h4><a href="./chapter12/12_4complementarytestingapproaches.jsp">12.4  Complementary  Testing  Approaches   </a></h4>
<h4><a href="./chapter13/13_1lockandreentrantlock.jsp">13.1  Lock  and  ReentrantLock   </a></h4>
<h4><a href="./chapter13/13_2performanceconsiderations.jsp">13.2  Performance  Considerations   </a></h4>
<h4><a href="./chapter13/13_3fairnessjavaconcurrencyinpractice.jsp">13.3  Fairness   Java  Concurrency  In  Practice     </a></h4>
<h4><a href="./chapter13/13_4choosingbetweensynchronizedandreentrantlock.jsp">13.4  Choosing  Between  Synchronized  and  ReentrantLock   </a></h4>
<h4><a href="./chapter13/13_5readwritelockssummary.jsp">13.5  Read  write  Locks  Summary     </a></h4>
<h4><a href="./chapter14/14_1managingstatedependence.jsp">14.1  Managing  State  Dependence   </a></h4>
<h4><a href="./chapter14/14_2usingconditionqueues.jsp">14.2  Using  Condition  Queues   </a></h4>
<h4><a href="./chapter14/14_3explicitconditionobjects.jsp">14.3  Explicit  Condition  Objects   </a></h4>
<h4><a href="./chapter14/14_4anatomyofasynchronizer.jsp">14.4  Anatomy  of  a  Synchronizer   </a></h4>
<h4><a href="./chapter14/14_5abstractqueuedsynchronizer.jsp">14.5  AbstractQueuedSynchronizer   </a></h4>
<h4><a href="./chapter14/14_6aqsinjava_util_concurrentsynchronizerclassessummary.jsp">14.6  AQS  in  Java.util.concurrent  Synchronizer  Classes  Summary     </a></h4>
<h4>null15.1  Disadvantages  of  Locking   </a></h4>
<h4>null15.2  Hardware  Support  for  Concurrency   </a></h4>
<h4>null15.3  Atomic  Variable  Classes   </a></h4>
<h4>null15.4  Non  blocking  Algorithms  Summary     </a></h4>
<h4>null16.1  What  is  a  Memory  Model and  Why  would  I  Want  One     </a></h4>
<h4>null16.2  Publication  Summary </a></h4>
</div>
</td>

</tr>

</table>
</body>


</html>