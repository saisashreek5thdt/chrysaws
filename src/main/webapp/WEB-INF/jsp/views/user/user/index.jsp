
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="stag" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
        <%
        if(session.getAttribute("useremail")=="" || session.getAttribute("useremail")==null  )
        {%>
                <jsp:forward page="/" />

                <%
        }%>

<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<title>Chrysaellect M.E.E.T</title>
		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="../assets/user/bootstrap/css/bootstrap.css">
		<!-- Custom CSS -->
		<link rel="stylesheet" href="../assets/user/css/style.css">
		<link rel="stylesheet" href="../assets/user/css/user.css">
		<!-- FontAwesome CSS -->
		<link rel="stylesheet" href="../assets/user/fontsfile:///G:/Chrysaellect%20MEEt/../assets/user/images/footer/footer.png/css/all.css">
				<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"/>

			

  </head>
  <body style="overflow-x: hidden;height: 100px;">  
  <!-- NAV BAR BEGIN -->
<jsp:include page="../header/header.jsp" />
<!-- NAV BAR END -->
 <c:forEach items="${userList}" var="row">
 <c:if test="${useremail==row.email}">


	<!--SLIDER BEGIN-->
<div class="container-fluid">
	<div class="row">
		<div class="col-md-12"  id="userbg">
			<div id="userbox" >
				<img class="d-block w-100" src="../assets/user/images/user.png"      >
	  <font style="color:white; font-size:210%;position:absolute; top:30%; left:30%;text-transform:capitalize" >
${fn:toLowerCase(row.firstname)}
	  </font>
			</div>
	

		</div>
	</div>	
</div>

                    </c:if >
 </c:forEach>
	
	
	<!--SLIDER END -->





	<!--User Panel Begin-->
 
<div class="container-fluid">
		<div class="row" style="background: #EB4C5E; position: relative;bottom:70px;height:110px"> 
			<div class="col-md-12"    >
				<div class="col" style="width: 20%;float: left;">
				<br>
					<p style="color: white;font-size: 14px;font-family: Segoe UI semibold;left:10%;position: relative;line-height: .8;top:2;">
						<i>  Today </i>
					</p>
					<p style="color: white;font-size: 14px;font-family: Segoe UI semibold;left:10%;position: relative;line-height: .8;">
					.............................
					</p>

					<p style="color: white;font-size: 16px;font-family: Segoe UI semibold;left:10%;position: relative;line-height: 1.4;" id="pp">
					
						</p>
						<p style="color: white;font-size: 16px;font-family: Segoe UI semibold;left:10%;position: relative;line-height: 1.4;" id="pt">
					
						</p>
						<script>
							var d = new Date();
						var date = d.toDateString();

							var day = date.slice(0, 3);
							var dat= date.slice(3, 15);
							document.getElementById("pp").innerHTML=dat;
								if(day=="Mon"){
                            	document.getElementById("pt").innerHTML="Monday";
                                                         }

                             	if(day=="Tue"){
                         							document.getElementById("pt").innerHTML="Tuesday";
                                                      }

							if(day=="Wed"){
							document.getElementById("pt").innerHTML="Wednesday";
                             }

                             if(day=="Thu"){
                          	document.getElementById("pt").innerHTML="Thursday";
                                                          }

                                                 	if(day=="Fri"){
                                 		document.getElementById("pt").innerHTML="Friday";
                                                        }
                                                        	if(day=="Sat"){
                        							document.getElementById("pt").innerHTML="Saturday";
                                                                                     }
                              	if(day=="Sun"){
                              							document.getElementById("pt").innerHTML="Sunday";
                                                           }

							</script>
							
				
				</div>


				<div class="col" style="width: 15%;float: right;">
					<br>
					<p style="color: white;font-weight: 900;  font-size: 16px;font-family: Segoe UI semibold;left:10%;position: relative;line-height: 2;top:2;">
						User Login

						&nbsp;&nbsp;	<img src="../assets/user/images/Icon material-person-outline.png">
					</p>

					<p style="color: white;font-weight: 900;  font-size: 14px;font-family: Segoe UI semibold;left:10%;position: relative;line-height: 2;top:2;">
						Last login  23:45 Thu 20

				
					</p>
					</div>
			</div>
	    </div>
