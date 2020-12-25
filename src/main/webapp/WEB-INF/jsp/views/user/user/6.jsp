
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="stag" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>


        <%
        if(session.getAttribute("useremail")=="")
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
  <body style="overflow-x: hidden;height: 1000px;">
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
	  <font style="color:white; font-size:210%;position:absolute; top:30%; left:30%;" >
${fn:toUpperCase(row.firstname)}
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


				<div class="col" style="width: 20%;float: right;">
					<br><br style="line-height:.3">
					<a href="/user" style="color: white;font-weight: 900;  font-size: 22px;font-family: Segoe UI semibold;left:10%;position: relative;line-height: 2;top:2;">
				View Dashboard

					</a>


					</div>
			</div>
	    </div>
</div>

	<!--User Panel End-->


	<br>	<br>


	<!--course Panel Begin-->


	<div class="row justify-content-md-center"  >

		<div class="col-md-6" id="coursechart" style="background:#fafafa">
			<div class="col-md-12">
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

			<div class="row justify-content-md-center" style="height: 170px;" >

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
					<p style="text-align:right; color:#666666;font-size:11px;font-family: Segoe UI semibold;line-height: 1.5;">
					&nbsp;	Total Modules :
						</p>


						<p style="text-align:right;color:#666666;font-size:11px;font-family: Segoe UI semibold;line-height: 1.5;">
						&nbsp;	Total Duration :
							</p>

						</center>
							<p style="text-align:right;color:#666666;font-size:11px;font-family: Segoe UI semibold;line-height: 1.5; " >
								&nbsp;	Instructor 1 :
								</p>


								<p style="text-align:right;color:#666666;font-size:11px;font-family: Segoe UI semibold;line-height: 1.5;">
								&nbsp;	Instructor 2 :
									</p>

			</div>

			<div style="float: right;width: 50%;height:100px">


					<p style="color:#666666;font-size:11px;font-family: Segoe UI ;line-height: 1.5;font-weight: 600;">

									    <c:forEach items="${rcList}" var="rowt">
                                                          <c:if test="${row.name==rowt.coursename}">
                     	<c:set var="counts" value="${counts + 1}" scope="page"/>

                    </c:if>
                                       </c:forEach>
2
						</p>

						<p style="color:#666666;font-size:11px;font-family: Segoe UI ;line-height: 1.5;font-weight: 600;">

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

							   <p style="color:#666666;font-size:11px;font-family: Segoe UI ;line-height: 1.5;font-weight: 600;text-transform:capitalize">
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

<p style="color:#666666;left:10%;font-size:15px;bottom:2px;position:absolute;font-family: Segoe UI ;line-height: 1.5;font-weight: 600;">
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
								<p style="color:#666666;font-size:15px;bottom:2px;position:absolute;font-family: Segoe UI ;line-height: 1.5;font-weight: 600;">
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




			<div class="row justify-content-md-center" style="height: 170px;" >

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
<form>


		</form>
</div>



<div class="col-md-2 " >

</div>



</div>
<div id="mobhide">
<!--Nothing.. But used For Mobile View Alignement-->
</div>


<br>


   </c:if >
     </c:forEach>

		</div>



		<!--course Calender End-->

	</div>

	<!--course Panel end-->



	<br>
	<br>


	<!--Course Detail Panel Begin-->

	<div class="container-fluid">
		<div class="row" style="background: #EB4C5E; height:110px">
			<div class="col-md-12"    >
				<div class="col" style="width: 20%;float: left;">
					<br>
					<p style="color: white;font-size: 14px;font-family: Segoe UI semibold;left:10%;position: relative;line-height: .8;top:2;">
						<i>  Course Name </i>
					</p>
					<p style="color: white;font-size: 14px;font-family: Segoe UI semibold;left:10%;position: relative;line-height: .8;">
					.............................
					</p>

					<p style="color: white;font-size: 16px;font-family: Segoe UI semibold;left:10%;position: relative;line-height: 1.4;" >
						Maths in Early Years

						</p>
						<p style="color: white;font-size: 12px;font-family: Segoe UI semibold;left:10%;position: relative;line-height: 1.4;" >
							Full Course / 12 Hours / 11 Modules
						</p>


				</div>


				<div class="col" style="width: 8%;float: right;">
					<br>
					<p style="color: white;font-weight: 900;  font-size: 16px;font-family: Segoe UI semibold;left:10%;position: relative;line-height: 2;top:2;">
				Close X


					</p>


					</div>
			</div>
	    </div>
