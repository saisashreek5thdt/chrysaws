
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="stag" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>



<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<title>Chrysaellect M.E.E.T</title>
		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="../assets/user/bootstrap/css/bootstrap.css">
		<!-- Custom CSS -->
        <link rel="stylesheet" href="../assets/user/css/style.css">
        <link rel="stylesheet" href="../assets/user/css/courses.css">
		<!-- FontAwesome CSS -->
		<link rel="stylesheet" href="../assets/user/fontsfile:///G:/Chrysaellect%20MEEt/assets/user/images/footer/footer.png/css/all.css">
				<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"/>

  </head>
  <body style="overflow-x: hidden;height:auto">
  <!-- NAV BAR BEGIN -->
<jsp:include page="../header/header.jsp" />
<!-- NAV BAR END -->

<!--SLIDER BEGIN-->
<div class="container-fluid">
<div class="row"> <c:forEach items="${sliderList}" var="row">
                   <c:if test="${row.category=='courses'}">


                 <div class="col-md-12"  id="coursebg" style="background-image:url('../assets/uploads/slider/${row.slider}')">
                     <div style="top:25%;right:10%;width:30% ;height:30%;background: transparent;position: absolute;">
                         <img class="d-block w-100" src="../assets/user/images/resourcebg.png"    >

                     </div>


                  <div class="col" id="coupen">
                     <div class="col" id="coupensub" >
                             <center>
                                 <br>
                                     <img src="../assets/user/images/coup.png" >
                             </center>
                         <p style="font-size: 80%;text-align: center; width:90%; text-overflow: ellipsis; line-height: 1.4;">
                                   Use Coupen Code
                         </p>
                     <strong>
                         <center>
                             <font color="#6B4B20" style="line-height: 2.4" >
                                ${row.coupen}
                            </font>
                         </center>
                     </strong>
                         <p style="font-size: 50%;text-align: center; width:90%; text-overflow: ellipsis;color: #EB4D5E;">
                             For First Time Users
                         </p>
                     </div>
                 </div>

                 <div class="col" id="coupensub2">
                     <center>
                          <br>
                             <br>
                                 <p style="color:#fff;font-size: 100%;text-align: center; width:90%; text-overflow: ellipsis; line-height: 1.6;">
                                     Enroll Today&
                                 </p>

                                 <p style="color:#fff;font-size: 100%;text-align: center; width:90%; text-overflow: ellipsis; line-height: 1.6;">
                                     Access Full Videos
                                 </p>

                           <br>
                      <form>

                         <button style="width:50%; height:32px;background: #FFD500;border-radius: 10px;color:#6B4B20;font-size: 12px;border-color:transparent;box-shadow: 1px 1px 1px #000000;">
                             <b>
                                 <a href="#" style="color:#6B4B20;"> Sign Up Now </a></b>
                       </button>
                 	</form>
                                 </div>


                 </div>
                 </div>  </c:if >
                              </c:forEach>
</div>
</div>
</div>


<!--SLIDER END -->

<!-- SEARCH BAR BEGIN -->
<div class="container-fluid">
    <div class="row" id="sbar">
        <form autocomplete="off" action="#" class="form-inline my-2 my-lg-0">
            <div class="autocomplete">
                <input id="myCourses" class="mysearch" placeholder="&#xF002; Let's find out what you are looking for" aria-label="Search" style="font-family:Segoe UI,  FontAwesome;width:90%" >
            </div>
        </form>

        <div class="col" id="topsearch">

            <font style="color:white;font-size:12px;text-transform: capitalize;font-family: Segoe UI semibold;">
           <b>Top Searches : </b>   <c:forEach items="${courseList}" var="row">
                                             	     	<c:set var="counc" value="${counc + 1}" scope="page"/>

                                                   <c:if test="${counc<5}">

                                             		   	${fn:toLowerCase(row.coursename)}&nbsp;&nbsp;
                                             		   </c:if>

                                             		</c:forEach>
        </font>
        </div>
    </div>
</div>

<!-- SEARCH BAR END -->
<!--CONTENT BODY BEGIN -->
 <c:forEach items="${resourcedetail}" var="row">