</div>
	
	<!--User Panel End-->

	<br>	<br>	


	<!--course Panel Begin-->


	<div class="row justify-content-md-center"  >

		<div class="col-md-6" id="coursechart" style="background:#fafafa">
			<div class="col-md-12" >
				<center>
				<font style="color:#FD4059;font-size: 26px;font-family: Segoe UI semibold;">
					<b>Course Chart</b>
				</font>
				</center>
			</div>
			<br>



<!--course Panel First Row Begin-->
 <c:forEach items="${userCoursesList}" var="row">

           <c:if test="${row.user==userid && row.category=='course'}">

			<div class="row justify-content-md-center" style="height: auto"  >

				<div class="col-md-2 " id="topic">

					<c:set var = "nam" value = "	${fn:toUpperCase(row.name)}" />
					<center>
							<p style="color:#FD4059;font-size:100px;font-family: Segoe UI semibold;line-height: 1;">

<c:set var = "nams" value = "${fn:substring(row.name, 0, 1)}" />
					${fn:toUpperCase(nams)}
							</p>

							<font style="color:#707070;font-size:12px;font-family: Segoe UI semibold;">
						${nam}
							</font>

					</center>

				
				<form action="/viewCourse" method="post">
				<input type="hidden" value="${row.name}" name="name">
							<button id="viewcoursebutton">View Course</button></form>
				</div>


<div class="col-md-3 " style="height: 170px;">

					<div class="col" id="coursedt">

					<center>
						Course Details
						</center>
					</div>
					<br><br>
			<div style="float: left;width: 47%;height: 100px;">
			
				<center>
					<p style="text-align:right; color:#666666;font-size:10px;font-family: Segoe UI semibold;line-height: 1.5;">
					&nbsp;	Total Modules :
						</p>
						

						<p style="text-align:right;color:#666666;font-size:10px;font-family: Segoe UI semibold;line-height: 1.5;">
						&nbsp;	Total Duration :
							</p>

						</center>
							<p style="text-align:right;color:#666666;font-size:10px;font-family: Segoe UI semibold;line-height: 1.5; " >
								&nbsp;	Instructor 1 :
								</p>


								<p style="text-align:right;color:#666666;font-size:10px;font-family: Segoe UI semibold;line-height: 1.5;">
								&nbsp;	Instructor 2 :
									</p>
					
			</div>

			<div style="float: right;width: 50%;height:100px;">
			
			
					<p style="color:#666666;font-size:10px;font-family: Segoe UI ;line-height: 1.5;font-weight: 600;">

									    <c:forEach items="${rcList}" var="rowt">
                                                          <c:if test="${row.name==rowt.coursename}">
                     	<c:set var="counts" value="${counts + 1}" />

                    </c:if>


                                    </c:forEach>
                                    2

						</p>

						<p style="color:#666666;font-size:10px;font-family: Segoe UI ;line-height: 1.5;font-weight: 600;">

						    <c:forEach items="${courseList}" var="rowt">
                                      <c:if test="${row.name==rowt.coursename}">

${rowt.days} Days
</c:if>
                   </c:forEach>

							   </p>

			    <c:forEach items="${rcList}" var="rowt">
                                                          <c:if test="${row.name==rowt.coursename}">
                               <c:forEach items="${instructorList}" var="roq">
                      <c:if test="${roq.resource==rowt.resourceid}">
                     	<c:set var="countrs" value="${countrs + 1}" />
           <c:if test="${countrs<3}">

							   <p style="color:#666666;font-size:10px;font-family: Segoe UI ;line-height: 1.5;font-weight: 600;text-transform:capitalize">
							${fn:toLowerCase(roq.name)}
							   
								   </p>

                 </c:if>
 </c:if>
                                 </c:forEach>
                 </c:if>
                                 </c:forEach>
			
			</div>
