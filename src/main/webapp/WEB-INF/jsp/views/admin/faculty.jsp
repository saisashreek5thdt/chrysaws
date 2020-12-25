
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="stag" %>


<%
if(session.getAttribute("adminemail")==null || session.getAttribute("faculty").equals("0"))
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
	  <link href="assets/admin/bundles/lightgallery/dist/css/lightgallery.css" rel="stylesheet">
	  <link rel="stylesheet" href="assets/admin/bundles/summernote/summernote-bs4.css">
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
				   <div class="section-body">
                     <div class="row clearfix">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 col-12">
                           <div class="card">
                              <div class="card-header">
                                 <h4>Faculty</h4>
                              </div>
                              <div class="card-body">


								  <div class="row clearfix">
								                <c:forEach items="${facList}" var="row">
									  <div class="col-12 col-sm-6 col-md-6 col-lg-3">
										   <article class="article article-style-b">
											  <div class="article-header">
												 <div class="article-image" data-background="assets/uploads/${row.image}" style="background-repeat:no-repeat;background-size:50%">
												 </div>
											  </div>
											  <div class="article-details">
												 <div class="article-title">
													<h2>
														<a href="#">
															${row.firstname}
														</a>
													</h2>
												 </div>
												 <p>
												${row.about}
												 </p>
												 <div class="dropdown">
													<a href="#" data-toggle="dropdown" class="btn btn-warning dropdown-toggle">Options</a>
													<div class="dropdown-menu">

													<form method="post">

													   <a href="/viewfaculty?id=${row.id}" class="dropdown-item has-icon">
														   <i class="fas fa-eye"></i> 
														   View ${row.firstname}
													   </a>
													   <a href="#" class="dropdown-item has-icon">
														   <i class="far fa-edit"></i> 
														   Edit
													   </a>
													   <div class="dropdown-divider"></div>

													   <a href=" /delfac?id=${row.id}" " class="dropdown-item has-icon text-danger">
														   <i class="far fa-trash-alt"></i>
													   	   Delete 	${row.firstname}
													   </a>

													   </form>
													</div>
												 </div>
											  </div>
										   </article>
                                  	   </div>
							 </c:forEach>
								  </div>
                              </div>
							  <div class="card-footer text-right">
								<nav class="d-inline-block">
								  <ul class="pagination mb-0">
									<li class="page-item disabled">
									  <a class="page-link" href="#" tabindex="-1">
										  <i class="fas fa-chevron-left"></i>
									  </a>
									</li>
									<li class="page-item active">
										<a class="page-link" href="#">
											1 <span class="sr-only">(current)</span>
										</a>
									</li>
									<li class="page-item">
									  <a class="page-link" href="#">2</a>
									</li>
									<li class="page-item">
										<a class="page-link" href="#">3</a>
									</li>
									<li class="page-item">
									  <a class="page-link" href="#">
										  <i class="fas fa-chevron-right"></i>
									  </a>
									</li>
								  </ul>
								</nav>
							  </div>
                           </div>
                        </div>
                     </div>
					 <div class="row">
                        <div class="col-12">
                           <div class="card">
                              <div class="card-header">
                                 <h4>Add Faculty</h4>
                              </div>
                              <div class="card-body">

                               	 <form action="create_faculty" method="post" enctype="multipart/form-data">
                                 <div class="form-group row mb-4">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Title</label>
                                    <div class="col-sm-12 col-md-2">
                                       <select required name="title" class="form-control selectric">

                                          <option>Mr. </option>
                                          <option>Mrs. </option>
										  <option>Miss. </option>
                                       </select>
                                    </div>
                                 </div>
								 <div class="form-group row mb-4">
									 <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Add Image</label>
									 <div class="col-sm-12 col-md-7">
										 <div id="image-preview" class="image-preview">
                                          <label for="image-upload" id="image-label">Choose File</label>
                                          <input type="file" required name="image" id="image-upload" />
                                         </div>
									 </div>
								 </div>
								 <div class="form-group row mb-4">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">First Name</label>
                                    <div class="col-sm-12 col-md-4">
                                       <input type="text" required name="fname"  class="form-control">
                                    </div>
                                 </div>
								 <div class="form-group row mb-4">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Last Name</label>
                                    <div class="col-sm-12 col-md-4">
                                       <input type="text"  required name="lname"  class="form-control">
                                    </div>
                                 </div>
                                 <div class="form-group row mb-4">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">About Faculty</label>
                                    <div class="col-sm-12 col-md-7">
                                       <textarea class="summernote-simple"  required name="about" ></textarea>
                                    </div>
                                 </div>
                                 <div class="form-group row mb-4">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3"></label>
                                    <div class="col-sm-12 col-md-7">
                                       <button class="btn btn-primary">ADD</button>
                                    </div>

                                    </form>
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
	  <script src="assets/admin/bundles/summernote/summernote-bs4.js"></script>
      <!-- Page Specific JS File -->
      <script src="assets/admin/js/page/index.js"></script>
      <!-- Template JS File -->
      <script src="assets/admin/js/scripts.js"></script>
      <!-- Custom JS File -->
      <script src="assets/admin/js/custom.js"></script>
   </body>
   
</html>