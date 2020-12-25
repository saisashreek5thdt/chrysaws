
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="stag" %>


<!DOCTYPE html>
<html lang="en">
   
   <head>
      <meta charset="UTF-8">
      <meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">
      <title>Chrysaellect - Admin Dashboard</title>
      <!-- General CSS Files -->
      <link rel="stylesheet" href="assets/admin/css/app.min.css">
	  <link href="assets/admin/bundles/lightgallery/dist/css/lightgallery.css" rel="stylesheet">
      <!-- Template CSS -->
      <link rel="stylesheet" href="assets/admin/css/style.css">
      <link rel="stylesheet" href="assets/admin/css/components.css">
      <!-- Custom style CSS -->
      <link rel="stylesheet" href="assets/admin/css/custom.css">
      <link rel="shortcut icon" type="image/x-icon" href="assets/admin/images/favicon.ico" />
   </head>
   <body>
           <jsp:include page="header/header.jsp" />
                   <jsp:include page="sidebar/sidebar.jsp" />
            <!-- Main Content -->
            <div class="main-content">
               <section class="section">
                  <div class="section-body">
                     <div class="row mt-sm-4">
                        <div class="col-12 col-md-12 col-lg-4">
                           <div class="card author-box">
                              <div class="card-body">
                                 <div class="author-box-center">
                                    <img alt="image" src="assets/uploads/${image}" class="author-box-picture">
                                    <div class="clearfix"></div>
                                    <div class="author-box-name">
                                       <a href="#">${name}</a>
                                    </div>
                                    <div class="author-box-job">${category}</div>
                                 </div>
                                 <div class="text-center">
                                    <div class="author-box-description">

                                    </div>
                                 </div>
                              </div>
                           </div>
                           <div class="card">
                              <div class="card-header">
                                 <h4>Course Details</h4>
                              </div>
                              <div class="card-body">
                                 <div class="py-4">
                                    <p class="clearfix">
                                       <span class="float-left">
										Start   Date
                                       </span>
                                       <span class="float-right text-muted">
									${start}
                                       </span>
                                    </p>

                                            <p class="clearfix">
                                           <span class="float-left">
    										End   Date
                                           </span>
                                           <span class="float-right text-muted">
    									${end}
                                           </span>
                                        </p>
                                    <p class="clearfix">
                                       <span class="float-left">
										   Amount
                                       </span>
                                       <span class="float-right text-muted">


		        <c:if test="${category=='paid' || category=='Paid' }">
		   <i class="fas fa-rupee-sign"></i> &nbsp; 	${amount}
		   		   </c:if>
		   		   	        <c:if test="${category=='Free' || category=='free' }">
                   		   <i class="fas fa-rupee-sign"></i> Free
                   		   		   </c:if>


                                       </span>
                                    </p>
									<p class="clearfix">
                                       <span class="float-left">
										   Instructor Name
                                       </span>
                                       <span class="float-right text-muted">
										   Faridah Bawani
                                       </span>
                                    </p> 
                                 </div>
                              </div>
                           </div>
                           <div class="card">
                              <div class="card-header">
                                 <h4>Skills</h4>
                              </div>
                              <div class="card-body">
                                 <ul class="list-unstyled user-progress list-unstyled-border list-unstyled-noborder">
                                    <li class="media">
                                       <div class="media-body">
                                          <div class="media-title">${skill1}</div>
                                       </div>
                                    </li>
                                    <li class="media">
                                       <div class="media-body">
                                          <div class="media-title">${skill2}</div>
                                       </div>
                                    </li>
                                    <li class="media">
                                       <div class="media-body">
                                          <div class="media-title">${skill3}</div>
                                       </div>
                                    </li>
    <li class="media">
                                        <div class="media-body">
                                           <div class="media-title">${skill4}</div>
                                        </div>
                                     </li>
                                 </ul>
                              </div>
                           </div>
                        </div>
                        <div class="col-12 col-md-12 col-lg-8">
                           <div class="card">
                              <div class="padding-20">
                                 <ul class="nav nav-tabs" id="myTab2" role="tablist">
                                    <li class="nav-item">
                                       <a class="nav-link active" id="home-tab2" data-toggle="tab" href="#about" role="tab"
                                          aria-selected="true">About</a>
                                    </li>
                                 </ul>
                                 <div class="tab-content tab-bordered" id="myTab3Content">
                                    <div class="tab-pane fade show active" id="about" role="tabpanel" aria-labelledby="home-tab2">
									   <div class="section-title">About Course</div>	
                                       <p class="m-t-30">
                                       ${about}
                                       </p>

                                       <div class="section-title">Education Documents</div>
                                       <ul>
                                          <li>PDF</li>
                                          <li>PPT</li>
                                          <li>Word</li>
										  <li>Audio / Video</li>
                                       </ul>

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
	 <script src="assets/admin/bundles/lightgallery/dist/js/lightgallery-all.js"></script>
	  <script src="assets/admin/js/page/light-gallery.js"></script> 
      <!-- Page Specific JS File -->
      <script src="assets/admin/js/page/index.js"></script>
      <!-- Template JS File -->
      <script src="assets/admin/js/scripts.js"></script>
      <!-- Custom JS File -->
      <script src="assets/admin/js/custom.js"></script>
   </body>
   
</html>