<form>  

			<button id="rqstcert" style="font-size:11px;background:#707070;cursor: not-allowed;;">

				<center>

					<img src="../assets/user/images/Icon material-chat_bubble_outline.png " style="height:70%">
					Request Certificate
					</center>
			</button>
		</form>
</div>


					
<div class="col-md-5 " id="graph">
	<div style="width: 50%;float:left;height: 170px;">
	
	<br>
			<div class="col" id="graphnum"  style="background: #FD4059;">
					<font id="graphfont" style="color: #fafafa;">
 						|||||
					</font>
		
				<div class="col" id="graphnumber">
					<center>
						20
					</center>
				</div>
			</div>

	<br>

			<div class="col" id="graphnum">
					<font id="graphfont">
						 ||||||||
					</font>
				
				<div class="col" id="graphnumber">
					<center>
						40
					</center>
				</div>
			</div>

	<br>

			<div class="col" id="graphnum">
					<font id="graphfont" >
						 ||||||||||
					</font>
				
				<div class="col" id="graphnumber">
					<center>
						60
					</center>
				</div>
			</div>
			
	<br>

	<div class="col" id="graphnum" >
			<font id="graphfont">
				 ||||||||||||
			</font>
		
		<div class="col" id="graphnumber">
			<center>
				80
			</center>
		</div>
	</div>
	
	<br>

	<div class="col" id="graphnum" >
		<font id="graphfont">
			 ||||||||||||||
		</font>
	
	<div class="col" id="graphnumber">
		<center>
		100
		</center>
	</div>

	
</div>	

<p style="color:#666666;left:10%;font-size:13px;bottom:2px;position:absolute;font-family: Segoe UI ;line-height: 1.5;font-weight: 600;">
	Course Graph
	   </p>

</div>
					<div style="width: 40%;float:right;height: 170px;">
						<br>
							<img src="../assets/user/images/graphgrou.png" style="height: 55%;">
							 <c:forEach items="${courseList}" var="rowt">
                              <c:if test="${row.name==rowt.coursename}">
							<div class="col" id="time">
							<center>


                 <c:set var="t" value="${rowt.days*2}" scope="page"/>
                 ${fn:substring(t, 0, 1)}
							</center>
							</div>
							<div class="col" id="time2">
								<center>
							  ${fn:substring(t, 1, 2)}
								</center>
								</div>
								                 </c:if>
                                                                           </c:forEach>
								<p style="color:#666666;font-size:13px;bottom:2px;position:absolute;font-family: Segoe UI ;line-height: 1.5;font-weight: 600;">
									Total Time Spent
									   </p>
					</div>
</div>
	


</div>


<br>
   </c:if >
     </c:forEach>

<!--course Panel Seclond Row End-->
<br>

		</div>


<div class="col-md-1">
<div style="height:500px"></div>
</div>


		<!--Module Begin-->
	<div class="col-md-5" id="coursechart" style="background:#fafafa">
			<div class="col-md-12">
				<center>
				<font style="color:#FD4059;font-size: 26px;font-family: Segoe UI semibold;">
					<b>Module Chart</b>
				</font>
				</center>
			</div>	<br>
		<div class="row justify-content-md-center">

			</div>

<!--course Panel First Row End-->
 <c:forEach items="${userCoursesList}" var="row">

<c:if test="${row.user==userid && row.category=='resource'}">




			<div class="row justify-content-md-center" style="height: auto;" >

				<div class="col-md-3 " id="topic" style="background:#FFF3BA">


					<center>
							<p style="color:#FD4059;font-size:100px;font-family: Segoe UI semibold;line-height: 1;">
							<c:set var = "nams" value = "${fn:substring(row.name, 0, 1)}" />
                            					${fn:toUpperCase(nams)}

							</p>

							<font style="color:#707070;font-size:12px;font-family: Segoe UI semibold;">
						${fn:toUpperCase(row.name)}
							</font>



					</center>


				<form action="/viewResources" method="post">
				<input type="hidden" value="${row.name}" name="name">
							<button id="viewcoursebutton">View Module</button></form>
				</div>


