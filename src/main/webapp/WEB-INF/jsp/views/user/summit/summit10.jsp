
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
  <body style="overflow-x: hidden;height:50%">  
  <!-- NAV BAR BEGIN -->
<jsp:include page="../header/header.jsp" />
<!-- NAV BAR END -->


<!--SLIDER BEGIN-->
<div class="container-fluid">
<div class="row">
<c:forEach items="${sliderList}" var="row">
                   <c:if test="${row.category=='summit'}">

<div class="col-md-12"  id="summitbg" style="background-image:url('../assets/uploads/slider/${row.slider}')">
    <div style="top:180px;right:20%;width:20% ;height:30%;background: transparent;position: absolute;">
        <img  src="../assets/user/images/Group 50.png"      >

    </div>

 </c:if >
                                        </c:forEach>
</div>
</div>

<!--SLIDER END -->


<!--CONTENT BODY BEGIN -->
<div class="container-fluid">
    <div class="row" style="background:#ECECB3;height: 100px;overflow: hidden;" >
      
        <div class="col-md-4 " id="panel1">
            <p style="width:50%;font-size:16px;font-family: Segoe UI semibold;color: #707070;left:10%;position: relative;">  
                Title of the summit ongoing
                     Time and Date</p>
        </div>
        <div class="col-md-2" id="panel2">

            <div id="topcirc">
<img src="../assets/user/images/playic.png" style="position: relative;top:17%;left:15%">

            </div>
            <p style="width:90%;font-size:18px;font-family: Segoe UI semibold;color: #FFEE00;left:20%;top:20%;position: relative;">  
                <a href="#" style="color: #FFEE00;">     Join Summit Now   </a>
            </p>
        </div>
        <div class="col-md-1" id="panel3">
            <p style="width:40%;font-size:16px;font-family: Segoe UI semibold;color: #707070;left:30%;top:5%;position: relative;">  
                <small> <small>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;UPCOMING</small></small><br>SUMMITS
            </p>
        </div>
        <div class="col-md-4" id="panel4">
            <p  style="width:30%;font-size:16px;font-family: Segoe UI semibold;text-align:center;color: #707070;left:30%;position: relative;">  
                Next summit Title Time and Date
</p>
        </div>
        
    </div>  

</div>
<div class="container-fluid">
<div class="row">

    <div class="col-md-12" style="background:#fff;"  >
        <br>
            <br>
               <center>  
                <div class="col-md-11" id="videopanel">
                  <img src="../assets/user/images/playic.png" style="left:1%;position: absolute;top:17%">
                       <p style="font-size:19px;font-family: Segoe UI semibold;color: #fff;left:80px;top:27%;position: absolute;">  
                           New Videos
                        </p>
                 </div>  </center>
            <br>

           
            <table width=8% align="left" >
             <tr>
                 <td> 
                 <br>
                 </tr></td>
                 </table>
            <table width=80% >
                <tr>
                    <td> 
               
<div class="row" >


<div class="col-md-3" id="boxnew">
<center>

<div class="col-md-11" id="boxin">

 <div class="boxcir">
     <img src="../assets/user/images/Icon material-slow-motion-video.png" style="top:17%;position: relative;width:50%;height:50%">
     <br>
     <font style="color:#4E4747;font-family:Segoe UI, semibold;font-size: 12px;top:13%;position: relative;">
       New
   </font>

</div>
<img src="../assets/user/images/1103 [Converted].png" style="height:75%;width:85%">
    <p style="width:50%;font-size:14px;font-family: Segoe UI semibold;text-align:center;color: #A2FF00;position: relative;top:-4%">  
     <br><a href="#" style="color: #A2FF00;">    Title Topic
         Name of the Person</a>
     </p>
</div>
</center>
</div>

