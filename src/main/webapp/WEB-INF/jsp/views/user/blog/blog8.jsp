

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
  <body style="overflow-x: hidden;background-color: #EEEEEE;" >
  <!-- NAV BAR BEGIN -->
<jsp:include page="../header/header.jsp" />
<!-- NAV BAR END -->


<!--SLIDER BEGIN-->
<div class="container-fluid">
<div class="row">
 <c:forEach items="${sliderList}" var="row">
                   <c:if test="${row.category=='blogs'}">

<div class="col-md-12"  id="blogbg" style="background-image:url('../assets/uploads/slider/${row.slider}')">>
    <div style="top:180px;right:10%;width:30% ;height:30%;background: transparent;position: absolute;z-index:1">
        <img class="d-block w-100" src="../assets/user/images/blogc.png"      >

    </div>

    </c:if >
                                  </c:forEach>
</div>
</div>


<!--SLIDER END -->

<form>
<!--CONTENT BODY BEGIN -->
<div class="container-fluid">
<div class="row">
    <div class="col mid-12" style="background:#EEEEEE;"  >

    <section name="topics">


        <div class="container-fluid">
			<br>
            <div class="row">

                    <div class="col-md-2">

					</div>
				<div class="col-md-8" style="height:auto">

					<button class="but"  readonly formaction="">
						Top Topics</button>	&nbsp;


						<c:forEach items="${blogList}" var="rowt">
     <c:if test="${rowt.publish=='1'}">
	<c:set var="count" value="${count + 1}" scope="page"/>
			  <c:if test="${count<5}">





						<button class="but1" formaction="/blogtop?id=${rowt.id}" formmethod="post" style="text-transform: capitalize;" >
								${fn:toLowerCase(rowt.title)}	 </button>&nbsp;


</c:if></c:if>

		</form></c:forEach>

        </div> </div> </div>

    </div>

    </div>
<br>


                <div class="row" style="height:300px">

        <div class="col-md-2">

        </div>


        <div class="col-md-6" id="back">
         <c:forEach items="${blogList}" var="rowt">

	  <c:if test="${rowt.id==bid}">
    <c:if test="${rowt.publish=='1'}">
          <div id="inimg" style="background-image:url('../assets/uploads/blogs/${rowt.cover}' ); ">
        </c:if>
    </c:if>

        </c:forEach>
      </div>


      <div class="col" id="outdiv"  >
        <div class="col" id="outdivcontent" style="width:40%;text-align:center"  >

             <c:forEach items="${blogList}" var="rowt">
                          <c:if test="${rowt.id==bid}">
                              <c:if test="${rowt.publish=='1'}">
<font color="white"  style="text-transform: capitalize;font-size:20px;font-family: Segoe UI semibold;"><br>	${fn:toLowerCase(rowt.title)}<small>
</font>
<br>
          <font color="white" style="font-size:10px" > ${fn:substring(rowt.about1, 0, 100)}</font>
</small>


</font>
 </c:if> </c:if>

        </c:forEach>

        </div>
        <div class="col" id="readdiv"  >
            <br><br><center>

             <c:forEach items="${blogList}" var="rowt">
                        <c:if test="${rowt.id==bid}">
               <form action="/blog7" method="post">
                                    <input type="hidden" value="${rowt.id}" name="blogId">
                                      <input type="hidden" value="${rowt.view}" name="view">
                        <button style="color: #455A64;font-size: 9px;background:none" >ReadMore</button> </center>

                                    </form>
                                     </c:if>

                                            </c:forEach>
        </div>

    </div>
        </div>
        <div class="col-md-1">

        </div>
        <div class="col-md-2" id="seltop">
  <div class="vl"><center><br><br>
    <p style="font-size: 33px;color:white;text-transform: capitalize;">
     <c:forEach items="${blogList}" var="rowt">
                              <c:if test="${rowt.id==bid}">
 Selected Topics

    	    </c:if>

                                                    </c:forEach>
    </p>
    </center>
        </div>



                </div>

            </div>
        </div>

         <div class="row" style="height:120px" id="hide">

            </div><br><br>


            <div class="row" style="height:300px;">
<c:forEach items="${blogList}" var="rowt">
    <c:if test="${rowt.publish=='1'}">

            <div class="col-md-3" id="group" >


                <div class="col-md-12"  id="group1" style="background-image: url('../assets/uploads/blogs/${rowt.cover}');">
                    <div class="col" id="ribbon" style="width:60px">

                            <img src="../assets/user/images/eye.png" style="width:50%;height: 50%;position: absolute;top:6px;left:2px" >


                            <p style="position: absolute;right:2%;font-size: 10px;top:27%">
                                ${rowt.view}</p>
                     </div>

                </div>

                <div class="col-md-10"  id="group2" >
                    <center>
                        <font color="white" style="font-size: 30px;text-transform: capitalize;">

	${fn:toLowerCase(rowt.title)}
                        </font><br>

                        <font color="white" style="font-size:12px" > ${fn:substring(rowt.about1, 0, 80)}</font> <br><br>
   <form action="/blog7" method="post">
                        <input type="hidden" value="${rowt.id}" name="blogId">
                               <input type="hidden" value="${rowt.view}" name="view">
                        <button style="color:#85E961;background:none;" > <small>ReadMore</small> </button>

                        </form>
                  </center>
                </div>



                            </div>
</c:if>
  </c:forEach>
<br><br><br><br><br>




</section>









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