<div class="container-fluid">
    <br>
    <div class="row">
        <div class="col-md-1" >
        </div>
  <div class="col-md-2" id="add">

            <div class="col-md-12" id="addsub">
                <div class="col" id="cir2" >
                    <font color="#FFD500" style="text-transform:capitalize">
                        <center>
                         <br> <br><br>
                         <big>
                          <b>  ${fn:toLowerCase(row.resource_name)}</b>
                        </big>
                        </center>
                    </font>
                </div>

                <div class="col" id="insub3">
                    <div class="col" id="insub4">
                    <hr/ style=" border-bottom: 1px dashed #0A62A3;"><br style="line-height: .8;"><center>
<c:forEach items="${instructorList}" var="rowx">
           <c:if test="${rn==rowx.resource}">
           	<c:set var="countx" value="${countx + 1}" scope="page"/>

             <c:if test="${countx<3}">
             	<c:forEach items="${facList}" var="rowt">
                                       <c:if test="${rowt.firstname==rowx.name}">
                    <img src="../assets/uploads/${rowt.image}" style="width:30px ;height:30px;border-radius:50%">
                     <small><small>
						 <font color="#0A62A3" style="text-transform:capitalize" >
                  ${fn:toLowerCase(rowx.name)}</small> </small>  </font>
 </c:if >
     </c:forEach>
 </c:if > </c:if >
     </c:forEach>


                   </center>

					<br style="line-height: .8;">
                    <div class="row justify-content-md-center">
					 <div style="width:110px;height:30px;border-top:2px solid white;background-color: #0A62A3;border-radius: 10px;">


						<i class="fas fa-star" style="color: #FFD500;font-size: 12px;"></i>
						<i class="fas fa-star" style="color: #FFD500;font-size: 12px;"></i>
						<i class="fas fa-star" style="color: #FFD500;font-size: 12px;"></i>
						<i class="fas fa-star" style="color: #FFD500;font-size: 12px;"></i>
						<i class="fas fa-star" style="color: #FFD500;font-size: 12px;"></i>
						<font style="color: #FFD500;font-size: 12px;">5.0</font>
                     </div>
                     <div style="width:30px" >

                 </div>
					 <div  style="width:30px;height:30px;border-top:2px solid white;background-color: #0A62A3;border-radius: 10px;">
						<center>
					<img src="../assets/user/images/Icon awesome-thumbs-up@2x.png" style="width:70%">
				</center>
                    </div>
                    <br>

                </div>

                <div class="row" justify-content-md-center>
					<div style="width:140px;height:20px;">

						<center>
                        <font style="font-size: 10px;color:#707070">
                            2127 Ratings</font></center>
                    </div>
                    <div style="width:28px" >

                   </div>
					<div  style="width:30px;height:20px;">
					<center>
                        <font style="font-size: 10px;color:#707070">
                            99%</font></center>
                   </div>
                   <br>      <br style="line-height: 1;">

               </div><div class="col" style="width: 100%;  outline: 1px dashed #0A62A3;
			   outline-offset: -5px;background: white; height:40px;">
			   <div class="col" style="background-repeat: no-repeat; top:-10px;position: absolute;right:-1;background-size:95%;height: 140%;width: 60px;background-image: url('assets/user/images/am.png');">
			<br style="line-height: 1.4;">
			<center>
			<font style="color: #FFF700;font-size: 10px;font-family: Segoe UI semibold;">${row.amount}</font>
			</center>
			</div>
			   <br style="line-height: .6;">
			   <center>