<div class="col-md-6 " style="height: 170px;">

					<div class="col" id="coursedt">

					<center>
						Module Details
						</center>
					</div>
					<br><br>
			<div style="float: left;width: 47%;height: 100px;">

				<center>
					<p style="text-align:right; color:#666666;font-size:13px;font-family: Segoe UI semibold;line-height: 2.5;">
					&nbsp;	Total Modules :
						</p>




						</center>
							<p style="text-align:right;color:#666666;font-size:13px;font-family: Segoe UI semibold;line-height: 2.5; " >
								&nbsp;	Instructor 1 :
								</p>


								<p style="text-align:right;color:#666666;font-size:13px;font-family: Segoe UI semibold;line-height: 2.5;">
								&nbsp;	Instructor 2 :
									</p>

			</div>

			<div style="float: right;width: 50%;height:100px">


					<p style="color:#666666;font-size:13px;font-family: Segoe UI ;line-height: 2.5;font-weight: 600;">
					 01

						</p>



					            <c:forEach items="${instructorList}" var="roq">
                                          <c:if test="${roq.resource==row.name}">
                                         	<c:set var="countrss" value="${countrss + 1}" />
                               <c:if test="${countrss<3}">

                    								   <p style="color:#666666;text-transform:capitalize; font-size:13px;font-family: Segoe UI ;line-height: 2.5;font-weight: 600;">


                    							${fn:toLowerCase(roq.name)}

                    								   </p>

                                     </c:if>
                     </c:if>
                                                     </c:forEach>


			</div>

</div>



<div class="col-md-2 " >

</div>



</div>

		<br><br>

           </c:if >
             </c:forEach>





		<!--course Calender End-->

	</div></div>

	<!--course Panel end-->

	<br>
	<br>

		<!--Notification and Assignment Section Begin-->
	<div class="col-md-12" >
	<div class="row justify-content-md-center" >
			<div class="col-md-5" id="Notification" >
				<!--Notification Begin-->
				<div class="col-md-12" style="overflow-x:scroll;height:500px">
					<center>
					<font style="color:#FD4059;font-size: 26px;font-family: Segoe UI semibold;">
						<b>Notifications</b>
					</font>
</center>

					<br>
					<br>





							<center>
<i> Waiting for Notifications..</i>
									</center>

								

													   

														   
					   
					 

						   

					</center>
				</div>
					<!--Notification End-->
			
			</div>
	
			<div class="col-md-6" id="assignment">
				<div class="row justify-content-md-center" > 



					<!--Assignment Begin-->
					<div class="col-md-10" id="assignmentin">
						<br><br><br>
							<div class="col" style="width:65%;float: left;height:400px">
								<font style="color:#FD4059;font-size: 26px;font-family: Segoe UI semibold;">
									<b>Submit Assignment</b>
								</font><br>
								<select class="form-control form-control-lg" id="selbox" style="background: white;height: 40px;">
									<option >select subject</option>
									<option>Select Course</option>
									<option>Select Course</option>
								  </select>
								  <br>	<br>
								  


								  <font style="color:#FD4059;font-size: 26px;font-family: Segoe UI semibold;">
									<b>Take Assessments</b>
								</font><br>
			<select class="form-control form-control-lg" id="selboxs" style="background: white;height: 40px;font-size:14px" onchange="go()">

									 <c:forEach items="${userCoursesList}" var="row">

                                               <c:if test="${row.user==userid && row.category=='course'}">
					 <c:forEach items="${assessList}" var="rowt">
      <c:if test="${row.name==rowt.course}">
									<option value="${rowt.file}">${rowt.title} ${rowt.course}</option>
	</c:if>
									</c:forEach>
									</c:if>
									</c:forEach>
								  </select>
								  <br>	<br>

