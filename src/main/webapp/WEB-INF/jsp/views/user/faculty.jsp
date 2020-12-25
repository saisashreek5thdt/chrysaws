
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="stag" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<title>Chrysaellect M.E.E.T</title>
		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="assets/user/bootstrap/css/bootstrap.css">
		<!-- Custom CSS -->
        <link rel="stylesheet" href="assets/user/css/style.css">
        <link rel="stylesheet" href="assets/user/css/faculty.css">
		<!-- FontAwesome CSS -->
		<link rel="stylesheet" href="assets/user/fontsfile:///G:/Chrysaellect%20MEEt/assets/user/images/footer/footer.png/css/all.css">
				<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"/>

  </head>
  <body style="overflow-x: hidden;height:1000px;background-image: url('assets/user/images/69.png');background-size: cover;">
  <!-- NAV BAR BEGIN -->
<jsp:include page="header/header.jsp" />
<!-- NAV BAR END -->


<!--SLIDER BEGIN-->
<div class="container-fluid">
<div class="row">
<c:forEach items="${sliderList}" var="row">
                   <c:if test="${row.category=='faculty'}">
<div class="col-md-12"  id="facultybg"  style="background-image:url('../assets/uploads/slider/${row.slider}')">
    <div style="top:180px;right:10%;width:30% ;height:30%;background: transparent;position: absolute;">
        <img class="d-block w-100" src="assets/user/images/faculty.png"      >

    </div>


    </c:if >
                                            </c:forEach>
</div>
</div>


<!--SLIDER END -->


<!--CONTENT BODY BEGIN -->
<div class="container-fluid">
<div class="row" style="height:100px">
    <div class="col-md-9">

    </div>

    <div class="col-md-2">
        <img src="assets/user/images/crew.png" style="width:250px;height:140px;">
    </div>
</div>
<br><br><br>
         <c:forEach items="${facList}" var="row">
         <c:set var="count" value="${count + 1}" scope="page"/>
           <c:if test="${count%2!=0}">






<div class="row justify-content-md-center">
    <div class="col-md-3" style="height:300px">		<div class="col" id="facname" style="background-image: url('assets/user/images/Group\ 2836.png');">
		<font style="color:#1DA8F4 ; font-size:26px;position: relative;top:10%;left:10%;text-transform: capitalize;">


${fn:toLowerCase(row.firstname)}
${fn:toLowerCase(row.lastname)}
		</font>


</div>
		<div class="col" id="facbg" style="background-image: url('assets/user/images/facultycomp.png');">
			<img src="assets/uploads/${row.image}" style="position: relative;height: 240px;width:230px;left:2%;bottom:40%">
</div>

</div>
    <div class="col-md-1">

            </div>
    <div class="col-md-6" id="facultyinfo" style="background-image:url('assets/user/images/facultyinfo.png');background-size:87%">

<center>
    <br>

 <p style="font-size:20px">
 <font style="font-size:20px">
       ${row.about}  </font></p>
</center>
  </p>
</center>


    </div>
</div>

<br><br>

  </c:if >
<br><br>




  <c:if test="${count%2==0}">

<div class="row justify-content-md-center flex-column-reverse flex-md-row">


    <div class="col-md-6" id="facultyinfo" style="background-image:url('assets/user/images/facultyinfo.png');background-size:87%">

<center>
    <br>
 <p style="font-size:20px">
 <font style="font-size:20px">
       ${row.about}  </font></p>
</center>


	</div>
	<div class="col-md-1">

	</div>
	<div class="col-md-3  " style="height:300px">
		<div class="col" id="facname" style="background-image: url('assets/user/images/Group\ 2836.png');">
		<font style="color:#1DA8F4 ; font-size:26px;position: relative;top:10%;left:10%;text-transform: capitalize;">


${fn:toLowerCase(row.firstname)}
		</font>

		</div>
		<div class="col" id="facbg" style="background-image: url('assets/user/images/facultycomp.png');">
			<img src="assets/uploads/${row.image}" style="position: relative;height: 240px;width:230px;left:2%;bottom:40%"></div>

		</div>
</div>
  <br>
  <br><br>
      <br>
  </c:if >
 </c:forEach>




<!--CONTENT BODY END -->






<!--FOOTER BEGIN -->

<section id="ftr">
<!--FOOTER BEGIN -->

<jsp:include page="footer/footer.jsp" />

<!--FOOTER END -->
</section>

<!--FOOTER END -->

		<!-- Bootstrap JS -->
		<script src="assets/user/bootstrap/js/jquery-3.5.1.slim.js"></script>
		<script src="assets/user/bootstrap/js/popper.js"></script>
		<script src="assets/user/bootstrap/js/bootstrap.js"></script>

		<script src="assets/user/js/auto_complete.js"></script>

		<!-- FontAwesome JS -->
		<script src="assets/user/fonts/js/all.js"></script>

</body>
</html>