<font style="color:#0A62A3;font-size: 13px;font-family: Segoe UI semibold;">Enroll Free</font>

			   </center>

			   <center>


			   </center>
			</div>
                    </div>
                </div>
			</div>

			<center>
			<br style="line-height:.8">
			  <%
                    if(session.getAttribute("useremail")==null)
                    {%>
                    <form action="/loginpage" >
                        	<button style="background:none">
                        				<img src="../assets/user/images/cart.png" style="width:20px ;height:20px">
                        				 <font color="#FFD500">Add to cart</font>
                        				 </button>
                        				 </form>
                   <% }

                   else{%>
                           <form action="/carts" >

                           <input type="hidden" value="${row.resource_name}" name="course">
                             <input type="hidden" value="${row.category}" name="type">
                               <input type="hidden" value="${row.image}" name="image">
                                  <input type="hidden" value="${row.amount}" name="fee">
                             <input type="hidden" value="${userid}" name="user">
                                <input type="hidden" value="resource" name="category">
                                           	<button style="background:none">
                                           				<img src="../assets/user/images/cart.png" style="width:20px ;height:20px">
                                           				 <font color="#FFD500">Add to cart</font>
                                           				 </button>
                                           				 </form>
<%}%>
			</center>
		</div>

		<div class="col-md-8">
			<center>

		</center>
			<center>
				<br><br>
				<table style="width:80%;height:140px" >
					<tr>
					<td style="width:19%;border-left:2px solid #14A0C1; border-bottom:2px solid #14A0C1;border-right:2px solid #14A0C1;position:relative">

					<div id="round1">
					<div id="round2">
						</div>

					</div>
					<div id="round">

						<a href="#about">	<button id="roundbut">
							 About
							</button></a>

					</div>

					</td>

					<td style="width:19%;; border-bottom:2px solid #14A0C1;border-right:2px solid #14A0C1;position:relative">

						<div id="round1" style="background: #619AC9;">
						<div id="round2" style="background: #619AC9;">
							</div>

						</div>
						<div id="round" style="background: #619AC9;">
							<a href="#Instructor">
							<button id="roundbut">
						 Instructor
							</button></a>
						</div>

						</td>


						<td style="width:19%;; border-bottom:2px solid #14A0C1;border-right:2px solid #14A0C1;position:relative">

							<div id="round1" style="background: #14A0C1">
							<div id="round2" style="background: #14A0C1">
								</div>

							</div>
							<div id="round" style="background: #14A0C1">

								<a href="#Instructor">
									<button id="roundbut">
										Syllabus
									</button></a>
							</div>

							</td>



							<td style="width:19%;; border-bottom:2px solid #14A0C1;border-right:2px solid #14A0C1;position:relative">

								<div id="round1" style="background: #00CD99">
								<div id="round2"  style="background: #00CD99">
									</div>

								</div>
								<div id="round"  style="background: #00CD99">

								<a href="#Reviews">
									<button id="roundbut">
										Reviews
									</button></a>
								</div>

								</td>




								<td style="width:19%;position:relative">

									<div id="round1"  style="background: #8AD12C">
									<div id="round2"  style="background: #8AD12C">
										</div>

									</div>
									<div id="round"  style="background:#8AD12C ">
										<a href="#faq">
											<button id="roundbut">
												FAQ
											</button></a>
									</div>

									</td>





					</tr>
					</table>

			</center>


	</div>
	<section id="about">
    </div>
	<br>

	<div class="row justify-content-md-center">

<img src="../assets/user/images/line.png" style="width: 95%;">
<br>

	<div class="col-md-11">

			<font style="color:#707070;font-size: 16px;">
		<font style="color:#707070;font-size: 22px;font-family: Segoe UI semibold; text-align:justify">
		About<br><br style="line-height: .6;">
<small>
				       ${row.about_resourse}
					</small>
</font><br><br>
</section>
</div>
<section id="Instructors">
	</div>

</div>
<br><br><br>
<!--Instructur Section Begin-->

	<div class="row justify-content-md-center " >

			<div class="col-md-11" >
					<font style="color:#707070;font-size: 22px;font-family: Segoe UI semibold;">
                				Instructor
                					</font>
					<br>
					<br>
					<c:forEach items="${instructorList}" var="rowx">
                                                   <c:if test="${rn==rowx.resource}">
                                                   	<c:set var="countc" value="${countc + 1}" scope="page"/>
                                                     <c:if test="${countc<3}">

					<center>
		<c:forEach items="${facList}" var="rowt">
                          <c:if test="${rowt.firstname==rowx.name}">
                          	<div class="col" style="float:left;width:30%;height:100px">
						<img src="../assets/uploads/${rowt.image}" style="width:100px;height:100px;border-radius:50%;box-shadow:2px 2px 2px 2px grey">
						<font style="color:#0A62A3;font-size: 14px;text-transform:capitalize">

							 ${fn:toLowerCase(rowt.firstname)} </font>


</div>

					</center>
			</div>
 </c:if >
                                 </c:forEach>

	 </c:if > </c:if >
                                 </c:forEach>


	</div>
	</div>
	<br>	<br>

		<!--Instructur Section  End-->


<br>

<section name="syllabus">
<div class="row justify-content-md-center">
	<div class="col-md-11">
		<font style="color:#707070;font-size: 22px;font-family: Segoe UI semibold;">
    	Resource Contents
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
        					<b>  	preview available&nbsp;
        						<img src="../assets/user/images/Icon ionic-md-eye.png">&nbsp;
        						pay and unlock&nbsp;<img src="../assets/user/images/Iconfeather-lock.png"></b>
        						</font>

        						</center>
			</div>


			<div class="col-md-12">
				<img src="../assets/user/images/line2.png"  style="width:100%">
			</div>
			<br>
			</c:if>