<script>
function go(){
var x= document.getElementById("selboxs").value;
if(x!=""){
  window.open("assets/uploads/assessments/"+x);
  }
document.getElementById("file2").value=x;
}
</script>

								  <font style="color:#FD4059;font-size: 26px;font-family: Segoe UI semibold;">
									<b>Join Discussion</b>
								</font><br>
								<select class="form-control form-control-lg" id="selbox" style="background: white;height: 40px;">
									<option >select subject</option>
									<option>Select Course</option>
									<option>Select Course</option>
								  </select>
								  <br>	<br>
							</div>
							<div class="col" style="width:30%;float: right;height:350px">
								<br>	
								<form>
										<button id="uploadbut">

										<img src="../assets/user/images/Icon awesome-upload.png" style="height: 40%;">	Upload
										</button>

								</form>
								<br>   <br><br>  <br>

  <c:if test="${not  empty  warn}">
                                  <script>
                                  alert("Successfully Uploaded");
                                  </script>

                                                      </c:if >
								<form action="/createAssessmentfile" method="post" enctype="multipart/form-data" id="form1">
<input type="hidden" required id="file2" name="file2" required>
<input type="hidden"  name="userid" value="${userid}">
<input type="hidden"  name="user" value="${useremail}">
	 <div class="custom-file" style="width:100px;" >
             	<input type="file" onchange="sub()" class="custom-file-input"  name="image" required id="authorImage"  onchange="return fileValidation()" >
                      	<label  style="width:100px;height:50px;background:#FD4059" class="custom-file-label" for="customFile" style="font-size:12px">  </label>
                           	</div>

							</form>

<script>

window.onload = function() {
var x= document.getElementById("selboxs").value;
  document.getElementById("file2").value=x;
};
function sub()
{
document.getElementById("form1").submit();

}


</script>

							<br>   <br><br>  


							<form>
								<button id="uploadbut">

								<img src="../assets/user/images/Icon open-chat.png" style="height: 40%;">	Join
								</button>

						</form>
								</div>
					</div>


						<!--Assignment End-->
				</div>
	
			</div>
			
	</div>
	</div>
		<!--Notification and Assignment Section  End-->

		<br><br>


		

		<!--Resume Section Begin-->

	<div class="row justify-content-md-center" > 
			<div class="col-md-11" id="resume">
			<!--Inbox Section Begin-->


					<div class="col" style="width: 43%;height: 500px;float: left;">

						<br><br>
							<div class="col-md-12" style="height:70px;">

						<div class="col" style="width:60%;height:40px; float: left;">
							<p style="color:#FAFAFA;font-size:15px;font-family: Segoe UI ;line-height: 2.4;font-weight: 600;">
								<a href="#" style="color:#FAFAFA">  
								<img src="../assets/user/images/Icon feather-inbox.png" style="height:25px">
								Request to view your resume from ABC School.</a>
								   </p>
						</div>


						<div class="col" style="width:20%;height:40px; float: left;">
						<button id="inboxbut">Allow</button>
						
						</div>
							<div class="col" style="width:20%;height:40px; float: left;">
								<button id="inboxbut">Deny</button>
							</div>


							</div>


							<div class="col-md-12" style="height:70px;">

								<div class="col" style="width:60%;height:40px; float: left;">
									<p style="color:#FAFAFA;font-size:15px;font-family: Segoe UI ;line-height: 2.4;font-weight: 600;">
										<a href="#" style="color:#FAFAFA">  
										<img src="../assets/user/images/Icon feather-inbox.png" style="height:25px">
										Request to view your resume from ABC School.</a>
										   </p>
								</div>
		
								
								<div class="col" style="width:20%;height:40px; float: left;">
								<button id="inboxbut">Allow</button>
								
								</div>
									<div class="col" style="width:20%;height:40px; float: left;">
										<button id="inboxbut">Deny</button>
									</div>
		
		
									</div>
		


									<div class="col-md-12" style="height:70px;">

										<div class="col" style="width:60%;height:40px; float: left;">
											<p style="color:#FAFAFA;font-size:15px;font-family: Segoe UI ;line-height: 2.4;font-weight: 600;">
												<a href="#" style="color:#FAFAFA">  
												<img src="../assets/user/images/Icon feather-inbox.png" style="height:25px">
												Request to view your resume from ABC School.</a>
												   </p>
										</div>
				
										
										<div class="col" style="width:20%;height:40px; float: left;">
										<button id="inboxbut">Allow</button>
										
										</div>
											<div class="col" style="width:20%;height:40px; float: left;">
												<button id="inboxbut">Deny</button>
											</div>
				
				
											</div>
		
											

											<div class="col-md-12" style="height:70px;">

												<div class="col" style="width:60%;height:40px; float: left;">
													<p style="color:#FAFAFA;font-size:15px;font-family: Segoe UI ;line-height: 2.4;font-weight: 600;">
														<a href="#" style="color:#FAFAFA">  
														<img src="../assets/user/images/Icon feather-inbox.png" style="height:25px">
														Request to view your resume from ABC School.</a>
														   </p>
												</div>
						
												
												<div class="col" style="width:20%;height:40px; float: left;">
												<button id="inboxbut">Allow</button>
												
												</div>
													<div class="col" style="width:20%;height:40px; float: left;">
														<button id="inboxbut">Deny</button>
													</div>
						
						
													</div>
						



					</div>

					<div class="col" style="width: 57%;height: 500px;float: right;">
						<br>
				<center>

					<font style="color:#FD4059;font-size: 26px;font-family: Segoe UI semibold;">
						<b>Resume</b>
					</font><br>
					<br><br>
					<font style="color:#29245D;font-size: 27px;font-family: Segoe UI semibold;">
						<img src="../assets/user/images/Icon open-document.png" >
						<b>Document Name.docx</b>
					</font>
				</center>
