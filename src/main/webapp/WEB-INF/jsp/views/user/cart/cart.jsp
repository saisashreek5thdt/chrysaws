

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

  <style>

  input:focus{


  outline:none;
  border:none;
  }
  </style>
  <body style="overflow-x: hidden;background-color: #EEEEEE;" >
  <!-- NAV BAR BEGIN -->
<jsp:include page="../header/header.jsp" />
<!-- NAV BAR END -->


<div class="row" style="height:200px;background:#fff"></div>

<!--CONTENT BODY BEGIN -->

<div class="row">
    <div class="col-md-12" style="background:#fafafa;height:700px"  >
<div class="row justify-content-md-center ">

<div class="col-md-6" style="background:#eee;height:auto"  >
<br>
<font style="color:red; font-size:45px; font-family:Segoe UI semibold">
&nbsp;&nbsp;Shopping Cart

</font>
<br><br style="line-height:.8">

<hr/ style="  border-top: 1px solid #afafaf;">
<div class="row justify-content-md-center ">
<table style="height:auto; width:100% ;">

<tr  style="border-bottom:2px solid #afafaf">
<td style="width:10%;height:40px;">

</td>
<td style="width:25%;height:40px;">


<font style="color:green; font-size:20px; font-family:Segoe UI semibold">
&nbsp;&nbsp;Course/ Module


</td>
<td style="width:35%;height:40px;">

<font style="color:green; font-size:20px; font-family:Segoe UI semibold">
&nbsp;&nbsp;Product Name

</font>

</td>
<td style="width:20%;height:40px;">
<font style="color:green; font-size:20px; font-family:Segoe UI semibold">
&nbsp;&nbsp;Type

</font>
</td>
<td style="width:10%;height:40px;">

</td>

</tr>




 <c:forEach items="${cartList}" var="row">
           <c:if test="${row.user==userid && row.status=='0'}">

<tr>
<td style="width:10%;height:40px;">

<center>

           <c:if test="${row.checked=='1'}">
    <form action="/checkcarts" id="forms" method="post">
                <input type="hidden" value="${row.id}" name="id">

<button   class="checkbox" style=" width: 25px;color:green;   height: 30px;">
<i class="far fa-check-circle"></i>
</button>
</form>

</c:if >


           <c:if test="${row.checked=='0'}">
    <form action="/checkcart" id="forms" method="post">
                <input type="hidden" value="${row.id}" name="id">

<button   class="checkbox" style=" width: 25px;color:green;   height: 30px;">
<i class="far fa-times-circle"></i>
</button>
</form>

</c:if >

</center>

</td>
<td style="width:25%;height:40px;">


<font style="color:#707070; font-size:18px;font-family:Segoe UI semibold">
&nbsp;&nbsp; ${row.category}

</font>


</td>
<td style="width:35%;height:40px;">

<font style="color:#707070; font-size:18px;font-family:Segoe UI semibold; text-transform:capitalize">
&nbsp;&nbsp; ${fn:toLowerCase(row.name)}

</font>

</td>
<td style="width:20%;height:40px;">
<font style="color:#707070; font-size:18px;font-family:Segoe UI semibold; text-transform:capitalize">
&nbsp;&nbsp; ${fn:toLowerCase(row.type)}

</font>
</td>
<td style="width:10%;height:40px;">
<center><form method="get">
<input type="hidden" value="${row.id}" name="id">
<button formaction="/deleteitem" onclick="return confirm('Do you want to delete?');" style="height:30px;box-shadow:1px 1px 1px 1px #afafaf;text-align:center; width:95%; font-size:10px;color:#fff; background:#EB4C5E">

DELETE
</button>
</form>
</center>
</td>

</tr>



    </c:if >
     </c:forEach>


</table>











</div>
</div>

<div class="col-md-4" style="background:#eee;height:680px"  >

<br><br>
    <br>