<div class="col-md-3"  id="boxnew"  >
 <center>

     <div class="col-md-11" id="boxin">
         <div class="boxcir">
             <img src="../assets/user/images/Icon material-slow-motion-video.png" style="top:14%;position: relative;width:50%;height:50%"><br>
             <font style="color:#4E4747;font-family:Segoe UI, semibold;font-size: 12px;top:13%;position: relative;">
               New
           </font>
           </div>
           <img src="../assets/user/images/1103 [Converted].png" style="height:75%;width:85%">
           <p style="width:50%;font-size:14px;font-family: Segoe UI semibold;text-align:center;color: #A2FF00;position: relative;top:-4%">  
            <br><a href="#" style="color: #A2FF00;">    Title Topic
                Name of the Person</a>
            </p>
     </div>
 </center>
</div>

<div class="col-md-3"  id="boxnew"  >
 <center>
     <div class="col-md-11" id="boxin">
         <div class="boxcir">
             <img src="../assets/user/images/Icon material-slow-motion-video.png" style="top:14%;position: relative;width:50%;height:50%"><br>
             <font style="color:#4E4747;font-family:Segoe UI, semibold;font-size: 12px;top:13%;position: relative;">
               New
           </font>
           </div>
           <img src="../assets/user/images/1103 [Converted].png" style="height:75%;width:85%">
           <p style="width:50%;font-size:14px;font-family: Segoe UI semibold;text-align:center;color: #A2FF00;position: relative;top:-4%">  
            <br><a href="#" style="color: #A2FF00;">    Title Topic
                Name of the Person</a>
            </p>
     </div>
 </center>
</div>

<div class="col-md-3"  id="boxnew"  >
 <center>
     <div class="col-md-11" id="boxin">
         <div class="boxcir">
             <img src="../assets/user/images/Icon material-slow-motion-video.png" style="top:14%;position: relative;width:50%;height:50%"><br>
             <font style="color:#4E4747;font-family:Segoe UI, semibold;font-size: 12px;top:13%;position: relative;">
               New
           </font>
           </div>
           <img src="../assets/user/images/1103 [Converted].png" style="height:75%;width:85%">
           <p style="width:50%;font-size:14px;font-family: Segoe UI semibold;text-align:center;color: #A2FF00;position: relative;top:-4%">  
            <br><a href="#" style="color: #A2FF00;">    Title Topic
                Name of the Person</a>
            </p>
     </div></table>
 </center>
</div> 

</div>

<br>
<br>

<center> 
<div class="col-md-11" id="videopanel">
 <img src="../assets/user/images/playic.png" style="left:1%;position: absolute;top:17%">
    <p style="font-size:19px;font-family: Segoe UI semibold;color: #fff;left:80px;top:27%;position: absolute;">  
             Past Videos
  </p>
</div> 
</center>

<br>
   <br>




   <table width=8% align="left" >
     <tr>
         <td> 
         <br>
         </tr></td>
         </table>
    <table width=80% >
        <tr>
            <td> 

  
   <div class="row" >


     <div class="col-md-3" id="boxnew">
     <center>
         
      <div class="col-md-11" id="boxin" >
       <div class="lockbox">
