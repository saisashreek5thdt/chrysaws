

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="stag" %>

<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:useBean id="now" class="java.util.Date" />
<fmt:formatDate var="year" value="${now}" pattern="yyyy" />
<fmt:formatDate var="month" value="${now}" pattern="MM" />
<fmt:formatDate var="day" value="${now}" pattern="dd" />
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




<!--CONTENT BODY BEGIN -->
<div class="container-fluid">
<div class="row">
    <div class="col mid-12" style="background:#EEEEEE;"  >


         <div class="row" style="height:120px" id="hide">

            </div><br><br>


            <div class="row justify-content-md-center" style="height:auto;">

           <table style="height:450px; width:60%;background:#53s;border-top:2px dotted #000" align="center">
           <tr>
           <td style="text-align:left;color:#000;font-size:20px;width:50%;border-bottom:1px dotted #000">
        Product Name :
</td>

             <td style="text-align:left;color:#000;font-size:20px;width:50%;border-bottom:1px dotted #000">
      ${productName}
</td>
</tr>
           <tr>
           <td style="text-align:left;color:#000;font-size:20px;width:50%;border-bottom:1px dotted #000">
        PAID / FREE:
</td>
             <td style="text-align:left;color:#000;font-size:20px;width:50%;border-bottom:1px dotted #000">
      ${type}
</td>
</tr>

           <tr>
           <td style="text-align:left;color:#000;font-size:20px;width:50%;border-bottom:1px dotted #000">
        COURSE / RESOURCE
</td>
             <td style="text-align:left;color:#000;font-size:20px;width:50%;border-bottom:1px dotted #000">
      ${category}
</td>
</tr>


           <tr>
           <td style="text-align:left;color:#000;font-size:20px;width:50%;border-bottom:1px dotted #000">
        EMAIL ID :
</td>
             <td style="text-align:left;color:#000;font-size:20px;width:50%;border-bottom:1px dotted #000">
      ${useremail}
</td>
</tr>


           <tr>
           <td style="text-align:left;color:#000;font-size:20px;width:50%;border-bottom:1px dotted #000">
        ORDER ID :
</td>
             <td style="text-align:left;color:green;font-size:20px;width:50%;border-bottom:1px dotted #000">
      <b>${orderId}</b>
</td>
</tr>

         <tr>
           <td style="text-align:left;color:#000;font-size:20px;width:50%;border-bottom:1px dotted #000">
        Amount (In Rupees):
</td>
             <td style="text-align:left;color:#000;font-size:20px;width:50%;border-bottom:1px dotted #000">
      ${fee}-/
</td>
</tr>


        <tr>

           <td style="text-align:left;color:#000;font-size:20px;width:50%;border-bottom:1px dotted #000">
        Purchasing Date:
</td>
             <td style="text-align:left;color:#000;font-size:20px;width:50%;border-bottom:1px dotted #000">
      ${date}
</td>
</tr>


        <tr>

           <td style="text-align:left;color:#000;font-size:20px;width:50%;border-bottom:1px dotted #000">
        Total Amount (Including GST):
</td>
             <td style="text-align:left;color:red;font-size:22px;width:50%;border-bottom:1px dotted #000">
     <b> ${total}-/ </b>
</td>
</tr>

        <tr>

           <td style="text-align:left;color:#000;font-size:20px;width:50%;border-bottom:0px dotted #000">

</td>
             <td style="text-align:left;color:red;font-size:22px;width:50%;border-bottom:0px dotted #000">
                <c:if test="${type=='Free' || type=='free' }">


 <form action="/purchase"  method="post">


                     <input type="hidden" value="${cartId}" name="cartId">
                           <input type="hidden" value="${productName}" name="productName">
                           <input type="hidden" value="${type}" name="type">
                           <input type="hidden" value="${category}" name="category">
                           <input type="hidden" value="${image}" name="image">
                           <input type="hidden" value="${user}" name="user">
                           <input type="hidden" value="${fee}" name="fee">
                             <input type="hidden" value="${date}" name="date">
   <input type="hidden" value="${orderId}" name="orderId">




     <button style="color:#fff;background:#177;width:150px;height:40px;border-radius:10px;" >
     <small>Enroll Now</small> </button>

</form>
  </c:if >

                 <c:if test="${type=='Paid' || type=='paid' }">


  <form action="/purchase"  method="post">

         <input type="hidden" value="${cartId}" name="cartId">
                             <input type="hidden" value="${productName}" name="productName">
                             <input type="hidden" value="${type}" name="type">
                             <input type="hidden" value="${category}" name="category">
                             <input type="hidden" value="${image}" name="image">
                             <input type="hidden" value="${user}" name="user">
                             <input type="hidden" value="${fee}" name="fee">
                               <input type="hidden" value="${date}" name="date">
     <input type="hidden" value="${orderId}" name="orderId">
       <button style="color:#fff;background:#177;width:150px;height:40px;border-radius:10px;" >
       <small>Purchase Now</small> </button>

  </form>
    </c:if >
</td>
</tr>
           </table>

</div>
  <div class="row" style="height:120px" id="hide">

            </div><br><br>
</section>









<!--CONTENT BODY END -->






<!--CONTENT BODY BEGIN -->
<div class="container-fluid">
<div class="row">
    <div class="col mid-12" style="background:#EEEEEE;"  >



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