<br>
<div class="row justify-content-md-center ">
<c:forEach items="${cartList}" var="row">
 <c:if test="${row.user==userid && row.status=='0' }">
 <c:set var="counts" value="${counts + row.fee}" scope="page"/>

   </c:if >
                              <c:if test="${row.user==userid && row.status=='0' && row.checked=='1'}">
  <c:set var="check" value="${check + 1}" scope="page"/>
               <c:set var="orderid" value="ORDER${userid}${counts}${row.id}" scope="page"/>
                </c:if >
                 </c:forEach>
                             <c:if test="${check<1}">

<div class="col-md-9" style="display:none;height:540px;background:white;border-radius:20px;box-shadow:2px 2px 2px 3px #afafaf"  >


<font style="color:#000; font-size:30px;font-family:Segoe UI semibold">

<br style="line-height:.8">

&nbsp;&nbsp;Product Order ID
<center>
<hr/ style="  border-top: 1px solid #afafaf;width:92%">
</center>
<br style="line-height:.3">
<small>
&nbsp;&nbsp;
${orderid}
</small>

<br style="line-height:.3"><br style="line-height:.3">

&nbsp;&nbsp;Total Amount

<center>
<hr/ style="  border-top: 1px solid #afafaf;width:92%">
</center>
<br style="line-height:.3">
<small> <c:forEach items="${cartList}" var="row">
                  <c:if test="${row.user==userid && row.status=='0' && row.checked=='1'}">
   <c:set var="count" value="${count + row.fee}" scope="page"/>


    </c:if >
     </c:forEach>

&nbsp;&nbsp; &#8377;  ${count}
</small>



<br style="line-height:.3"><br style="line-height:.3">

&nbsp;&nbsp;Apply Coupon

<center>
<hr/ style="  border-top: 1px solid #afafaf;width:92%">
</center>
<br style="line-height:.3">
<small>
<form action="" method="get">
&nbsp;&nbsp;
<input type="text" style="height:30px;box-shadow:2px 2px 2px 2px #afafaf;text-align:center; width:40%; border-radius:20px;color:#afafaf" placeholder="Add Coupon Code">
&nbsp;&nbsp;
<button style="height:30px;box-shadow:2px 2px 2px 2px #afafaf;text-align:center; width:30%; font-size:18px;border-radius:20px;color:#fff; background:orange">

APPLY
</button>
</form>
</small>




<br style="line-height:.2">

&nbsp;&nbsp;Grand Total

<center>
<hr/ style="  border-top: 1px solid #afafaf;width:92%">
</center>
<br style="line-height:.4">
<small> <c:forEach items="${cartList}" var="row">
                  <c:if test="${row.user==userid && row.status=='0' && row.checked=='1'}">
   <c:set var="counts" value="${counts + row.fee}" scope="page"/>


    </c:if >
     </c:forEach>

&nbsp;&nbsp; &#8377;  ${counts}
</small>



<br style="line-height:.3"><br style="line-height:.3">
<center>
<hr/ style="  border-top: 1px solid #afafaf;width:92%">
<br style="line-height:.3">
 <c:forEach items="${cartList}" var="row">
                  <c:if test="${row.user==userid && row.status=='0' && row.checked=='1'}">

<form action="/enrolls" method="get">
        <input type="hidden" value="${row.id}" name="cartId">
     <input type="hidden" value="${row.name}" name="productName">
      <input type="hidden" value="${row.type}" name="type">
          <input type="hidden" value="${row.category}" name="category">
               <input type="hidden" value="${row.image}" name="image">
         <input type="hidden" value="${row.user}" name="user">
          <input type="hidden" value="${row.fee}" name="fee">
    <input type="hidden" value="${day}/${month}/${year}" name="date">
        </c:if >
         </c:forEach>
<button style="height:50px;box-shadow:2px 2px 2px 2px #afafaf;text-align:center; width:90%; font-size:30px;border-radius:20px;color:#fff; background:#EB4C5E">
CHECKOUT&nbsp;&nbsp;<i class="far fa-arrow-alt-circle-right"></i>
</button>
</form>


