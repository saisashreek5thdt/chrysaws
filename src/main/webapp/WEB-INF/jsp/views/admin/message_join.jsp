

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="stag" %>


<%
if(session.getAttribute("adminemail")==null )
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
	  <link rel="stylesheet" href="assets/admin/bundles/summernote/summernote-bs4.css">
	  <link rel="stylesheet" href="assets/admin/bundles/dropzonejs/dropzone.css">
	  <link rel="stylesheet" href="assets/admin/bundles/jquery-selectric/selectric.css">
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
				   <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">
                           <div class="card">
                              <div class="body">
                                 <div id="plist" class="people-list">
                                    <div class="chat-search">
                                       <input type="text" class="form-control" placeholder="Search..." />
                                    </div>
                                    <div class="m-b-20">
                                       <div id="chat-scroll">
                                          <ul class="chat-list list-unstyled m-b-0">
                                             <li class="clearfix active">
                                                <div class="about">
                                                   <div class="name">William Smith</div>
                                                   <div class="status">
                                                      <i class="material-icons offline">fiber_manual_record</i>
                                                      left 7 mins ago 
                                                   </div>
                                                </div>
												<div class="float-left dropdown">
												  <a href="#" data-toggle="dropdown">
													  <i class="fas fa-ellipsis-h"></i>
												  </a>
												  <div class="dropdown-menu">
													<div class="dropdown-title">Options</div>
													<a href="#" class="dropdown-item has-icon text-danger" data-confirm="Wait, wait, wait...|This action can't be undone. Want to take risks?" data-confirm-text-yes="Yes, IDC">
														<i class="fas fa-trash-alt"></i> Remove
													</a>
												  </div>
												</div> 
                                             </li>
                                             <li class="clearfix ">
                                                <div class="about">
                                                   <div class="name">Martha Williams</div>
                                                   <div class="status">
                                                      <i class="material-icons offline">fiber_manual_record</i>
                                                      online 
                                                   </div>
                                                </div>
                                             </li>
                                             <li class="clearfix">
                                                <div class="about">
                                                   <div class="name">Joseph Clark</div>
                                                   <div class="status">
                                                      <i class="material-icons online">fiber_manual_record</i>
                                                      online 
                                                   </div>
                                                </div>
                                             </li>
                                             <li class="clearfix">
                                                <div class="about">
                                                   <div class="name">Nancy Taylor</div>
                                                   <div class="status">
                                                      <i class="material-icons online">fiber_manual_record</i>
                                                      online 
                                                   </div>
                                                </div>
                                             </li>
                                             <li class="clearfix">
                                                <div class="about">
                                                   <div class="name">Margaret Wilson</div>
                                                   <div class="status">
                                                      <i class="material-icons online">fiber_manual_record</i>
                                                      online 
                                                   </div>
                                                </div>
                                             </li>
                                             <li class="clearfix">
                                                <div class="about">
                                                   <div class="name">Joseph Jones</div>
                                                   <div class="status">
                                                      <i class="material-icons offline">fiber_manual_record</i>
                                                      left 30 mins ago 
                                                   </div>
                                                </div>
                                             </li>
                                             <li class="clearfix">
                                                <div class="about">
                                                   <div class="name">Jane Brown</div>
                                                   <div class="status">
                                                      <i class="material-icons offline">fiber_manual_record</i>
                                                      left 10 hours ago 
                                                   </div>
                                                </div>
                                             </li>
                                             <li class="clearfix">
                                                <div class="about">
                                                   <div class="name">Eliza Johnson</div>
                                                   <div class="status">
                                                      <i class="material-icons online">fiber_manual_record</i>
                                                      online 
                                                   </div>
                                                </div>
                                             </li>
                                          </ul>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-9 col-lg-9">
                           <div class="card">
                              <div class="chat">
                                 <div class="chat-header clearfix">
                                    <div class="chat-about">
                                       <div class="chat-with">Maria Smith</div>
                                       <div class="chat-num-messages">2 new messages</div>
                                    </div>
                                 </div>
                              </div>
                              <div class="chat-box" id="mychatbox">
                                 <div class="card-body chat-content">
                                 </div>
                                 <div class="card-footer chat-form">
                                    <form id="chat-form">
                                       <input type="text" class="form-control" placeholder="Type a message">
									   <input type="file" class="form-control" placeholder="Type a message">
										   <button class="btn btn-primary">
											   <i class="far fa-paper-plane"></i>
										   </button>
                                    </form>
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
	  <script src="assets/admin/bundles/dropzonejs/min/dropzone.min.js"></script>
	  <script src="assets/admin/bundles/jquery-selectric/jquery.selectric.min.js"></script>
	  <script src="assets/admin/js/page/multiple-upload.js"></script>
	  <script src="assets/admin/js/page/widget-data.js"></script> 
	  <script src="assets/admin/js/page/chat.js"></script> 
      <!-- Page Specific JS File -->
      <script src="assets/admin/js/page/index.js"></script>
      <!-- Template JS File -->
      <script src="assets/admin/js/scripts.js"></script>
      <!-- Custom JS File -->
      <script src="assets/admin/js/custom.js"></script>
   </body>
   
</html>