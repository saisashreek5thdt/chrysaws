
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="stag" %>


<%
if(session.getAttribute("adminemail")==null || session.getAttribute("course").equals("0"))
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

        <link rel="stylesheet" href="assets/admin/bundles/bootstrap-daterangepicker/daterangepicker.css">
      <link rel="stylesheet" href="assets/admin/css/style.css">
      <link rel="stylesheet" href="assets/admin/css/components.css">
      <!-- Custom style CSS -->
      <link rel="stylesheet" href="assets/admin/css/custom.css">
      <link rel="shortcut icon" type="image/x-icon" href="assets/admin/images/favicon.ico" />
   </head>

   <script>
   function keyword(){
   document.getElementById("key").style.display="flex";
   }
   </script>
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
                        <div class="card l-bg-green">
                           <div class="card-statistic-3">
                              <div class="align-items-center justify-content-between">
                                 <div class="row ">
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 pr-0 pt-3">
                                       <div class="card-content">
                                          <h5 class="font-15">New Courses</h5>
                                          <h2 class="mb-3 font-18">258</h2>
                                       </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 pl-0">
                                       <div class="banner-img">
                                          <img src="assets/admin/images/banner/1.png" alt="">
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="col-xl-3 col-lg-6 col-md-6 col-sm-6 col-xs-12">
                        <div class="card l-bg-orange">
                           <div class="card-statistic-3">
                              <div class="align-items-center justify-content-between">
                                 <div class="row ">
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 pr-0 pt-3">
                                       <div class="card-content">
                                          <h5 class="font-15">Free Courses</h5>
                                          <h2 class="mb-3 font-18">1,287</h2>
                                       </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 pl-0">
                                       <div class="banner-img">
                                          <img src="assets/admin/images/banner/2.png" alt="">
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="col-xl-3 col-lg-6 col-md-6 col-sm-6 col-xs-12">
                        <div class="card l-bg-purple">
                           <div class="card-statistic-3">
                              <div class="align-items-center justify-content-between">
                                 <div class="row ">
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 pr-0 pt-3">
                                       <div class="card-content">
                                          <h5 class="font-15">Certified Courses</h5>
                                          <h2 class="mb-3 font-18">128</h2>
                                       </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 pl-0">
                                       <div class="banner-img">
                                          <img src="assets/admin/images/banner/3.png" alt="">
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="col-xl-3 col-lg-6 col-md-6 col-sm-6 col-xs-12">
                        <div class="card l-bg-cyan">
                           <div class="card-statistic-3">
                              <div class="align-items-center justify-content-between">
                                 <div class="row ">
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 pr-0 pt-3">
                                       <div class="card-content">
                                          <h5 class="font-15">Resources Created</h5>
                                          <h2 class="mb-3 font-18">48,697</h2>
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
                              <h4>Courses</h4>
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
                                       <th>Name</th>
                                       <th>Type</th>
                                       <th>Categories</th>
									   <th>Start Date</th>
									   <th>End Date</th>
                                       <th>Amount (all in INR)</th>
                                       <th>Actions</th>
                                    </tr>

         <c:forEach items="${courseList}" var="row">
          <form method="post">

                                    <tr>
                                       <td class="p-0 text-center">
                                          <div class="custom-checkbox custom-control">
                                             <input type="checkbox" data-checkboxes="mygroup" class="custom-control-input" id="checkbox-1">
                                             <label for="checkbox-1" class="custom-control-label">&nbsp;</label>
                                          </div>
                                       </td>
                                       <td>${row.coursename}</td>
                                       <td class="text-truncate">
                                            <c:if test="${row.category=='Free'}">
                                       <div class="badge badge-success">${row.category}</div>
                                                          </c:if >
                                                    <c:if test="${row.category=='Paid'}">
                                                             <div class="badge badge-danger">${row.category}</div>
                                                           </c:if >
                                       </td>
                                       <td>
                                          <div class="text-left">
											  <a href="#" class="btn btn-social-icon mr-1 btn-facebook">
												  <i class="text-black-50" data-feather="video"></i>
											  </a>
											  <a href="#" class="btn btn-social-icon mr-1 btn-facebook">
												  <i class="text-black-50" data-feather="file-text"></i>
											  </a>
											  <a href="#" class="btn btn-social-icon mr-1 btn-facebook">
												  <i class="text-black-50" data-feather="command"></i>
											  </a>
										  </div>
                                       </td>
									   <td>${row.start}</td>
                                       <td>${row.end}</td>
                                       <td>${row.amount}</td>
                                       <td>
										 <a class="btn btn-success btn-action mr-1" data-toggle="tooltip" title="View">
											 <i class="far fa-eye"></i>
										 </a>
										 <button formaction="/edit_course?id=${row.id}" onclick="return confirm('Do you want to edit?');" class="btn btn-primary btn-action mr-1" data-toggle="tooltip" title="Edit">
											 <i class="fas fa-pencil-alt"></i>
										 </button>
										 <button formaction="/delete_course?id=${row.id}" onclick="return confirm('Do you want to delete?');" class="btn btn-danger btn-action" data-toggle="tooltip" title="Delete"
											data-confirm="Are You Sure?|This action can not be undone. Do you want to continue?"
											data-confirm-yes="alert('Deleted')">
											 <i class="fas fa-trash"></i>
										 </button>
									  </td>
          </form>                          </tr>
     </c:forEach>

                                 </table>
                              </div>
                           </div>
						   <div class="card-footer text-center">
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
							 <h4>Create Courses</h4>
						  </div>
						  <div class="card-body">
						     <c:forEach items="${courseList}" var="row">
						       <c:if test="${row.id==param.id}">
	 <form  method="post" action="/editcs" enctype="multipart/form-data">
							 <div class="form-group row mb-4">

								<label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Title</label>
								<div class="col-sm-12 col-md-4">
								   <input type="text" required name="title" class="form-control" readonly value="${row.coursename}" >
								</div>
							 </div>

							  <c:if test="${not  empty  warn}">
                                                               <script>
                                                               alert("Resource Name Already Exists..! Try With Other One");
                                                               </script>
                                                                     </c:if >
							 <div class="form-group row mb-4">
								<label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Free or Paid</label>
								<div class="col-sm-12 col-md-2">
									<select required class="form-control" name="category">
                               <c:if test="${row.category=='Free'}">
									   <option>Free</option>
									   <option>Paid</option>
									       </c:if >
									             <c:if test="${row.category=='Paid'}">
                                           									   <option>Paid</option>
                                           									   <option>Free</option>
                                           									       </c:if >
									</select>
								</div>
								<div class="col-sm-4 col-md-3">
									<div class="input-group mb-3">
										<div class="input-group-prepend">
											<span class="input-group-text">
												<i class="fas fa-rupee-sign"></i>
											</span>
										</div>
										<input type="text" required name="amount" class="form-control" value="${row.amount}"  aria-label="Amount (to the nearest ruppee)">
									</div>
								</div>
							 </div>

							  <div class="form-group row mb-4">
                              	 <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Add Thumbnail Image</label>
                             			 <div class="col-sm-12 col-md-7">
                             				 <div id="image-preview" class="image-preview">
                             					  <label for="image-upload" id="image-label">Choose File</label>
                             						 <input type="file" required name="file" name="image" id="image-upload" />
                             				   </div>
                             				    <img src="assets/uploads/${row.image}" style="height:200px;width:200px;">
                             				</div>
                              </div>

							 <div class="form-group row mb-4">
								<label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">About Course</label>
								<div class="col-sm-12 col-md-7">
								   <textarea class="summernote-simple" required name="about" value="${row.about_course}"> </textarea>
								</div>
							 </div>
                    <div class="form-group row mb-4">
								 <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Add Resources</label>
								 <div class="col-sm-4 col-md-4">
										 <select  required name="resource" class="form-control selectric" multiple="" max-length="3">

