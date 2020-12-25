
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="stag" %>


<%
if(session.getAttribute("adminemail")=="null")
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
	  <link rel="stylesheet" href="assets/admin/bundles/summernote/summernote-bs4.css"> 
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
                  <div class="section-body">
                     <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">
                           <div class="card">
                              <div class="body">
                                 <div id="mail-nav">
                                    <button type="button" class="btn btn-danger waves-effect btn-compose m-b-15">COMPOSE</button>
                                    <ul class="" id="mail-folders">
                                       <li class="active">
                                          <a href="mail.html" title="Inbox">Inbox (10)
                                          </a>
                                       </li>
                                       <li>
                                          <a href="javascript:;" title="Sent">Sent</a>
                                       </li>
                                       <li>
                                          <a href="javascript:;" title="Draft">Draft</a>
                                       </li>
                                       <li>
                                          <a href="javascript:;" title="Bin">Bin</a>
                                       </li>
                                       <li>
                                          <a href="javascript:;" title="Important">Important</a>
                                       </li>
                                       <li>
                                          <a href="javascript:;" title="Starred">Starred</a>
                                       </li>
                                    </ul>
                                    <h5 class="b-b p-10 text-strong">Labels</h5>
                                    <ul class="" id="mail-labels">
                                       <li>
                                          <a href="javascript:;">
                                          <i data-feather="tag" class="col-red"></i>Family</a>
                                       </li>
                                       <li>
                                          <a href="javascript:;">
                                          <i data-feather="tag" class="col-blue"></i>Work</a>
                                       </li>
                                       <li>
                                          <a href="javascript:;">
                                          <i data-feather="tag" class="col-orange"></i>Shop</a>
                                       </li>
                                       <li>
                                          <a href="javascript:;">
                                          <i data-feather="tag" class="col-cyan"></i>Themeforest</a>
                                       </li>
                                       <li>
                                          <a href="javascript:;">
                                          <i data-feather="tag" class="col-blue-grey"></i>Google</a>
                                       </li>
                                    </ul>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-9 col-lg-9">
                           <div class="card">
                              <div class="boxs mail_listing">
                                 <div class="inbox-center table-responsive">
                                    <table class="table table-hover">
                                       <thead>
                                          <tr>
                                             <th colspan="1">
                                                <div class="inbox-header">
                                                   Compose New Message
                                                </div>
                                             </th>
                                          </tr>
                                       </thead>
                                    </table>
                                 </div>
                                 <div class="row">
                                    <div class="col-lg-12">
                                       <form class="composeForm">
                                          <div class="form-group">
                                             <div class="form-line">
                                                <input type="text" id="email_address" class="form-control" placeholder="TO">
                                             </div>
                                          </div>
                                          <div class="form-group">
                                             <div class="form-line">
                                                <input type="text" id="subject" class="form-control" placeholder="Subject">
                                             </div>
                                          </div>
										  <div class="form-group">
											  <select class="form-control">
												  <option>Select Your Group To Send Mails</option>
												  <option>Group</option>
												  <option>Group</option>
												  <option>Group</option>
											  </select>
										  </div> 
                                          <textarea id="ckeditor" class="summernote"></textarea>
                                          <div class="compose-editor m-t-20">
                                             <div class="custom-file">
												<input type="file" class="custom-file-input" id="customFile">
												<label class="custom-file-label" for="customFile">Choose file</label>
											 </div>
                                          </div>
                                       </form>
                                    </div>
                                    <div class="col-lg-12">
                                       <div class="m-l-25 m-b-20">
                                          <button type="button" class="btn btn-info btn-border-radius waves-effect">Send</button>
                                          <button type="button" class="btn btn-danger btn-border-radius waves-effect">Discard</button>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </section>
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
	  <script src="assets/admin/bundles/summernote/summernote-bs4.js"></script> 
      <!-- Page Specific JS File -->
      <!-- Template JS File -->
      <script src="assets/admin/js/scripts.js"></script>
      <!-- Custom JS File -->
      <script src="assets/admin/js/custom.js"></script>
   </body>
   
</html>