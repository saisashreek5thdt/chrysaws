<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="stag" %>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<title>Chrysaellect M.E.E.T</title>
		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="../assets/user/bootstrap/css/bootstrap.css">
		<!-- Custom CSS -->
        <link rel="stylesheet" href="../assets/user/css/style.css">
        <link rel="stylesheet" href="../assets/user/css/summit.css">
		<!-- FontAwesome CSS -->
		<link rel="stylesheet" href="../assets/user/fontsfile:///G:/Chrysaellect%20MEEt/assets/user/images/footer/footer.png/css/all.css">
				<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"/>

  </head>
  <body style="overflow-x: hidden;">  
  <!-- NAV BAR BEGIN -->

<jsp:include page="../header/header.jsp" />


<!-- NAV BAR END -->


<!--SLIDER BEGIN-->
<div class="container-fluid">
<div class="row">
<c:forEach items="${sliderList}" var="row">
                   <c:if test="${row.category=='summit'}">

<div class="col-md-12"  id="summitbg" style="background-image:url('../assets/uploads/slider/${row.slider}')">
    <div style="top:180px;right:10%;width:30% ;height:30%;background: transparent;position: absolute;z-index:1">
        <img class="d-block w-100" src="../assets/user/images/Group 50.png"      >
  
    </div>

 </c:if >
                                        </c:forEach>
</div>
</div>


<!--SLIDER END -->