<br><br>

						<div class="col" id="circle">
					<div  class="col" id="inbox">
							<p style="position: relative;top:45%;left: 40%;color: #29245D;font-family: Segoe UI semibold;">
									inbox
								</p>
					</div>
								<div  class="col" id="sent">
										<p style="position: relative;top:35%;left: 30%;color: #29245D;font-family: Segoe UI semibold;">
											<a href="#" style="color:#29245D">  Sent </a>
										</p>
								</div>


						</div>

						
						<div class="col" id="resumeimg">
						<img src="../assets/user/images/resumeimg.png" style="width:90%;height:90%">
														</div>
					</div>

				<!--Inbox Section End-->
				
			</div>
	
		
			
	</div>
	
		<!--Resume Section  End-->
		
		<br>
		<br>

		
		<!--Browse School Explore Section Begin-->

	<div class="row justify-content-md-center" > 
			<div class="col-md-6"  >
	<form action="/course">
				<button id="browse">
				<img src="../assets/user/images/browse.png" style="height: 40%;">	Browse Other Courses
					</button>
</form>
					<br>	<br>
					<button id="explore">
						Explore Schools
							</button>
			</div>
	

	<!--Browse End-->

		<!-- Explore Section Begin-->

			<div class="col-md-5" id="skillstab">
	
				<div class="col" style="width: 30%;float: right;">
					<br>
					<form action="/writeblog">
					<button id="explore" style="height:40px">
						Write a Blog !
							</button>
						</form>

						<br>

			<form action="/blog">
							<button id="explore" style="height:40px">
								All Blogs
									</button>
								</form>
								<br>


								<p style="color:#707070;font-size:30px;width:40%;font-family: Segoe UI ;line-height: 1.4;font-weight: 600;text-align: right;">
									Upgrade
									your 
									SKILLS
				
									   </p>
							
			</div>
			</div>

					<!-- Explore Section End-->
			
	</div>
	
		<!--Browse School Explore  Section  End-->

		<br>

<section id="ftr">
<!--FOOTER BEGIN -->

<jsp:include page="../footer/footer.jsp" />

<!--FOOTER END -->
</section>

		<!-- Bootstrap JS -->
		<script src="../assets/user/bootstrap/js/jquery-3.5.1.slim.js"></script>
		<script src="../assets/user/bootstrap/js/popper.js"></script>
		<script src="../assets/user/bootstrap/js/bootstrap.js"></script>
		
		<script src="../assets/user/js/auto_complete.js"></script>
		
		<!-- FontAwesome JS -->
		<script src="../assets/user/fonts/js/all.js"></script>
		
</body>
</html>