<img src="../assets/user/images/Icon feather-lock.png" id="lock">
       </div>
     <p style="width:50%;font-size:14px;font-family: Segoe UI semibold;text-align:center;color: #00FFF6;position: relative;top:75%">
       <br>
        <a href="#" style="color: #00FFF6;">    Title Topic
                Name of the Person</a>
        </p>
         </div>
     </center>
      </div>
     
         <div class="col-md-3"  id="boxnew" >
             <center>
         
                 <div class="col-md-11" id="boxin">
                     <div class="lockbox">
       <img src="../assets/user/images/Icon feather-lock.png" id="lock">
                     </div>
                  <p style="width:50%;font-size:14px;font-family: Segoe UI semibold;text-align:center;color: #00FFF6;position: relative;top:75%">
                      <br>
                      <a href="#" style="color: #00FFF6;">    Title Topic
                              Name of the Person</a>
                      </p>
                       </div>
             </center>
         </div>
     
         <div class="col-md-3"  id="boxnew"  >
             <center>
                 <div class="col-md-11" id="boxin">
                     <div class="lockbox">
       <img src="../assets/user/images/Icon feather-lock.png" id="lock">
                     </div>
                   <p style="width:50%;font-size:14px;font-family: Segoe UI semibold;text-align:center;color: #00FFF6;position: relative;top:75%">
                       <br>
                      <a href="#" style="color: #00FFF6;">    Title Topic
                              Name of the Person</a>
                      </p>
                       </div>
             </center>
         </div>
     
         <div class="col-md-3"  id="boxnew"  >
             <center>
                 <div class="col-md-11" id="boxin">
                     <div class="lockbox">
       <img src="../assets/user/images/Icon feather-lock.png" id="lock">
                     </div>
                    <p style="width:50%;font-size:14px;font-family: Segoe UI semibold;text-align:center;color: #00FFF6;position: relative;top:75%">
                       <br>
                      <a href="#" style="color: #00FFF6;">    Title Topic
                              Name of the Person</a>
                      </p>
                       </div>
             </center>
         </div> 
     
     </div>
     

<br>
<br> 



   <div class="row" >


     <div class="col-md-3" id="boxnew">
     <center>
         
      <div class="col-md-11" id="boxin">
       <div class="lockbox">
<img src="../assets/user/images/Icon feather-lock.png" id="lock">
       </div>
       <br>
        <p style="width:50%;font-size:14px;font-family: Segoe UI semibold;text-align:center;color: #00FFF6;position: relative;top:75%">
               Title Topic
                         Name of the Person
                 </p>
         </div>
     </center>
      </div>
     
         <div class="col-md-3"  id="boxnew" >
             <center>
         
                 <div class="col-md-11" id="boxin">
                     <div class="lockbox">
       <img src="../assets/user/images/Icon feather-lock.png" id="lock">
                     </div>
                 <p style="width:50%;font-size:14px;font-family: Segoe UI semibold;text-align:center;color: #00FFF6;position: relative;top:75%">
                    <br>
                      <a href="#" style="color: #00FFF6;">    Title Topic
                              Name of the Person</a>
                      </p>
                       </div>
             </center>
         </div>
     
         <div class="col-md-3"  id="boxnew"  >
             <center>
                 <div class="col-md-11" id="boxin">
                     <div class="lockbox">
       <img src="../assets/user/images/Icon feather-lock.png" id="lock">
                     </div>
                   <p style="width:50%;font-size:14px;font-family: Segoe UI semibold;text-align:center;color: #00FFF6;position: relative;top:75%">
                      <br>
                      <a href="#" style="color: #00FFF6;">    Title Topic
                              Name of the Person</a>
                      </p>
                       </div>
             </center>
         </div>
     
         <div class="col-md-3"  id="boxnew"  >
             <center>
                 <div class="col-md-11" id="boxin">
                     <div class="lockbox">
       <img src="../assets/user/images/Icon feather-lock.png" id="lock">
                     </div>
                  <p style="width:50%;font-size:14px;font-family: Segoe UI semibold;text-align:center;color: #00FFF6;position: relative;top:75%">
                     <br>
                      <a href="#" style="color: #00FFF6;">    Title Topic
                              Name of the Person</a>
                      </p>
                       </div></table>
             </center>
         </div> 
     
     </div>
     


   <br>

<section name="upcomg"> 
<div class="col-md-12" style="background-image:url('../assets/user/images/bottom summit.png');background-size: cover;height: 330px;"  >
<center>
   <br><br><br>
     <font style="font-family:Segoe UI; font-size:40px;font-weight:bold" color="#FAFAFA">  
         UPCOMING EVENTS
         </center></font>
</div> 
</section>



<!--CONTENT BODY END -->


</div>
</div>
</div>
</div>
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