</div>

	<!--Course Detail Panel End-->

	<br>

	<!--Instructur Section Begin-->

	<div class="row justify-content-md-center " >

			<div class="col-md-11" >
				<font style="color:#707070;font-size: 19px;font-family:Segoe UI semibold">
					Instructor
					</font>
					<br>
					<br>
					<c:forEach items="${rcList}" var="rowv">


    						<c:forEach items="${instructorList}" var="rowx">

    							<c:if test="${cn==rowx.resource}">

    								<c:set var="count1" value="${count1 + 1}" scope="page"/>

    							  <c:if test="${count1<3}">

    			<div class="col" style="float:left;width:20%;height:100px">
    				<c:forEach items="${facList}" var="rowt">
    				<c:if test="${rowt.firstname==rowx.name}">
    					<center>
    						<img src="../assets/uploads/${rowt.image}" style="width:100px;height:100px;border-radius:50%;box-shadow:2px 2px 2px 2px grey">
    						<font style="color:#0A62A3;font-size: 16px;text-transform:capitalize">

    							 ${fn:toLowerCase(rowt.firstname)} .  ${fn:toLowerCase(rowt.lastname)}</font>


    					</center>
    			</div>
    		</c:if >
    		</c:forEach>
    		</c:if > </c:if >

    	</c:forEach>
      </c:forEach>

	</div>
	</div>

		<!--Instructur Section  End-->

		<br>


		 <c:forEach items="${resourcedetail}" var="row">


<section name="syllabus">
<div class="row justify-content-md-center">
	<div class="col-md-11">
		<font style="color:#707070;font-size: 22px;font-family: Segoe UI semibold;">
    	Syllabus
    			</font>
	</div>
<br>
	<br>

	<br>

	<div class="col-md-11" >

      <c:forEach items="${resourceList}" var="rowm">

           <c:if test="${rowm.resource_name==row.resource_name && rowm.filetype=='video' }">
<c:set var="cs" value="${cs + 1}" scope="page"/>
<c:if test="${cs<2}">
		<div class="row " >

			<div class="col-md-8" >
				<font style="color:#707070;font-size: 17px;">
					Videos
					</font>
			</div>
			<div class="col-md-4">

			<center>
        					<font style="color:#0A62A3;font-size: 12px;">
        							<img src="../assets/user/images/Icon ionic-md-eye.png">&nbsp;</font>
                  						   <button  formaction="" style="background:none;color:#0A62A3;font-size: 10px;">
                View All
                </button></font>

        						</center>
			</div>


			<div class="col-md-12">
				<img src="../assets/user/images/line2.png"  style="width:100%">
			</div>
			<br>
			</c:if>
</c:if>
</c:forEach>


			<div class="col-md-11" >
				<div class="row">
      <c:forEach items="${resourceList}" var="rowm">

           <c:if test="${rowm.resource_name==row.resource_name && rowm.filetype=='video' }">