<!--CONTENT BODY BEGIN -->
<div class="container-fluid">
<div class="row" style="height:400px">
    <div class="col mid-12" style="background:#fff;height:900px;z-index: -1;"  >
         
        <center><br><br>
            ABOUT SUMMIT
            <p style="text-align: center;max-width: 80%;" ><small>  
                Chrysaellect is an organization that offers innovative, effective and research based products and services that promote authentic learning opportunities 
                relevant for 21st century learners. Chrysaellect is an organization that offers innovative, effective and research based products and services that promote 
                authentic learning opportunities relevant for 21st century learners     Chrysaellect is an organization that offers innovative, effective and research based products and services that promote authentic learning opportunities 
                relevant for 21st century learners. Chrysaellect is an organization that offers innovative, effective and research based products and services that promote 
                authentic learning opportunities relevant for 21st century learners     </small>
            </p>
        </center>
    
        <br>
    
        <div class="row">
            <div class="col-md-3" ></div>
            <div class="col-md-1" ></div>
                 <div class="col-md-2" style="height:420px ; border-right:20px solid white;overflow: hidden;">
                
                      <div class="col-md-12" id="col1">
               
    
                        <div class="col-md-12" style="background-image:url('../assets/user/images/Path 11788.png');  height:22%;  background-size:cover;  border-radius:.5em .5em .5em .5em; ">
    
    <center>
    <br>
    <font color="white" style="font-family:Segoe UI Semibold;"><b> Free Plan</b></font>
    </center>
               </div> 
               <p style="text-align: center;max-width: 99%;" ><small>     <br>
                Chrysaellect is an organization that offers innovative, effective and research based products and services that promote authentic learning opportunities 
                relevant for 21st century learners. Chrysaellect is an organization that offers innovative, effective and research based products and services that promote 
                authentic .   </small>
            </p>
               <div class="col-md-10" id="but" style="background-image:url('../assets/user/images/Rectangle 1275.png'); ">
                   <center>   
                   <font color="#707070">
       
                       <small>
                           Join a summit?
                       </small><br><a href="/summit9" style="color:#707070">  ENROLL HERE</a>
                   </font></center>
                 </div> 
              </div>   
           </div>
    
    
    
            <div class="col-md-3" style="height:440px; border-left:20px solid white;overflow: hidden;">
      
                <div class="col-md-8" id="col1">
               
                    <div class="col-md-12" style="background-image:url('../assets/user/images/Path 117888.png');  height:22%;  background-size:cover;  border-radius:.5em .5em .5em .5em; ">
    <center>
        <br>
        <font color="white" style="font-family:Segoe UI Semibold;"><b> Paid Plan</b></font>
    </center>
               </div>   <p style="text-align: center;max-width: 99%;" ><small>     <br>
                Chrysaellect is an organization that offers innovative, effective and research based products and services that promote authentic learning opportunities 
                relevant for 21st century learners. Chrysaellect is an organization that offers innovative, effective and research based products and services that promote 
                authentic .   </small>
            </p>
       <br>

            <div class="col-md-10" id="but" style="background-image:url('../assets/user/images/Rectangle 1275.png'); ">
                <center>   
                <font color="#707070">

                    <small>
                        Join a summit?
                    </small><br><a href="/summit9" style="color:#707070">  ENROLL HERE</a>
                </font></center>
              </div> 
    
            </div>
            
            
                        </div>
                            <div class="col-md-5"  ></div> 
                                
                                <div class="col-md-2 mb-4" style="overflow: hidden;" >   <center>  <small > 
    
    
                                    <div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
                                        <div class="carousel-inner">
                                          <div class="carousel-item active">
                                            <i class="fa fa-circle" aria-hidden="true"  id="c3" style="color:#FFDF61;"></i>
                                            <i class="fa fa-circle" aria-hidden="true"  id="c1" style="color:#0D566E"></i>
                                            <i class="fa fa-circle" aria-hidden="true"  id="c2" style="color:#0D566E"></i>
                                        
                                            <i class="fa fa-circle" aria-hidden="true"  id="c3" style="color:#0D566E;"></i>
                                          </div>
                                          <div class="carousel-item">
                                            <i class="fa fa-circle" aria-hidden="true"  id="c1" style="color:#0D566E"></i>
                                            <i class="fa fa-circle" aria-hidden="true"  id="c3" style="color:#FFDF61;"></i>
                                            <i class="fa fa-circle" aria-hidden="true"  id="c2" style="color:#0D566E"></i>
                                        
                                            <i class="fa fa-circle" aria-hidden="true"  id="c3" style="color:#0D566E;"></i>
                                          </div>
                                          <div class="carousel-item">
                                            <i class="fa fa-circle" aria-hidden="true"  id="c1" style="color:#0D566E"></i>
                                    
                                            <i class="fa fa-circle" aria-hidden="true"  id="c2" style="color:#0D566E"></i>
                                            <i class="fa fa-circle" aria-hidden="true"  id="c3" style="color:#FFDF61;"></i>
                                            <i class="fa fa-circle" aria-hidden="true"  id="c3" style="color:#0D566E;"></i>
                                          </div>
                                          <div class="carousel-item">
                                            <i class="fa fa-circle" aria-hidden="true"  id="c1" style="color:#0D566E"></i>
                                
                                            <i class="fa fa-circle" aria-hidden="true"  id="c2" style="color:#0D566E"></i>
                                    
                                            <i class="fa fa-circle" aria-hidden="true"  id="c3" style="color:#0D566E;"></i>
                                            <i class="fa fa-circle" aria-hidden="true"  id="c3" style="color:#FFDF61;"></i>
                                          </div>
                                        </div>
                                      </div>
                          </small></center>
                            </div>		
                            <div class="col-md-5"  >
                            </div> 
                        
                            <div class="col-md-4" ></div> 
    
                    
                        <div class="col-md-4 mb-4" style="height:60px;border-radius:20px;border:2px solid #136384;border-style: dashed;overflow: hidden;" >
                            
                            <div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
                                <div class="carousel-inner">
                                  <div class="carousel-item active">
                                    <center><br>
                                        <font family="Segoe UI, Semibold" color="#0D556C"> STEP 1 : Quick TIPS for Joining a Summit</font>
                                    </center>
                                  </div>
                                  <div class="carousel-item">
                                    <center><br>
                                        <font family="Segoe UI, Semibold" color="#0D556C"> STEP 2 : Quick TIPS for Joining a Summit</font>
                                    </center>
                                  </div>
                                  <div class="carousel-item">
                                    <center><br>
                                        <font family="Segoe UI, Semibold" color="#0D556C"> STEP 3 : Quick TIPS for Joining a Summit</font>
                                    </center>
                                  </div>
                                  <div class="carousel-item">
                                    <center><br>
                                        <font family="Segoe UI, Semibold" color="#0D556C"> STEP 4 : Quick TIPS for Joining a Summit</font>
                                        
                                    </center>
                                  </div>
                                </div>
                              </div>
                        </div> 
    
                    </div>
                    <br>	<br>	<br>
    
              <div class="col-md-12" style="background-size: cover;height: 37%;"  >
                
                <div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators" >
                        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
                      </ol>
                    <div class="carousel-inner">
                      <div class="carousel-item active">
                        <div class="carousel-caption d-none d-md-block">
                            <center><br><br><br>
                                <font style="font-family:Segoe UI; font-size:40px;font-weight:bold" color="#FAFAFA">  
                            UPCOMING EVENTS
                        </center></font>
                          </div>	  
                        <img class="d-block w-100" src="../assets/user/images/bottom summit.png"  style="height: 80%;position: absolte;" alt="First slide">
                    
                      </div>
                      <div class="carousel-item">
                        <img class="d-block w-100" src="../assets/user/images/bottom summit.png"  style="height: 400px;position: absolte;" alt="Second slide">
                        <div class="carousel-caption d-none d-md-block">
                            <center><br><br><br>
                                <font style="font-family:Segoe UI; font-size:40px;font-weight:bold" color="#FAFAFA">  
                             EVENTS UPCOMING SOON...
                        </center></font>
                          </div>
                      </div>
                      <div class="carousel-item">
                        <img class="d-block w-100" src="../assets/user/images/bottom summit.png"  style="height: 80%;position: absolte;" alt="Third slide">
                        <div class="carousel-caption d-none d-md-block">
                            <center><br><br><br>
                                <font style="font-family:Segoe UI; font-size:40px;font-weight:bold" color="#FAFAFA">  
                            UPCOMING EVENTS
                        </center></font>
                          </div>
                      </div>
                      <div class="carousel-item">
                        <img class="d-block w-100" src="../assets/user/images/bottom summit.png"  style="height: 80%;position: absolte;" alt="Third slide">
                        <div class="carousel-caption d-none d-md-block">
                            <center><br><br><br>
                                <font style="font-family:Segoe UI; font-size:40px;font-weight:bold" color="#FAFAFA">  
                             EVENTS
                        </center></font>
                          </div>
                      </div>
                    </div>
                  </div>
    
    
    


<!--CONTENT BODY END -->



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
