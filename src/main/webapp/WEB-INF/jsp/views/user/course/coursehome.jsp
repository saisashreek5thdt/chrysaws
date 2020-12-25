
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="stag" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@page import="java.io.*, java.util.*,java.time.*,java.text.*, java.util.Enumeration" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
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
  <body style="overflow-x: hidden;height:1200px">  
  <!-- NAV BAR BEGIN -->
<jsp:include page="../header/header.jsp" />

<!-- NAV BAR END -->

<!--SLIDER BEGIN-->
<div class="container-fluid">
<div class="row">
 <c:forEach items="${sliderList}" var="row">
  <c:if test="${row.category=='courses'}">


<div class="col-md-12"  id="coursebg" style="background-image:url('../assets/uploads/slider/${row.slider}')">
    <div style="top:25%;right:10%;width:30% ;height:30%;background: transparent;position: absolute;">
        <img class="d-block w-100" src="../assets/user/images/courseimg.png"    >
  
    </div>


 <div class="col" id="coupen">
    <div class="col" id="coupensub" >
            <center>	
                <br>
                    <img src="../assets/user/images/coup.png" >
            </center>
        <p style="font-size: 80%;text-align: center; width:90%; text-overflow: ellipsis; line-height: 1.4;">
                  Use Coupon Code
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


<!--SLIDER END -->

<!-- SEARCH BAR BEGIN -->
<div class="container-fluid">   
    <div class="row" id="sbar">
        <form autocomplete="off" action="#" class="form-inline my-2 my-lg-0">
            <div class="autocomplete">
             <center>
                           <input id="myCourses" class="mysearch" placeholder="&#xF002; Let's find out what you are looking for" aria-label="Search" style="font-family:Segoe UI,  FontAwesome;width:90%" >
                      </center>
            </div>
        </form>

        <div class="col" id="topsearch">


            <font style="color:white;font-size:11px;text-transform: capitalize;font-family: Segoe UI semibold;">
       <big>    <b>Top Searches : </b></big>	   <c:forEach items="${courseList}" var="row">
           	<c:set var="count" value="${count + 1}" scope="page"/>
           			  <c:if test="${count<5}">
                                                		   ${row.coursename}&nbsp;&nbsp;
                                                		</c:if>
                                                		</c:forEach>
        </font>
        </div>
    </div>
</div>

<!-- SEARCH BAR END -->
<!--CONTENT BODY BEGIN -->
<br><br>
<div class="container-fluid">

	<div class="row justify-content-md-center">
		<div class="col-md-10">
			<div class="row">

			 <c:forEach items="${courseList}" var="row">

   <c:set var = "start" value = "${row.start}" scope="page" />
   <c:set var = "createdate" value = "${row.createdate}" scope="page" />

  <c:set var = "day" value = "${today}" scope="page" />
    <c:set var = "daybefore" value = "${yesterday}" scope="page" />
<%
    String startz = String.valueOf(pageContext.getAttribute("start"));
    String createdates = String.valueOf(pageContext.getAttribute("createdate"));
     String day = String.valueOf(pageContext.getAttribute("day"));
          String daybefore = String.valueOf(pageContext.getAttribute("daybefore"));
    SimpleDateFormat sdfo = new SimpleDateFormat("yyyy-MM-dd");
