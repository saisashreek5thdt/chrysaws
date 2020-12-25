
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="stag" %>


<%
if(session.getAttribute("adminemail")==null)
{%>
        <jsp:forward page="/admin" />

        <%
}%>


<!DOCTYPE html>
<html lang="en">

   <head>
      <meta charset="UTF-8">
      <meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">
      <title>Chrysaellect - Admin Dashboard</title>
      <!-- General CSS Files -->
      <link rel="stylesheet" href="assets/admin/css/app.min.css">
      <!-- Template CSS -->
      <link rel="stylesheet" href="assets/admin/css/style.css">
      <link rel="stylesheet" href="assets/admin/css/components.css">
      <!-- Custom style CSS -->
      <link rel="stylesheet" href="assets/admin/css/custom.css">
      <link rel="shortcut icon" type="image/x-icon" href="assets/admin/images/favicon.ico" />


   </head>
   <body>
      <div class="loader"></div>
      <div id="app">
         <div class="main-wrapper main-wrapper-1">
            <div class="navbar-bg"></div>
             <!-- NAV BAR SIDEBAR BEGIN -->
             <jsp:include page="header/header.jsp" />
           <jsp:include page="sidebar/sidebar.jsp" />
           <!-- NAV BAR SIDEBAR END -->

            <!-- Main Content -->
            <div class="main-content">
               <section class="section">
                  <div class="row ">

                     <div class="col-xl-3 col-lg-6 col-md-6 col-sm-6 col-xs-12">
                        <div class="card">
                           <div class="card-statistic-4">
                              <div class="align-items-center justify-content-between">
                                 <div class="row ">
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 pr-0 pt-3">
                                       <div class="card-content">
                                          <h5 class="font-15">Total Users</h5>
                                          <h2 class="mb-3 font-18">
                                                                     <c:forEach items="${userList}" var="row">
                                         <c:set var="count" value="${count + 1}" scope="page"/>

                                                                                     </c:forEach>
                                         ${count }


                                          </h2>
                                       </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 pl-0">
                                       <div class="banner-img">
                                          <img src="assets/admin/images/banner/4.png" alt="">
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>


                  <div class="row">
                     <div class="col-12">
                        <div class="card">
                           <div class="card-header">
                              <h4>User Details</h4>
                           </div>
                           <div class="card-body p-0">
                              <div class="table-responsive">
                                 <table class="table table-striped">
                                    <tr>
                                       <th class="text-center">
                                          <div class="custom-checkbox custom-checkbox-table custom-control">
                                             <input type="checkbox" data-checkboxes="mygroup" data-checkbox-role="dad" class="custom-control-input" id="checkbox-all">
                                             <label for="checkbox-all" class="custom-control-label">&nbsp;</label>
                                          </div>
                                       </th>
                                       <th>First Name</th>
                                       <th>Last Name</th>
                                       <th>Email</th>
                                       <th>Verified</th>

                                    </tr>
                                    <c:forEach items="${userList}" var="row">
                                    <tr>
                                       <td class="p-0 text-center">
                                          <div class="custom-checkbox custom-control">
                                             <input type="checkbox" data-checkboxes="mygroup" class="custom-control-input" id="checkbox-1">
                                             <label for="checkbox-1" class="custom-control-label">&nbsp;</label>
                                          </div>
                                       </td>
                                       <td>${row.firstname}</td>
                                       <td class="text-truncate">
                                    ${row.lastname}
                                       </td>
                                       <td class="align-middle">
                                       ${row.email}
                                       </td>
                                       <td>

                                     <c:if test="${row.verified=='1'}">
                                                        Verified
                                                 </c:if >
                                                        <c:if test="${row.verified=='0'}">
                                               Not   Verified
                                             </c:if >

                                       </td>

                                    </tr>

     </c:forEach>
                                 </table>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
            <footer class="main-footer">
               <div class="footer-left">
                  <a href="5thdt.com">Crafted by 5TH Dimension Technologies</a>
               </div>
               <div class="footer-right">
               </div>
            </footer>
         </div>
      </div>
      <!-- General JS Scripts -->
      <script src="assets/admin/js/app.min.js"></script>
      <!-- JS Libraies -->

      <!-- Page Specific JS File -->
      <script src="assets/admin/js/page/index.js"></script>
      <!-- Template JS File -->
      <script src="assets/admin/js/scripts.js"></script>
      <!-- Custom JS File -->
      <script src="assets/admin/js/custom.js"></script>
   </body>

</html>