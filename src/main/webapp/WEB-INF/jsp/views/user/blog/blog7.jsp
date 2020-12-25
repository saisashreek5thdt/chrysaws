
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
		<link rel="stylesheet" href="../assets/user/bootstrap/css/bootstrap.css">
		<!-- Custom CSS -->
        <link rel="stylesheet" href="../assets/user/css/style.css">
      
        <link rel="stylesheet" href="../assets/user/css/blog.css">
		<!-- FontAwesome CSS -->
		<link rel="stylesheet" href="../assets/user/fontsfile:///G:/Chrysaellect%20MEEt/assets/user/images/footer/footer.png/css/all.css">
				<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"/>

  </head>
  <body style="overflow-x: hidden;background-color: #EEEEEE;">  
  <!-- NAV BAR BEGIN -->

<jsp:include page="../header/header.jsp" />


<!-- NAV BAR END -->


<!--SLIDER BEGIN-->
<div class="container-fluid">
<div class="row">
 <c:forEach items="${sliderList}" var="row">
                   <c:if test="${row.category=='blogs'}">

<div class="col-md-12"  id="blogbg" style="background-image:url('../assets/uploads/slider/${row.slider}')">>
    <div style="top:180px;right:10%;width:20% ;height:30%;background: transparent;position: absolute;z-index:1">
        <img class="d-block w-100" src="../assets/user/images/blogc.png"      >

    </div>

    </c:if >
                                  </c:forEach>
</div>
</div>

<!--SLIDER END -->


<!--CONTENT BODY BEGIN -->
<form>
<div class="container-fluid">
<div class="row" style="height:400px">
    <div class="col mid-12" style="background:#EEEEEE;"  >
		<section name="topics">



        <div class="container-fluid">
			<br>
            <div class="row">

                    <div class="col-md-2">

					</div>
				<div class="col-md-8" style="height:auto">

					<button class="but"  readonly style="text-transform: capitalize;">
						Top Topics</button>	&nbsp;


						<c:forEach items="${blogList}" var="rowt" >
<c:if test="${rowt.publish=='1'}">
	<c:set var="count" value="${count + 1}" scope="page"/>
			  <c:if test="${count<5}">





						<button class="but1" formaction="/blog7?blogId=${rowt.id}&view=${rowt.view}" formmethod="post" style="text-transform: capitalize;" >
								${fn:toLowerCase(rowt.title)}	 </button>&nbsp;


</c:if></c:if>

		</form></c:forEach>
			</div> </div> </div>

			<br><br>
			<div class="container-fluid">
				
				<div class="row" style="height:auto;">
					<div class="col-md-2">
					
					</div>
					<c:forEach items="${blogList}" var="rowt">
					 <c:if test="${rowt.id==id}">



					<div class="col-md-6" id="topicbody">
						<br><br>
						<center>

							<div class="col-md-10" id="topicimg" style="background-image: url('../assets/uploads/blogs/${rowt.cover}');">
								<div class="col" id="ribbon" style="width:60px">
                       
									<img src="../assets/user/images/eye.png" style="width:50%;height: 50%;position: absolute;top:6px;left:2px" > 
								
							   
									<p style="position: absolute;right:15%;font-size: 10px;top:27%">
										${rowt.view}</p>
							 </div>
							</div>
						</center>
						<center> 
							<p style="font-size: 21px;text-align: center;color: white;width:90%;text-transform: capitalize;">
							
									<b>	${fn:toLowerCase(rowt.title)}</b>
								<br>	<br>
								<small>
								<font style="font-size:15px;text-transform: ;">
							${rowt.about1}
						<br>

								</small>
				
								</p>			</center>

								<br>
								<div class="row"> 
								<div class="col-md-6" id="subimg">
								<center>
									<div class="col-md-10" id="subimg1" style="background-image: url('../assets/uploads/blogs/${rowt.image1}');">

										
									</div>

									</center>
								</div>
								<div class="col-md-6" id="subimg">
									<center>
										<div class="col-md-10" id="subimg1" style="background-image: url('../assets/uploads/blogs/${rowt.image2}');">
	
											
										</div>
	
										</center>
								</div> </div>

								<br>
								<center> 
									<p style="font-size: 12px;text-align: center;color: white;width:90%">
									
										<br>	
										<small> <font style="font-size:15px">
								${rowt.about2}
										</small>
						
										</p>			</center>
										<br>
										<div class="row">
											<div class="col-md-7"></div>
											<div class="col-md-5" style="height:200px">
											<div class="col" id="authorname">
												<center>
														<p style="font-size: 18px;text-align: left;color: white;width:90%;text-transform: capitalize;">
															${fn:toLowerCase(rowt.author)}<br><small> <small> 
															${fn:toLowerCase(rowt.author_details)}</small></small>
														</p>
												</center>
											</div>
											<div class="col" id="author" style="background-image: url('../assets/uploads/blogs/${rowt.author_image}');">

											</div>	
											</div>
										</div>

					</div>
					<div class="col-md-1">
					
					</div>
					<div class="col-md-10" id="seltop" style="height:320px;width:300px">
						<div class="vl"><center><br><br>
						  <p style="font-size: 33px;color:white;text-transform: capitalize;">		${fn:toLowerCase(rowt.title)}
						  </p>
						  </center>
							  </div>
							</c:if ></c:forEach>
					  
					  
			  </div>
									  
				</div>

		<br>


<!--CONTENT BODY END -->






<!--FOOTER BEGIN -->

<section id="ftr">
<!--FOOTER BEGIN -->

<jsp:include page="../footer/footer.jsp" />

<!--FOOTER END -->
</section>
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