</center>
&nbsp;&nbsp;<button style="height:25px;box-shadow:2px 2px 2px 2px #afafaf;text-align:center; width:30%; font-size:16px;border-radius:20px;color:#fff; background:orange">

Cancel
</button><br style="line-height:.9">
</font>
</div>
</div>
 </c:if >
                     <c:if test="${check>0}">

<div class="col-md-9" style="height:540px;background:white;border-radius:20px;box-shadow:2px 2px 2px 3px #afafaf"  >

<font style="color:#000; font-size:30px;font-family:Segoe UI semibold">

<br style="line-height:.8">

&nbsp;&nbsp;Product Order ID
<center>
<hr/ style="  border-top: 1px solid #afafaf;width:92%">
</center>
<br style="line-height:.3">
<small>
&nbsp;&nbsp;
${orderid}
</small>

<br style="line-height:.3"><br style="line-height:.3">

&nbsp;&nbsp;Total Amount

<center>
<hr/ style="  border-top: 1px solid #afafaf;width:92%">
</center>
<br style="line-height:.3">
<small> <c:forEach items="${cartList}" var="row">
                  <c:if test="${row.user==userid && row.status=='0' && row.checked=='1'}">
   <c:set var="count" value="${count + row.fee}" scope="page"/>


    </c:if >
     </c:forEach>

&nbsp;&nbsp; &#8377;  ${count}
</small>



<br style="line-height:.3"><br style="line-height:.3">

&nbsp;&nbsp;Apply Coupon

<center>
<hr/ style="  border-top: 1px solid #afafaf;width:92%">
</center>
<br style="line-height:.3">
<small>
<form action="" method="get">
&nbsp;&nbsp;
<input type="text" style="height:30px;box-shadow:2px 2px 2px 2px #afafaf;text-align:center; width:40%; border-radius:20px;color:#afafaf" placeholder="Add Coupon Code">
&nbsp;&nbsp;
<button style="height:30px;box-shadow:2px 2px 2px 2px #afafaf;text-align:center; width:30%; font-size:18px;border-radius:20px;color:#fff; background:orange">

APPLY
</button>
</form>
</small>




<br style="line-height:.2">

&nbsp;&nbsp;Grand Total

<center>
<hr/ style="  border-top: 1px solid #afafaf;width:92%">
</center>
<br style="line-height:.4">
<small>

&nbsp;&nbsp; &#8377; ${count}
</small>



<br style="line-height:.3"><br style="line-height:.3">
<center>
<hr/ style="  border-top: 1px solid #afafaf;width:92%">
<br style="line-height:.3">
 <c:forEach items="${cartList}" var="row">
                  <c:if test="${row.user==userid && row.status=='0' && row.checked=='1'}">

<form action="/purchase" method="get">
        <input type="hidden" value="${row.id}" name="cartId">
     <input type="hidden" value="${row.name}" name="productName">
      <input type="hidden" value="${row.type}" name="type">
          <input type="hidden" value="${row.category}" name="category">
               <input type="hidden" value="${row.image}" name="image">
          <input type="hidden" value="${row.fee}" name="fee">


        </c:if >
         </c:forEach><br style="line-height:.9">
           <input type="hidden" value="${counts}" name="total">
          <input type="hidden" value="${userid}" name="user">
             <input type="hidden" value="${day}/${month}/${year}" name="date">
                 <input type="hidden" value="${orderid}" name="orderId">
<button style="height:50px;box-shadow:2px 2px 2px 2px #afafaf;text-align:center; width:90%; font-size:30px;border-radius:20px;color:#fff; background:#EB4C5E">
CHECKOUT&nbsp;&nbsp;<i class="far fa-arrow-alt-circle-right"></i>
</button>
</form>


</center>
<br style="line-height:.9">
</font>
</div>
</div>
  </c:if >
</div>


</div>
<!--CONTENT BODY END -->






<!--CONTENT BODY BEGIN -->

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
