<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="stag" %>
<html>

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
    <c:if test="${not  empty  error}">
                                    <script>
                                    alert("Email  Already Exists..! Try With Other One");
                                    </script>
</c:if>
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
    <div style="top:180px;right:10%;width:20% ;height:30%;background: transparent;position: absolute;z-index:1">
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
     
<center>

        <div class="col-md-4" style=" background-image: radial-gradient(#FFFFFF, #68C3FF );background-size: cover;height:320px;border-radius: 2em 2em 0em 0em;"  >
      <br><center>    
      <img src="../assets/user/images/Group 3734.png" style="height:250px; width:65%"></center>
       </div> 
       <div class="col-md-4" style="background-image: linear-gradient(#46B0C7, #334454 );background-size: cover;height: 360px;"  >
     <br>
   <br>

	 <form action="/summitsign" method="post">

     <div class="col-md-9" style="background: white;height:13%;border-radius: 10px;" >
        <input type="text" required id="inp" name="fname"  placeholder="FirstName*" >
    </div>
    <br>
    <div class="col-md-9" style="background: white;height:13%;border-radius: 10px;" >
        <input type="text" required id="inp"  name="lname" placeholder="Last Name*" >
    </div><br>
    <div class="col-md-9" style="background: white;height:13%;border-radius: 10px;" >
        <input type="email" required  id="inp" name="regemail"  placeholder="Email Id*" >
    </div>
    <br>
        <div class="col-md-9" style="background: white;height:13%;border-radius: 10px;" >
            <input type="password" required name="regpassword" maxlength="16" minlength="8" id="inp"  placeholder="password*" >
        </div>
    
    <center>
        <input type="submit" value="Register"  id="register" >
    </form>
    </center>
   </div> </center><br>

<div class="col-md-12" style="background-image:url('../assets/user/images/bottom summit.png');background-size: cover;height: 42%;"  >
    <center><br><br><br>
            <font style="font-family:Segoe UI; font-size:40px;font-weight:bold" color="#FAFAFA">  
        UPCOMING EVENTS
    </center></font>
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