<c:set var="count" value="${count + 1}" scope="page"/>
 <c:if test="${count<5}">


					<div class="col-md-3">
						<div class="col-md-10" id="videoout"  >
								<center>

									<div class="col-md-11" id="videoout1"  >
               		<div class="col-md-11" id="videoout1"  >
               													<form action="/viewvideo" method="get">
                                                               									<input type="hidden" value="${rowm.filename}" name="video">
                                                               										<input type="hidden" value="${rowm.resource_name}" name="rcname">
                                                               										<input type="hidden" value="" name="cn">
                                                               									<button>
               									   <video id="myVideo"  height="176" autoplay="autoplay" style="width: 90%;height: 95%;">
               										 <source  src="../assets/uploads/video/${rowm.filename}#t=0,10" >

               									   </video></button>

									</div>
									</center>
									<br>
									<center>
										<a style="color:#0A62A3;font-size: 12px;">
									${rowm.title}


										</a>
									</center>
						</div>
							<div class="col-md-12">
                        						<div class="col-md-10" style="border-top: 5px solid #0A62A3;"  >

                        						</div>
                        					</div>

					</div>
				</c:if > </c:if >
        				 </c:forEach>




				</div>
			</div>


			</div>
			<br>


      <c:forEach items="${resourceList}" var="rowm">

           <c:if test="${rowm.resource_name==row.resource_name && rowm.category=='Worksheets' }">

			<div class="row">

				<div class="col-md-8">
					<font style="color:#707070;font-size: 17px;">
						Worksheets
						</font>
				</div>
				<div class="col-md-4">
	<center>
					<font style="color:#0A62A3;font-size: 12px;">
										<img src="../assets/user/images/Icon ionic-md-eye.png">&nbsp;</font>
                      						   <button  formaction="" style="background:none;color:#0A62A3;font-size: 10px;">
                    View All
                    </button></font>

						</center>
				</div>


				<div class="col-md-12">
					<img src="../assets/user/images/line2.png" style="width:100%">
				</div>
			</div>

			<br>


			 </c:if >
                 </c:forEach>

	<div class="col-md-11" >
				<div class="row">
      <c:forEach items="${resourceList}" var="rowm">

           <c:if test="${rowm.resource_name==row.resource_name && rowm.category=='Worksheets' }">
<c:set var="count" value="${count + 1}" scope="page"/>
 <c:if test="${count<5}">


					<div class="col-md-2">
						<div class="col-md-10" id="videoout"  >
								<center>


           <c:if test="${rowm.resource_name==row.resource_name && rowm.filetype=='ppt' }">
<a href="../assets/uploads/ppt/${rowm.filename}" style="color:#0A62A3;font-size:12px" target="_blank">
	<img src="../assets/user/images/ppt.png" style="height: 70%;">
</a>
									</center>
									<br>
									<center>
										<a style="color:#0A62A3;font-size: 12px;">
									${rowm.title}
									</a>
									</center>
									</c:if >


           <c:if test="${rowm.resource_name==row.resource_name && rowm.filetype=='pdf' }">
<a href="../assets/uploads/pdf/${rowm.filename}" style="color:#0A62A3;font-size:12px" target="_blank">
<img src="../assets/user/images/Icon ionic-md-document.png" style="height: 70%;">
</a>
									</center>
									<br>
									<center>
										<a style="color:#0A62A3;font-size: 12px;">
									${rowm.title}
									</a>
									</center>
									</c:if >



           <c:if test="${rowm.resource_name==row.resource_name && rowm.filetype=='word' }">
<a href="../assets/uploads/word/${rowm.filename}" style="color:#0A62A3;font-size:12px" target="_blank">
<img src="../assets/user/images/doc.png" style="height: 70%;">
</a>
									</center>
									<br>
									<center>
										<a style="color:#0A62A3;font-size: 12px;">
									${rowm.title}
									</a>
									</center>
									</c:if >







						</div>
							<div class="col-md-12">
                        						<div class="col-md-10" style="border-top: 5px solid #0A62A3;"  >

                        						</div>
                        					</div>

					</div>
				</c:if > </c:if >
        				 </c:forEach>




				</div>
			</div>



			<br>

      <c:forEach items="${resourceList}" var="rowm">

           <c:if test="${rowm.resource_name==row.resource_name && rowm.category=='Activity '}">

			<div class="row">

				<div class="col-md-8">
					<font style="color:#707070;font-size: 17px;">
						Games and Activity Ideas
						</font>
				</div>
				<div class="col-md-4">

					<center>
                					<font style="color:#0A62A3;font-size: 12px;">
                								<img src="../assets/user/images/Icon ionic-md-eye.png">&nbsp;</font>
                              						   <button  formaction="" style="background:none;color:#0A62A3;font-size: 10px;">
                            View All
                            </button></font>

                						</center>
				</div>


				<div class="col-md-12">
					<img src="../assets/user/images/line2.png" style="width:100%">
				</div>
			</div>


			<br>
				 </c:if >
                             </c:forEach>



	<div class="col-md-11" >
				<div class="row">
      <c:forEach items="${resourceList}" var="rowm">

           <c:if test="${rowm.resource_name==row.resource_name && rowm.category=='Activity ' }">
