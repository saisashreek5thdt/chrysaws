
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="stag" %>


<%
if(session.getAttribute("adminemail")==null || session.getAttribute("blogs").equals("0"))
{%>
        <jsp:forward page="/admin" />

        <%
}%>



<!DOCTYPE html>
<html lang="en">
   <script>

   		function about(){


   		var topic=document.getElementById("input2").value;

   		document.getElementById("d1").value=topic.substr(0, 350);
   		document.getElementById("d2").value=topic.substr(350, 700);

   		}

	function fileValidation1() {

var fileInput =
	document.getElementById('coverImage');

var filePath = fileInput.value;

// Allowing file type
var allowedExtensions =
		/(\.jpg|\.jpeg|\.png|\.gif)$/i;

if (!allowedExtensions.exec(filePath)) {
	alert('Invalid file type');
	fileInput.value = '';
	return false;
}

}



	function fileValidation2() {

var fileInput =
	document.getElementById('image1');

var filePath = fileInput.value;

// Allowing file type
var allowedExtensions =
		/(\.jpg|\.jpeg|\.png|\.gif)$/i;

if (!allowedExtensions.exec(filePath)) {
	alert('Invalid file type');
	fileInput.value = '';
	return false;
}

}


	function fileValidation3() {

var fileInput =
	document.getElementById('image3');

var filePath = fileInput.value;

// Allowing file type
var allowedExtensions =
		/(\.jpg|\.jpeg|\.png|\.gif)$/i;

if (!allowedExtensions.exec(filePath)) {
	alert('Invalid file type');
	fileInput.value = '';
	return false;
}

}




	function fileValidation4() {

var fileInput =
	document.getElementById('image4');

var filePath = fileInput.value;

// Allowing file type
var allowedExtensions =
		/(\.jpg|\.jpeg|\.png|\.gif)$/i;

if (!allowedExtensions.exec(filePath)) {
	alert('Invalid file type');
	fileInput.value = '';
	return false;
}

}
   </script>
   <head>
      <meta charset="UTF-8">
      <meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">
      <title>Chrysaellect - Admin Dashboard</title>
      <!-- General CSS Files -->
      <link rel="stylesheet" href="assets/admin/css/app.min.css">
	  <link href="assets/admin/bundles/lightgallery/dist/css/lightgallery.css" rel="stylesheet">
	  <link rel="stylesheet" href="assets/admin/bundles/summernote/summernote-bs4.css">
	  <link rel="stylesheet" href="assets/admin/bundles/bootstrap-tagsinput/dist/bootstrap-tagsinput.css">
	  <link rel="stylesheet" href="assets/admin/bundles/dropzonejs/dropzone.css">
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
                                 <h4>Blog</h4>
                              </div>
                              <div class="card-body">
                              <form action="/publishblog" method="get">
								  <div class="row clearfix">

								  <c:forEach items="${blogList}" var="rowt">

									  <div class="col-12 col-sm-6 col-md-6 col-lg-3">
										   <article class="article article-style-b">
											  <div class="article-header">
												 <div class="article-image" data-background="assets/uploads/blogs/${rowt.cover}">
												 </div>
											  </div>
											  <div class="article-details">
												 <div class="article-title">
													<h2>
														<a href="#">
															${rowt.title}
														</a>
													</h2>
												 </div>
												 <p>
												${rowt.about1}
												${rowt.about2}
												 </p>
												 <div class="dropdown">
													<a href="#" data-toggle="dropdown" class="btn btn-warning dropdown-toggle">Options</a>
													<div class="dropdown-menu">
													   <a href="/viewblogs?id=${rowt.id}" class="dropdown-item has-icon">
														   <i class="fas fa-eye"></i> 
														   View
													   </a>
													   <div class="dropdown-divider"></div>
 <c:if test="${rowt.publish.equals('0')}">
													   <a href="/publishblog?id=${rowt.id}" class="dropdown-item has-icon" onclick="return confirm('Do you want to publish?');">
														   <i class="fas fa-atlas"></i> 
														   Publish
													   </a>
													   	   </c:if>


				    <c:if test="${rowt.publish.equals('1')}">

													   <a href="/disableblog?id=${rowt.id}" class="dropdown-item has-icon text-danger" onclick="return confirm('Do you want to Disable?');">
														   <i class="far fa-trash-alt"></i>
													   	   Disable
													   </a>
													   </c:if>
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
                     </div>     </form>
					 <div class="row">
                        <div class="col-12">
                           <div class="card">
                              <div class="card-header">
                                 <h4>Create Blog</h4>
                              </div>
                              <div class="card-body">

                              <form method="post" enctype="multipart/form-data">
                                 <div class="form-group row mb-4">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Title</label>
                                    <div class="col-sm-12 col-md-4">
                                       <input type="text"  name="title"   required class="form-control">
                                    </div>
                                 </div>
								 <div class="form-group row mb-4">
									 <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Add Cover Image</label>
									 <div class="col-sm-12 col-md-7">
										 <div id="image-preview" class="image-preview">
                                          <label for="image-upload" id="image-label">Choose File</label>
                                          <input type="file"  name="coverImage" required id="coverImage" onchange="fileValidation1()"/>
                                         </div>
									 </div>
								 </div>
							 <div class="form-group row mb-4">
                        									 <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Add  CoImage</label>
                        									 <div class="col-sm-12 col-md-7">
                        										 <div id="image-preview" class="image-preview">
                                                                  <label for="image-upload" id="image-label">Choose File</label>
                                                                  <input type="file"  name="Image1" required id="image1" onchange="fileValidation2()" />
                                                                 </div>
                        									 </div>
                        								 </div>

								 	 <div class="form-group row mb-4">
                                 									 <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Add  Image</label>
                                 									 <div class="col-sm-12 col-md-7">
                                 										 <div id="image-preview" class="image-preview">
                                                                           <label for="image-upload" id="image-label">Choose File</label>
                                                                           <input type="file"  name="Image2" required id="image3" onchange="fileValidation3()" />
                                                                          </div>
                                 									 </div>
                                 								 </div>
                                 <div class="form-group row mb-4">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">About Blog</label>
                                    <div class="col-sm-12 col-md-7">
                                       <textarea style="width:90%;height:200px" maxlength="700" id="input2" required onChange="about()" ></textarea>
                                    </div>
                                 </div>

						 	 <div class="form-group row mb-4">
                                                         									 <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Author  Image</label>
                                                         									 <div class="col-sm-12 col-md-7">
                                                         										 <div id="image-preview" class="image-preview">
                                                                                                   <label for="image-upload" id="image-label">Choose File</label>
                                                                                                   <input type="file"  name="authorImage" required id="image4"  onchange="fileValidation4()"/>
                                                                                                  </div>
                                                         									 </div>
                                                         								 </div>
								<input type="hidden" name="des1" id="d1">
                                <input type="hidden" name="des2" id="d2">
     Author Name:
                                 <div class="col-sm-12 col-md-8">
                                  <input type="text"  name="authorName"  maxlength="12" required class="form-control inputtags" placeholder="Author Name">
                                       	 </div>
                                       	 <br>
                                       	 <input type="hidden" value="admin" name="authorId">
                                       	   <br>About Author<br>   <div class="col-sm-12 col-md-8">
                                                                               <input type="text" name="authorDesc" maxlength="20" required class="form-control inputtags" placeholder="Author Details">
                                                                                	 </div>
                                 <div class="form-group row mb-4">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3"></label>
                                    <div class="col-sm-12 col-md-7">
                                    <br>
                                       <button class="btn btn-primary" formaction="/blogCreates" onclick="return confirm('Save This Blog?');">CREATE BLOG</button>
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
	  <script src="assets/admin/bundles/bootstrap-tagsinput/dist/bootstrap-tagsinput.min.js"></script>
	  <script src="assets/admin/bundles/summernote/summernote-bs4.js"></script>
	  <script src="assets/admin/bundles/dropzonejs/min/dropzone.min.js"></script>
	  <script src="assets/admin/js/page/multiple-upload.js"></script>
      <!-- Page Specific JS File -->
      <script src="assets/admin/js/page/index.js"></script>
      <!-- Template JS File -->
      <script src="assets/admin/js/scripts.js"></script>
      <!-- Custom JS File -->
      <script src="assets/admin/js/custom.js"></script>
   </body>
   
</html>