<c:forEach items="${resourceList}" var="rowz">
                                                                  <option value="${rowz.resource_name}">${rowz.resource_name}</option>

                                                                      </c:forEach>
                                   		</select>
								 </div>

							 </div>


     <div class="form-group">
                      <label>Course Duration </label>
                      <div class="input-group">
                        <div class="input-group-prepend">
                          <div class="input-group-text">
                            <i class="fas fa-calendar"></i>
                          </div>
                        </div>
                        <input type="date" required name="start" value="${row.start}">      <input type="date" name="end" required  value="${row.end}">
                      </div>

                    </div>
                    <br>



						<input type="hidden" name="id" value="${row.id}">
<br>

							 <div class="form-group row mb-4">
								 <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Add Keywords</label>
								 <div class="col-sm-12 col-md-2">
									 <input type="text" name="keyword" class="form-control inputt ags">
								 </div>
								 <div class="col-sm-12 col-md-2">
									 <input type="text"  name="keyword" class="form-control inputtags">
								 </div>
								 <div class="col-sm-12 col-md-2">
									 <input type="text" name="keyword" class="form-control inputtags">
								 </div>
								 <div class="col-sm-12 col-md-2">
									 <a class="btn btn-primary " name="keyword" style="color:white" onClick="keyword()">ADD MORE KEYWORDS</a>
								 </div>
							 </div>
							 <div class="form-group row mb-4" style="display:none" id="key">
								 <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3"></label>
								 <div class="col-sm-12 col-md-2">
									 <input type="text"   name="keyword" class="form-control inputtags">
								 </div>
								 <div class="col-sm-12 col-md-2">
									 <input type="text"    name="keyword" class="form-control inputtags">
								 </div>
								 <div class="col-sm-12 col-md-2">
									 <input type="text"  name="keyword" class="form-control inputtags">
								 </div>
								 <div class="col-sm-12 col-md-2">
									 <input type="text"  name="keyword"class="form-control inputtags">
								 </div>
							 </div>
							 <div class="form-group row mb-4">
								<label class="col-form-label text-md-right col-12 col-md-3 col-lg-3"></label>
								<div class="col-sm-12 col-md-7">
								   <button class="btn btn-primary">EDIT COURSE</button>
								</div>
								</form>
								</c:if>
								</c:forEach>
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
	    <script src="assets/admin/bundles/bootstrap-daterangepicker/daterangepicker.js"></script>
	  <script src="assets/admin/js/page/widget-data.js"></script>
      <!-- Page Specific JS File -->
      <script src="assets/admin/js/page/index.js"></script>
      <!-- Template JS File -->
      <script src="assets/admin/js/scripts.js"></script>
      <!-- Custom JS File -->
      <script src="assets/admin/js/custom.js"></script>
   </body>

</html>