<c:set var="count" value="${count + 1}" scope="page"/>
 <c:if test="${count<5}">


					<div class="col-md-2">
						<div class="col-md-10" id="videoout"  >
								<center>


           <c:if test="${rowm.resource_name==row.resource_name && rowm.filetype=='ppt' }">
<a href="../assets/uploads/ppt/${rowm.filename}" style="color:#0A62A3;font-size:12px" target="_blank">
	<img src="../assets/user/images/ppt.png" style="height: 70%;">
</a>
									</center>
									<br>
									<center>
										<a style="color:#0A62A3;font-size: 12px;">
									${rowm.title}
									</a>
									</center>
									</c:if >


           <c:if test="${rowm.resource_name==row.resource_name && rowm.filetype=='pdf' }">
<a href="../assets/uploads/pdf/${rowm.filename}" style="color:#0A62A3;font-size:12px" target="_blank">
<img src="../assets/user/images/Icon ionic-md-document.png" style="height: 70%;">
</a>
									</center>
									<br>
									<center>
										<a style="color:#0A62A3;font-size: 12px;">
									${rowm.title}
									</a>
									</center>
									</c:if >



           <c:if test="${rowm.resource_name==row.resource_name && rowm.filetype=='word' }">
<a href="../assets/uploads/word/${rowm.filename}" style="color:#0A62A3;font-size:12px" target="_blank">
<img src="../assets/user/images/doc.png" style="height: 70%;">
</a>
									</center>
									<br>
									<center>
										<a style="color:#0A62A3;font-size: 12px;">
									${rowm.title}
									</a>
									</center>
									</c:if >







						</div>
							<div class="col-md-12">
                        						<div class="col-md-10" style="border-top: 5px solid #0A62A3;"  >

                        						</div>
                        					</div>

					</div>
				</c:if > </c:if >
        				 </c:forEach>




				</div>
			</div>











      <c:forEach items="${resourceList}" var="rowm">

           <c:if test="${rowm.resource_name==row.resource_name && rowm.category=='Articles' }">

			<div class="row">

				<div class="col-md-8">
					<font style="color:#707070;font-size: 17px;">
						Articles
						</font>
				</div>
				<div class="col-md-4">
		<center>
    					<font style="color:#0A62A3;font-size: 12px;">
    									<img src="../assets/user/images/Icon ionic-md-eye.png">&nbsp;</font>
                      						   <button  formaction="" style="background:none;color:#0A62A3;font-size: 10px;">
                    View All
                    </button></font>

    						</center>
				</div>


				<div class="col-md-12">
					<img src="../assets/user/images/line2.png" style="width:100%">
				</div>
			</div>
	 </c:if >
                             </c:forEach>

	<div class="col-md-11" >
				<div class="row">
      <c:forEach items="${resourceList}" var="rowm">

           <c:if test="${rowm.resource_name==row.resource_name && rowm.category=='Articles' }">
<c:set var="count" value="${count + 1}" scope="page"/>
 <c:if test="${count<5}">


					<div class="col-md-2">
						<div class="col-md-10" id="videoout"  >
								<center>


           <c:if test="${rowm.resource_name==row.resource_name && rowm.filetype=='ppt' }">
