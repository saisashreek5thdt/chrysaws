
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="stag" %>

<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%
if(session.getAttribute("adminemail")==null || session.getAttribute("resources").equals("0"))
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
      

      <script>
	   
	
	  function pay(){
        if( document.getElementById("category").value=="free"){
			 document.getElementById("amount").style.display="none";
			
		}
		
		  if( document.getElementById("category").value=="paid"){
			 document.getElementById("amount").style.display="flex";
			
		}
		
		
	  }
         function keyword(){
         document.getElementById("key").style.display="flex";
         }
              function fileValidation() {

                  var fileInput =
                      document.getElementById('image-upload');

                  var filePath = fileInput.value;

                  // Allowing file type
                  var allowedExtensions =
                          /(\.jpg|\.jpeg|\.png|\.gif)$/i;

                  if (!allowedExtensions.exec(filePath)) {
                      alert('Invalid file type');
                      fileInput.value = '';
                      return false;
                  }
                  else
                  {

                      // Image preview
                      if (fileInput.files && fileInput.files[0]) {
                          var reader = new FileReader();
                          reader.onload = function(e) {
                              document.getElementById(
                                  'imagePreview').innerHTML =
                                  '<img src="' + e.target.result
                                  + '"  style="height:200px;width:200px"/>';
                          };

                          reader.readAsDataURL(fileInput.files[0]);
                      }
                  }
              }


          </script>
		  <% 
    String st="<script>document.writeln(v)</script>";
    out.println("value="+st); 
%>
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
                                          <h5 class="font-15">New Resources</h5>
                                          <h2 class="mb-3 font-18">

                                                 <c:forEach items="${resourceList}" var="row">
                                          <c:set var="count" value="${count + 1}" scope="page"/>

                                                  </c:forEach>
                                                ${count }

                                          </h2>
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
                                          <h5 class="font-15">Resources Uploaded (Word)</h5>
                                          <h2 class="mb-3 font-18">
                                                <c:forEach items="${resourcefilesList}" var="row">

      <c:if test="${row.filetype=='word'}">
<c:set var="count1" value="${count1 + 1}" scope="page"/>
       </c:if >
                                                                                                                  </c:forEach>
                                                            ${count1 }

                                          </h2>
                                       </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 pl-0">
                                       <div class="banner-img">
                                          <img src="assets/admin/images/icons/word.svg" alt="">
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
                                          <h5 class="font-15">Resources Uploaded (PPT)</h5>
                                          <h2 class="mb-3 font-18">

                                                                                  <c:forEach items="${resourcefilesList}" var="row">

                                               <c:if test="${row.filetype=='ppt'}">
                                         <c:set var="count2" value="${count2 + 1}" scope="page"/>
                                                </c:if >
                                                                                                                                                           </c:forEach>
                                                                                                     ${count2 }
                                          </h2>
                                       </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 pl-0">
                                       <div class="banner-img">
                                          <img src="assets/admin/images/icons/ppt.svg" alt="">
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
                                          <h5 class="font-15">Resources Uploaded (PDF)</h5>
                                          <h2 class="mb-3 font-18">
                                                                                   <c:forEach items="${resourcefilesList}" var="row">

                                                <c:if test="${row.filetype=='pdf'}">
                                          <c:set var="count3" value="${count3 + 1}" scope="page"/>
                                                 </c:if >
                                                                                                                                                            </c:forEach>
                                                                                                      ${count3 }

                                          </h2>
                                       </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 pl-0">
                                       <div class="banner-img">
                                          <img src="assets/admin/images/icons/pdf.svg" alt="">
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
                              <h4>Resources</h4>
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
                                       <th>Amount (all in INR)</th>
                                       <th>Actions</th>
                                    </tr>



                                      <c:forEach items="${resourceList}" var="row">
                                    <form method="post">
                                    <tr>
                                       <td class="p-0 text-center">
                                          <div class="custom-checkbox custom-control">
                                             <input type="checkbox" data-checkboxes="mygroup" class="custom-control-input" id="checkbox-1">
                                             <label for="checkbox-1" class="custom-control-label">&nbsp;</label>
                                          </div>
                                       </td>
                                        <input type="hidden" value="${row.resource_name}" name="titleedit">
                                           <input type="hidden" value="${row.amount}" name="amountedit">
                                            <textarea style="display:none" name="aboutedit" value="${row.about_resourse}" >
                                            </textarea>
                                                  <input type="hidden" value="${row.image}" name="imageedit">