</c:if>
</c:forEach>
<script>

function play(){

var vid = document.getElementById("myVideo");
vid.play();


}
</script>

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
                           <video id="myVideo" onclick="play()" height="176"  style="width: 90%;height: 95%;">
                             <source  src="../assets/uploads/video/${rowm.filename}#t=10,20" >

                           </video>

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
					<b>  	preview not available&nbsp;
						<img src="../assets/user/images/noeye.png">&nbsp;
						pay and unlock&nbsp;<img src="../assets/user/images/Iconfeather-lock.png"></b>
						</font>

						</center>
				</div>


				<div class="col-md-12">
					<img src="../assets/user/images/line2.png" style="width:100%">
				</div>
			</div>

			<br>


			 </c:if >
                 </c:forEach>


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
                					<b>  	preview not available&nbsp;
                						<img src="../assets/user/images/noeye.png">&nbsp;
                						pay and unlock&nbsp;<img src="../assets/user/images/Iconfeather-lock.png"></b>
                						</font>

                						</center>
				</div>


				<div class="col-md-12">
					<img src="../assets/user/images/line2.png" style="width:100%">
				</div>
			</div>


			<br>
				 </c:if >
                             </c:forEach>

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
    					<b>  	preview not available&nbsp;
    						<img src="../assets/user/images/noeye.png">&nbsp;
    						pay and unlock&nbsp;<img src="../assets/user/images/Iconfeather-lock.png"></b>
    						</font>

    						</center>
				</div>


				<div class="col-md-12">
					<img src="../assets/user/images/line2.png" style="width:100%">
				</div>
			</div>
	 </c:if >
                             </c:forEach>
	</div>
</c:forEach>

</div>
</section>
<section id="Reviews">
	<br><br><br><br><br>


<div class="row justify-content-md-center">
	<div class="col-md-11">
	<font style="color:#707070;font-size: 22px;font-family: Segoe UI semibold;">
    		Reviews
    			</font>
	</div>

	<div class="col-md-3">
		<div class="col-md-11" id="reviewbox" style="background: #f0f0f0;">
			<br>
			<center>
		<p style="width: 70%;color:#707070;font-style: italic;font-size: 12px;text-align: center;">
			Lorem Ipsum has been the industry's standard
			dummy text ever since the 1500s, when
			 an unknown printer took a galley type and
			scrambled it to make a type specimen book.
			</p>  </center>
			<br>

			<center>
			<img src="../assets/user/images/line3.png">
			<br>
			<font style="color:#707070;font-style: italic;font-size: 12px;text-align: center;">
				Reviewer name
			</font>
		</center>
		</div>
	</div>




	<div class="col-md-3">
		<div class="col-md-11" id="reviewbox" style="background: #f0f0f0;">
			<br>
			<center>
		<p style="width: 70%;color:#707070;font-style: italic;font-size: 12px;text-align: center;">
			Lorem Ipsum has been the industry's standard
			dummy text ever since the 1500s, when
			 an unknown printer took a galley type and
			scrambled it to make a type specimen book.
			</p>  </center>
			<br>

			<center>
			<img src="../assets/user/images/line3.png">
			<br>
			<font style="color:#707070;font-style: italic;font-size: 12px;text-align: center;">
				Reviewer name
			</font>
		</center>
		</div>
	</div>




	<div class="col-md-3">
		<div class="col-md-11" id="reviewbox" style="background: #f0f0f0;">
			<br>
			<center>
		<p style="width: 70%;color:#707070;font-style: italic;font-size: 12px;text-align: center;">
			Lorem Ipsum has been the industry's standard
			dummy text ever since the 1500s, when
			 an unknown printer took a galley type and
			scrambled it to make a type specimen book.
			</p>  </center>
			<br>

			<center>
			<img src="../assets/user/images/line3.png">
			<br>
			<font style="color:#707070;font-style: italic;font-size: 12px;text-align: center;">
				Reviewer name
			</font>
		</center>
		</div>
	</div>


</div>


</section>
<section id="faq">
<br><br><br><br>