<a href="../assets/uploads/ppt/${rowm.filename}" style="color:#0A62A3;font-size:12px" target="_blank">
	<img src="../assets/user/images/ppt.png" style="height: 70%;">
</a>
									</center>
									<br>
									<center>
										<a style="color:#0A62A3;font-size: 12px;">
									${rowm.title}
									</a>
									</center>
									</c:if >


           <c:if test="${rowm.resource_name==row.resource_name && rowm.filetype=='pdf' }">
<a href="../assets/uploads/pdf/${rowm.filename}" style="color:#0A62A3;font-size:12px" target="_blank">
<img src="../assets/user/images/Icon ionic-md-document.png" style="height: 70%;">
</a>
									</center>
									<br>
									<center>
										<a style="color:#0A62A3;font-size: 12px;">
									${rowm.title}
									</a>
									</center>
									</c:if >



           <c:if test="${rowm.resource_name==row.resource_name && rowm.filetype=='word' }">
<a href="../assets/uploads/word/${rowm.filename}" style="color:#0A62A3;font-size:12px" target="_blank">
<img src="../assets/user/images/doc.png" style="height: 70%;">
</a>
									</center>
									<br>
									<center>
										<a style="color:#0A62A3;font-size: 12px;">
									${rowm.title}
									</a>
									</center>
									</c:if >







						</div>
							<div class="col-md-12">
                        						<div class="col-md-10" style="border-top: 5px solid #0A62A3;"  >

                        						</div>
                        					</div>

					</div>
				</c:if > </c:if >
        				 </c:forEach>




				</div>
			</div>





	</div>
</c:forEach>

</div>
</section>