<input type="hidden" value="${row.id}" name="idedit">
                                       <td>${row.resource_name}</td>

                                       <td class="text-truncate">
                                        <c:if test="${row.category=='free'}">
                                          <div class="badge badge-success">${row.category}</div>
                                               </c:if >
                                    <c:if test="${row.category=='paid'}">
                                          <div class="badge badge-danger">${row.category}</div>
                                               </c:if >
                                       </td>
                                       <td>
                                          <div class="text-left">
                                          	  <a href="#" class="btn btn-social-icon mr-1 btn-facebook">
                                                                                     		  <i class="text-black-50" data-feather="file-text"></i>
                                                                                      	  </a>





											  <a href="#" class="btn btn-social-icon mr-1 btn-facebook">
												  <i class="text-black-50" data-feather="video"></i>
											  </a>


										  </div>
                                       </td>
                                       <td>${row.amount}</td>
                                       <td>
										 <button formaction="/viewresource?id=${row.id}" class="btn btn-success btn-action mr-1"  data-toggle="tooltip" title="View" >
											 <i class="far fa-eye"></i>
										 </button>
										 <button class="btn btn-primary btn-action mr-1 " onclick="return confirm('Do you want to edit?');" formaction="/editResources" data-toggle="tooltip" title="Edit">
											 <i class="fas fa-pencil-alt"></i>
										 </button>
										 <button formaction="/delete_resource?id=${row.id}&name=${row.resource_name}"  class="btn btn-danger btn-action" data-toggle="tooltip" title="Delete"
											data-confirm="Are You Sure?|This action can not be undone. Do you want to continue?"
											data-confirm-yes="alert('Deleted') " onclick="return confirm('Do you want to delete?');">
											 <i class="fas fa-trash"></i>
										 </button>
									  </td>
                                    </tr>
                                 </form>
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
							 <h4>Create Resource</h4>
						  </div>
						  	 <form  method="post" enctype="multipart/form-data">
						  <div class="card-body">
							 <div class="form-group row mb-4">
								<label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Title</label>
								<div class="col-sm-12 col-md-4">
								   <input type="text" value="" name="title" id="title" required class="form-control" onchange="titlecheck()">
