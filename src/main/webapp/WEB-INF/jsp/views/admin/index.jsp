
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="stag" %>

<%
if(session.getAttribute("adminemail")!=null)
{%>
        <jsp:forward page="/dashboard" />

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
      <link rel="stylesheet" href="assets/admin/bundles/bootstrap-social/bootstrap-social.css">
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
         <section class="section">
            <div class="container mt-5">
               <div class="row">
                  <div class="col-12 col-sm-8 offset-sm-2 col-md-6 offset-md-3 col-lg-6 offset-lg-3 col-xl-4 offset-xl-4">
                     <div class="card card-primary">
                        <div class="card-header">
						   <div class="row clearfix">
							   <div class="col-md-6">
								   <img src="assets/admin/images/logo/logo@2x.png" class="img-fluid" alt="" /> <br/>
							   </div>
							   <div class="col-md-6">
								   <h4>Login</h4>
							   </div>
						   </div>
                        </div>
                        <div class="card-body">
                           <form method="POST" action="/adminloginVal" class="needs-validation" autocomplete="on"  modelAttribute="admin"  novalidate="">
                              <div class="form-group">
                                 <label for="email">Email</label>
                                 <input id="email" type="email" class="form-control" required name="email" tabindex="1" autofocus id="email">
                                 <div class="invalid-feedback">
                                    Please fill in your email
                                 </div>
                              </div>
                              <div class="form-group">
                                 <div class="d-block">
                                    <label for="password" class="control-label">Password</label>
                                    <div class="float-right">
                                       <a href="auth-forgot-password.html" class="text-small">
                                       Forgot Password?
                                       </a>
                                    </div>
                                 </div>


                                 <input id="password" type="password" minlength="8"  maxlength="16" autofocus  required class="form-control" id="password" name="password" tabindex="2">
                                 <div class="valid-feedback">

                                 </div>
                                   <div class="invalid-feedback">
                                             Password must be 8 to 16 .
                                      </div>
                                            <div class="col-sm-12">
                                              <small id="passwordHelp" class="text-danger"><b>
                                      <jsp:scriptlet>
                                      if(request.getParameter("error")==null){

                                      }else{
                                        out.append(request.getParameter("error"));

                                           </jsp:scriptlet>
                                           <script>
                                           document.getElementById("email").value="${email}";
                                     document.getElementById("password").value="${password}";
                                           </script>

                                             <jsp:scriptlet>
                                      }
                                      </jsp:scriptlet>
                                        </small></b>
                                            </div>
                              </div>
                              <div class="form-group">
                                 <div class="custom-control custom-checkbox">

                                   <input type="checkbox" name="remember"  class="custom-control-input" tabindex="3" id="remember-me">


                                    <label class="custom-control-label" for="remember-me">Remember Me</label>
                                 </div>
                              </div>
                              <div class="form-group">
                                 <button type="submit" class="btn btn-primary btn-lg btn-block" tabindex="4">
                                 Login
                                 </button>

                  </div>
                           </form>
                        </div>
                     </div>


                  </div>
               </div>
            </div>
         </section>
      </div>
      <!-- General JS Scripts -->
      <script src="assets/admin/js/app.min.js"></script>
      <!-- JS Libraies -->
      <!-- Page Specific JS File -->
      <!-- Template JS File -->
      <script src="assets/admin/js/scripts.js"></script>
      <!-- Custom JS File -->
      <script src="assets/admin/js/custom.js"></script>
   </body>
</html>