</div>
		<br>



		<!--Join and Discussion Section Begin-->

	<div class="row justify-content-md-center">
			<div class="col-md-11" >

				<div class="col" style="width:25%;float: left;">

					<font style="color:#FD4059;font-size: 18px;font-family: Segoe UI semibold;">
						<b>Join Discussion</b>
					</font>
					<br>
					<select class="form-control form-control-lg" id="selbox" style="height:40px;background:#fff">
						<option >Select subject</option>
						<option>Select Course</option>
						<option>Select Course</option>
					  </select>
				</div>
				<div class="col" style="width:10%;float: left;">
					<br>
					<center>
					<form>
						<button id="uploadbut" style="height:40px">
							<img src="../assets/user/images/Icon open-chat.png" style="height: 40%;">	Join
								</button>
							</form> </center>
				</div>
			</div>


	</div>

		<!--Join and Discussion   Section  End-->

		<br>






		<!--Chat Section Begin-->

        <div class="row justify-content-md-center" >
			<div class="col-md-11" id="chatbox"  >
	<div class="row">
                <div class="col-md-3"  >
					<br>
					<font style="color:#FD4059;font-size: 20px;font-family: Segoe UI semibold;">
						<b>&nbsp;&nbsp;Chat</b>
					</font>
					<br>	<br>
					<center>
					<select class="form-control form-control-lg" id="selbox" style="height:40px;background:#fff;width:90%">
						<option >select topic </option>
						<option>Select Course</option>
						<option>Select Course</option>
					  </select>
					  <br>	<br>	<br>	<br>

					  <font style="color:#FD4059 ;font-size: 18px;font-family: Segoe UI semibold;" >Topic  </font>
					  <font style="color:#707070 ;font-size: 18px;font-family: Segoe UI semibold;" >NUMBERS  </font>

					  <br> <br>


					  <p style="font-size:15px;font-family: Segoe UI ;line-height: 1.7;font-weight: 600;">
						<a href="#" style="color:#FD4059;">

						* Sub Category Topic</a>
						   </p>


						   <p style="font-size:15px;font-family: Segoe UI ;line-height:1.7;font-weight: 600;">
							<a href="#" style="color:#FD4059;">

							* Sub Category Topic</a>
							   </p>


							   <p style="font-size:15px;font-family: Segoe UI ;line-height:1.7;font-weight: 600;">
								<a href="#" style="color:#707070;">

									&nbsp;&nbsp;* Sub Category Topic
								<img src="../assets/user/images/Icon awesome-caret-down.png" style="height:20px">
							</a>
								   </p>

								   <p style="font-size:15px;font-family: Segoe UI ;line-height: 1.7;font-weight: 600;">
									<a href="#" style="color:#FD4059;">

									* Sub Category Topic</a>
									   </p>



									   <p style="font-size:15px;font-family: Segoe UI ;line-height: 1.7;font-weight: 600;">
										<a href="#" style="color:#FD4059;">

										* Sub Category Topic</a>
										   </p>


										   <p style="font-size:15px;font-family: Segoe UI ;line-height: 1.7;font-weight: 600;">
											<a href="#" style="color:#FD4059;">

											* Sub Category Topic</a>
											   </p>


								</center>
				</div>
				<br>


                <div class="col-md-9 "  >
					<br>
	<div class="row justify-content-md-center">
                   <div class="col-md-11" id="chatbox1">

					<font style="color:#FD4059;font-size: 20px;font-family: Segoe UI semibold;">
						<b>&nbsp;&nbsp;You</b>
					</font>

						<div class="row justify-content-md-center">
							<div class="col-md-10" id="chatbox2">

							</div>
						</div>
						<br>
						<div class="col" style="width:20%; float:left;">

					</div>

					<div class="col" style="width:15%; float:right;">
						<button id="uploadbut" style="height:40px">
							<img src="../assets/user/images/Icon feather-send.png" style="height: 40%;">	Send
								</button>
							</form>

					</div>
				   </div>
				</div>

				<br>

				<div class="row justify-content-md-center">



					<div class="col-md-11" id="chatbox1">



		<!--Tutor Chat Section Begin-->

		<div class="col" style="width: 10%;float: left;height:260px;">

			<br>
			<center>
			<img src="../assets/user/images/Icon awesome-user-shield.png">
		</center>
			</div>
			<br>







						<div class="col" style="width:90%; float: right;">
						<br>


					<div class="col" style="float:left;width: 10%;">
					<font style="color:#FD4059;font-size: 16px;font-family: Segoe UI semibold;">
						Tutor 1
					</font>
					</div>
					<div class="col" style="float:right;width: 10%;">
						<font style="color:#000000;font-size: 14px;font-family: Segoe UI semibold;">
							2 hrs ago
						</font>
						</div>

						<br>
						<div class="col" style="height: autos;">
										<font style="color:#627AF3;font-size: 16px;font-family: Segoe UI semibold;">
							Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.
Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor
 										</font>
						</div>


						<br>



						<div class="col" style="float:left;width: 20%;">
							<a  href="#" style="color:#000;font-size: 14px;font-family: Segoe UI semibold;">
								<img src="../assets/user/images/Icon material-report-problem.png " style="height:30px;">		Report this
							</a>
							</div>
							<div class="col" style="float:right;width: 15%;">
								<font style="color:#000000;font-size: 14px;font-family: Segoe UI semibold;">
									<img src="../assets/user/images/Icon awesomethumbs-up.png " style="height:20px;">			32
									&nbsp;&nbsp;&nbsp;

									<img src="../assets/user/images/Icon awesome-thumbs-down.png " style="height:20px;">  00
											</font>
								</div>

						</div>

	<!-- Tutor Chat Section End-->

						<br>

						<br>


	<!-- user Section BEgin-->

	<div class="col" style="width: 10%;float: left;height:260px;">

		<br>
		<center>
		<img src="../assets/user/images/Icon awesome-user-graduate.png">
	</center>
		</div>
		<br>


						<div class="col" style="width:90%; float: right;">

							<br>
							<hr/ style="border:1px solid #29245D">
							<br>
						<div class="col" style="float:left;width: 10%;">
						<font style="color:#FD4059;font-size: 16px;font-family: Segoe UI semibold;">
							User 1212
						</font>
						</div>
						<div class="col" style="float:right;width: 10%;">
							<font style="color:#000000;font-size: 14px;font-family: Segoe UI semibold;">
								2 hrs ago
							</font>
							</div>

							<br>
							<div class="col" style="height: autos;">
											<font style="color:#81B456;font-size: 16px;font-family: Segoe UI semibold;">
								Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.
	Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor
											 </font>
							</div>


							<br>



							<div class="col" style="float:left;width: 20%;">
								<a  href="#" style="color:#000;font-size: 14px;font-family: Segoe UI semibold;">
									<img src="../assets/user/images/Icon material-report-problem.png " style="height:30px;">		Report this
								</a>
								</div>


							</div>


	<!-- user Section End-->




		<!--Tutor Chat Section Begin-->

		<div class="col" style="width: 10%;float: left;height:260px;">

			<br>
			<center>
			<img src="../assets/user/images/Icon awesome-user-shield.png">
		</center>
			</div>
			<br>







						<div class="col" style="width:90%; float: right;">
							<br>
							<hr/ style="border:1px solid #29245D">
							<br>

					<div class="col" style="float:left;width: 10%;">
					<font style="color:#FD4059;font-size: 16px;font-family: Segoe UI semibold;">
						Tutor 1
					</font>
					</div>
					<div class="col" style="float:right;width: 10%;">
						<font style="color:#000000;font-size: 14px;font-family: Segoe UI semibold;">
							2 hrs ago
						</font>
						</div>

						<br>
						<div class="col" style="height: autos;">
										<font style="color:#627AF3;font-size: 16px;font-family: Segoe UI semibold;">
							Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.
Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor
 										</font>
						</div>


						<br>



						<div class="col" style="float:left;width: 20%;">
							<a  href="#" style="color:#000;font-size: 14px;font-family: Segoe UI semibold;">
								<img src="../assets/user/images/Icon material-report-problem.png " style="height:30px;">		Report this
							</a>
							</div>
							<div class="col" style="float:right;width: 15%;">
								<font style="color:#000000;font-size: 14px;font-family: Segoe UI semibold;">
									<img src="../assets/user/images/Icon awesomethumbs-up.png " style="height:20px;">			32
									&nbsp;&nbsp;&nbsp;

									<img src="../assets/user/images/Icon awesome-thumbs-down.png " style="height:20px;">  00
											</font>
								</div>

						</div>

	<!-- Tutor Chat Section End-->

						<br>

						<br>


	<!-- user Section BEgin-->

	<div class="col" style="width: 10%;float: left;height:260px;">

		<br>
		<center>
		<img src="../assets/user/images/Icon awesome-user-graduate.png">
	</center>
		</div>
		<br>


						<div class="col" style="width:90%; float: right;">

							<br>
							<hr/ style="border:1px solid #29245D">
							<br>
						<div class="col" style="float:left;width: 10%;">
						<font style="color:#FD4059;font-size: 16px;font-family: Segoe UI semibold;">
							User 1212
						</font>
						</div>
						<div class="col" style="float:right;width: 10%;">
							<font style="color:#000000;font-size: 14px;font-family: Segoe UI semibold;">
								2 hrs ago
							</font>
							</div>

							<br>
							<div class="col" style="height: autos;">
											<font style="color:#81B456;font-size: 16px;font-family: Segoe UI semibold;">
								Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.
	Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor
											 </font>
							</div>


							<br>



							<div class="col" style="float:left;width: 20%;">
								<a  href="#" style="color:#000;font-size: 14px;font-family: Segoe UI semibold;">
									<img src="../assets/user/images/Icon material-report-problem.png " style="height:30px;">		Report this
								</a>
								</div>


							</div>


	<!-- user Section End-->
						</div>

					</div>
                </div>
            </div>

			</div>


	</div>

		<!--chat  Section  End-->

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