<font color="red">
                                  ${warn}

                                  </font>

                              <c:if test="${not  empty  warn}">
                                  <script>
                                  alert("Resource Name Already Exists..! Try With Other One");
                                  </script>

                                                      </c:if >

								</div>
							 </div>
							 <div class="form-group row mb-4">
								<label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Free or Paid</label>
								<div class="col-sm-12 col-md-2">
									<select class="form-control" name="category" id="category"  onchange="return pay()">
									<option value="paid">Paid</option>
									   <option value="free">Free</option>
									
									</select>
								</div>
								<div class="col-sm-4 col-md-3">
									<div class="input-group mb-3"  id="amount">
										<div class="input-group-prepend">
											<span class="input-group-text" >
												<i class="fas fa-rupee-sign"></i>
											</span>
										</div>
										<input type="text" name="amount"  value="0"  class="form-control" aria-label="Amount (to the nearest ruppee)">
									</div>
								</div>
							 </div>
							 <div class="form-group row mb-4">
								 <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Add Thumbnail Image</label>
								 <div class="col-sm-12 col-md-7">
									 <div id="image-preview" class="image-preview">
									  <label for="image-upload"  id="image-label">Choose File</label>
									  <input type="file" name="image" required id="image-upload" accept="image/*"  onchange="return fileValidation()"  />
									 </div>



								 </div>

							 </div>
							 <div class="form-group row mb-4">
								<label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">About Resource</label>
								<div class="col-sm-12 col-md-7">
								   <textarea class="summernote-simple"   maxlength="10" required name="about_resource"></textarea>
								</div>
							 </div>


							 <div class="form-group row mb-4">
								 <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Add Files</label>

								 <div class="col-sm-12 col-md-2">
                                  <input type="text" name="tit"  maxlength="12" required class="form-control inputtags" placeholder="Title">
                                 								 </div>
								 	 <div class="col-sm-4 col-md-2">

                                 									<select class="form-control" name="categ">

                                 									   <option value="video">Video</option>
                                 									   <option value="Worksheets">Worksheets</option>
                                 									   <option value="Activity ">Activity </option>
                                 									   <option value="Articles">Articles</option>
                                 									</select>
                                 								 </div>
								 <div class="col-sm-4 col-md-2">

									<select class="form-control" name="filetype" id="filetype">

									   <option value="video">Video</option>
									   <option value="word">Word</option>
									   <option value="ppt">PPT</option>
									   <option value="pdf">PDF</option>
									</select>
								 </div>
								 <div class="col-sm-4 col-md-3">
									 <div class="custom-file">
										<input type="file" required name="file" class="custom-file-input" id="customFile" onchange="return fileTypeValidation()"  >
										<label class="custom-file-label" for="customFile">Choose file</label>
									</div>
								 </div>
							 </div>



							  <div class="form-group row mb-4">
                             								 <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Add Files</label>

                             						 <div class="col-sm-12 col-md-2">
                                                                                  <input type="text" name="tit1" maxlength="12"  class="form-control inputtags" placeholder="Title">
                                                                                 								 </div>

                             									 <div class="col-sm-4 col-md-2">

                                                           				<select class="form-control" name="categ1" >
                                                        						   <option value="video">Video</option>
                                                             				   <option value="Worksheets">Worksheets</option>
                                                                          		   <option value="Activity ">Activity </option>
                                                                                          				   <option value="Articles">Articles</option>
                                                                                    					</select>
                                                                                          				 </div>

                             								 <div class="col-sm-4 col-md-2">

                       									<select class="form-control" name="filetype1" id="filetype1">

                             									   <option value="video">Video</option>
                             									   <option value="word">Word</option>
                             									   <option value="ppt">PPT</option>
                             									   <option value="pdf">PDF</option>
                             									</select>
                             								 </div>
                             								 <div class="col-sm-4 col-md-3">
                             									 <div class="custom-file">
                             										<input type="file"  name="file1" class="custom-file-input" id="customFile1" onchange="return fileTypeValidation1()"  >
                             										<label class="custom-file-label" for="customFile">Choose file</label>
                             									</div>
                             								 </div>
                             							 </div>


                             							  <div class="form-group row mb-4">
                                                         								 <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Add Files</label>

	 <div class="col-sm-12 col-md-2">
                                  <input type="text" name="tit2" maxlength="12"  class="form-control inputtags" placeholder="Title">
                                 								 </div>
            	 <div class="col-sm-4 col-md-2">

                                             									<select class="form-control" name="categ2" >

                                             									   <option value="video">Video</option>
                                             									   <option value="Worksheets">Worksheets</option>
                                             									   <option value="Activity ">Activity </option>
                                             									   <option value="Articles">Articles</option>
                                             									</select>
                                             								 </div>
                                                         								 <div class="col-sm-4 col-md-2">
                                                         									<select class="form-control" name="filetype2" id="filetype2">

                                                         									   <option value="video">Video</option>
                                                         									   <option value="word">Word</option>
                                                         									   <option value="ppt">PPT</option>
                                                         									   <option value="pdf">PDF</option>
                                                         									</select>
                                                         								 </div>
                                                         								 <div class="col-sm-4 col-md-3">
                                                         									 <div class="custom-file">
                                                         										<input type="file"  name="file2" class="custom-file-input" id="customFile2" onchange="return fileTypeValidation2()"  >
                                                         										<label class="custom-file-label" for="customFile">Choose file</label>
                                                         									</div>
                                                         								 </div>
                                                         							 </div>

                           <div class="form-group row mb-4">
								 <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Add Files</label>
	 <div class="col-sm-12 col-md-2">
                                  <input type="text" name="tit3" maxlength="12"  class="form-control inputtags" placeholder="Title">
                                 								 </div>
									 <div class="col-sm-4 col-md-2">

                                                                 									<select class="form-control" name="categ3" >

                                                                 									   <option value="video">Video</option>
                                                                 									   <option value="Worksheets">Worksheets</option>
                                                                 									   <option value="Activity ">Activity </option>
                                                                 									   <option value="Articles">Articles</option>
                                                                 									</select>
                                                                 								 </div>


								 <div class="col-sm-4 col-md-2">
									<select class="form-control" name="filetype3" id="filetype3">

									   <option value="video">Video</option>
									   <option value="word">Word</option>
									   <option value="ppt">PPT</option>
									   <option value="pdf">PDF</option>
									</select>
								 </div>
								 <div class="col-sm-4 col-md-3">
									 <div class="custom-file">
										<input type="file"  name="file3" class="custom-file-input" id="customFile3" onchange="return fileTypeValidation3()"  >
										<label class="custom-file-label" for="customFile">Choose file</label>
									</div>
								 </div>
							 </div>



							 <br>


							       <div class="form-group row mb-4">
                            								 <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Add Instructor</label>
                            								 <div class="col-sm-4 col-md-4">
                            										 <select  required name="instructor" class="form-control selectric" multiple="" max-length="3">
                                                                    <c:forEach items="${facList}" var="rows">

                                                                                              <option value="${rows.firstname}">${rows.firstname}</option>

                                                                                                  </c:forEach>
                                                               		</select>
                            								 </div>

                            							 </div>





							   <br>


							 <div class="form-group row mb-4">
								 <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Add Keywords</label>
								 <div class="col-sm-12 col-md-2">
									 <input type="text" name="keyword" required class="form-control inputtags">
								 </div>
								 <div class="col-sm-12 col-md-2">
									 <input type="text" name="keyword" required class="form-control inputtags">
								 </div>
								 <div class="col-sm-12 col-md-2">
									 <input type="text" name="keyword" required class="form-control inputtags">
								 </div>
								 <div class="col-sm-12 col-md-2">

									 <a class="btn btn-primary" onClick="keyword()" style="color:white">ADD MORE KEYWORDS</a>
								 </div>
							 </div>
							 <div class="form-group row mb-4" style="display:none" id="key">
								 <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3"></label>
								 <div class="col-sm-12 col-md-2">
									 <input type="text" name="keyword" class="form-control inputtags">
								 </div>
								 <div class="col-sm-12 col-md-2">
									 <input type="text" name="keyword" class="form-control inputtags">
								 </div>
								 <div class="col-sm-12 col-md-2">
									 <input type="text" name="keyword" class="form-control inputtags">
								 </div>
								 <div class="col-sm-12 col-md-2">
									 <input type="text" name="keyword" class="form-control inputtags">
								 </div>
							 </div>
							 <div class="form-group row mb-4">
								<label class="col-form-label text-md-right col-12 col-md-3 col-lg-3"></label>
								<div class="col-sm-12 col-md-7">
								   <button formaction="/create_resource" class="btn btn-primary" onclick="return confirm('Save This Resource?');">CREATE RESOURCE</button>
								</div>
							 </div>

							 </form>
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
	  <script src="assets/admin/js/page/multiple-upload.js"></script>
	  <script src="assets/admin/js/page/widget-data.js"></script>
	  	  <script src="assets/admin/bundles/jquery-selectric/jquery.selectric.min.js"></script>
      <!-- Page Specific JS File -->
      <script src="assets/admin/js/page/index.js"></script>

      <!-- Template JS File -->
      <script src="assets/admin/js/scripts.js"></script>
      <!-- Custom JS File -->
      <script src="assets/admin/js/custom.js"></script>
       <script src="assets/admin/js/resourceval.js"></script>
   </body>

</html>