<br>
	<div class="row justify-content-md-center">
		<div class="col-md-11">
				<font style="color:#707070;font-size: 22px;font-family: Segoe UI semibold;">
    			FAQ
    				</font>
		</div>
		<div class="col-md-11" style="height:auto">
			<br>
			<button class="accordion"  style="text-align:center ">When will I have access to the lectures and assignments?</button>

			<div class="panel">
				<p>
					Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,
					 and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
				</p>
			  </div>

			  <br>	  <br>


			  <button class="accordion"  style="text-align:center ">When will I have access to the lectures and assignments?</button>
			  <div class="panel">
				<p>
					Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,
					 and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
				</p>		</div>


		  <br>	  <br>

			  <button class="accordion"  style="text-align:center ">When will I have access to the lectures and assignments?</button>
			  <div class="panel">
				<p>
					Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,
					 and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
				</p>
			</div>


			<br>	  <br>
			<button class="accordion"  style="text-align:center ">When will I have access to the lectures and assignments?</button>
			<div class="panel">
			  <p>
				  Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,
				   and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
			  </p>
		  </div>

		  <br>	  <br>

			</div>
		</section>



</section>


<div class="row justify-content-md-center">

	<div class="col-md-12" >

<div class="row justify-content-md-center" >
		<div class="col-md-10" style="background:#FFF2F2;border-top: 1px solid #F05F6F;height:auto;" >
			<br><br>
			<div class="row justify-content-md-center">

<c:forEach items="${coursedetails}" var="rok">
  <c:set var="cou" value="${cou + 1}" scope="page"/>
   <c:if test="${cou<'6'}">
					<div class="col-md-2" >
                					<div class="row justify-content-md-center">
                						<div class="col-md-10" id="coursebody2" style="height:230px;background:#fff">



                								<div class="col" id="cir" style="height: 90px;width:90px">

                											<center>
                					<img src="../assets/user/images/path 5373.png" style="height: 40%;">
                					<br>
                					<font color="white" style="font-size: 10px;text-transform: capitalize;">

                					${fn:toLowerCase(rok.coursename)}
                					<br> </font>


                									</center>

                											</div>
                										<br><br><center>
                		<br>
                												<small>  <font color="#707070" style="text-align: center;font-size: 10px;">

                												${fn:substring(rok.about_course, 0, 140)}...

                												 <br>
                												 <a href="#" id="link"  style="bottom:20%;left:35%;position:absolute">Read More</a>
                												</center></small></font>

                												<div class="col" id="bott" >
                													  <center>

                		  <br style="line-height:.2">
                														  <form action="/coursedetail" method="post">
                														  <input type="hidden" name="coursename" value="${row.coursename}" >
                															  <button style="background: #707070;color:white;border:0px; height:30px; width:60%;border-radius: 10px;border-top:7px solid #F05F6F">
                																					  Take Course
                															  </button></form>
                																				</center>
                																									</div>
                						</div>
                					</div>
                				</div>

		</c:if >
	 </c:forEach>
			</div>

			</div>
			<div class="col-md-2" style="background: #F05F6F" style="height:300px">
				<center>
				<font style="color:White;font-size:28px;font-weight: bold;position: absolute;top: 40%;left:10%;">
					Other Courses
					</font></center>
					<img src="../assets/user/images/Icon awesome-angle-double-down.png" style="position: absolute;top: 60%;right:10%;width:60px">
				</div>


<!--CONTENT BODY END -->

<br><br><br><br><br><br>
<br><br><br>


<!--FOOTER BEGIN -->
<jsp:include page="../footer/footer.jsp" />

<!--FOOTER END -->


<script>
	var acc = document.getElementsByClassName("accordion");
	var i;

	for (i = 0; i < acc.length; i++) {
	  acc[i].addEventListener("click", function() {
		this.classList.toggle("active");
		var panel = this.nextElementSibling;
		if (panel.style.display === "block") {
		  panel.style.display = "none";
		} else {
		  panel.style.display = "block";
		}
	  });
	}
	</script>

		<!-- Bootstrap JS -->
		<script src="../assets/user/bootstrap/js/jquery-3.5.1.slim.js"></script>
		<script src="../assets/user/bootstrap/js/popper.js"></script>
		<script src="../assets/user/bootstrap/js/bootstrap.js"></script>

		<script src="../assets/user/js/auto_complete.js"></script>

		<!-- FontAwesome JS -->
		<script src="../assets/user/fonts/js/all.js"></script>

</body>
</html>