Date d1 = sdfo.parse(startz);
Date d2 = sdfo.parse(day);
Date d3 = sdfo.parse(daybefore);
Date d4 = sdfo.parse(createdates);
    if (d1.compareTo(d2) > 0) {

            // When Date d1 > Date d2


      %>

		<div class="col-md-3">
			<div class="row justify-content-md-center">
				<div class="col-md-10" id="coursebody">

<%   if (d2.compareTo(d4)== 0 || d3.compareTo(d4)== 0 ) {  %>

                					<div class="col" id="badge" style="background-image:url('../assets/user/images/Rectangle 62.png');" >
                                        <br style="line-height:1.2">
                                        <font color="white">

                                            <small>
                                                <center>
                                            New
                                                </center>
                                            </small>
                                        </font>
                						</div>

                						<% } else{ %>
				  <c:if test="${row.category=='Free' || row.category=='free'}">

                					<div class="col" id="badge" style="background-image:url('../assets/user/images/Rectangle 62.png');" >
                                        <br style="line-height:1.2">
                                        <font color="white">

                                            <small>
                                                <center>
                                              Free
                                                </center>
                                            </small>
                                        </font>
                						</div>

                           </c:if>


                           		  <c:if test="${row.category=='Paid' || row.category=='paid'}">

                           					<div class="col" id="badge" style="background-image:url('../assets/user/images/Rectangle 379.png');" >
                                             <br style="line-height:1.2">
                                                   <font color="white">

                                                       <small>
                                                           <center>
                                                        Paid
                                                           </center>
                                                       </small>
                                                   </font>
                           						</div>

                                      </c:if>

<% } %>

						<div class="col" id="cir" >
                            
                            		<center>
			<img src="../assets/user/images/path 5373.png">
			<br>
		<font color="white" style="font-size: 16px;text-transform: capitalize;font-family: Segoe UI semibold;">
                        		${fn:toLowerCase(row.coursename)}

                        		</font>


			
			
							</center>
									
									</div>
									<br><br><br><br style="line-height:.5"><center>

										<small>  <font color="#707070" style="text-align: center;">  
										<br>
								 ${fn:substring(row.about_course,0,214)}...
										<a href="#" id="link"  style="bottom:20%;left:38%;position:absolute">Read More</a>
											  </center></small></font>

											  <div class="col" id="bott" >
													<center>

		<br style="line-height:.8">
														<form action="/coursedetail" method="post">
														<input type="hidden" name="coursename" value="${row.coursename}" >
															<button style="background: #707070;color:white;border:0px; height:38px; width:60%;border-radius: 10px;border-top:7px solid #F05F6F">
																					View Course
															  </button>
															</form>
																		</center>
																							</div>
				</div>
			</div>
			<div class="row" style="height:100px"></div>
		</div>
 <%  }%>
 </c:forEach>
	</div>	
	
</div>

</div>
</div>
<br>

<!--CONTENT BODY END -->



<!--BOTTOM BODY BEGIN -->


<div class="container-fluid"  style="background:#F05F6F">

	
		<br>

<br>

 <div class="row justify-content-md-center" style="background-color: #F05F6F;">
<div class="col-md-5" id="testimon" style="	background:#D6FDFC;">
<div class="col" id="testimon1" style="background-image: url('../assets/user/images/Group\ 1403.png')">
<center>

	<font color="white" id="testfont" style="position: absolute;top:55%;right:30%"> <b> Testimonials </b></font>
</center>
</div>
<div class="col" id="testimon2" style="background-image: url('../assets/user/images/gif.gif')">

</div>

</div>
<div class="col-md-1"  >
	
</div>
<div class="col-md-5" id="testimon" style="	background:#D6FDFC;">
<br>
<center>-
<p style="Width:90%; height:auto; color:#000;font-size:15px"><i>
<b><big><big>" </big></big></b>

In mapping the Maths, we will come across many concepts. The origin or base of Maths is Counting, where we learned counting the objects that are visible to our eye. Mathematics are broadly classified into two groups: Pure Mathematics (number system, geometry, matrix, algebra, combinatorics, topology, calculus)
 and Applied Mathematics (Engineering, Chemistry, Physics, numerical analysis, etc).<b><big><big>" </big></big></b></i>
<p></center>
</div>


 </div>
<br>

</div>
</div>
</div>
<!--BOTTOM BODY END -->






<!--FOOTER BEGIN -->
<jsp:include page="../footer/footer.jsp" />

<!--FOOTER END -->

		<!-- Bootstrap JS -->
		<script src="../assets/user/bootstrap/js/jquery-3.5.1.slim.js"></script>
		<script src="../assets/user/bootstrap/js/popper.js"></script>
		<script src="../assets/user/bootstrap/js/bootstrap.js"></script>
		
		<script src="../assets/user/js/auto_complete.js"></script>
		
		<!-- FontAwesome JS -->
		<script src="../assets/user/fonts/js/all.js"></script>
		
</body>
</html>
