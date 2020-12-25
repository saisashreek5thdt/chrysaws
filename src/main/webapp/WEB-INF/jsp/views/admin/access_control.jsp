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
                  <div class="row ">
                     <div class="col-xl-3 col-lg-6 col-md-6 col-sm-6 col-xs-12">
                        <div class="card l-bg-green">
                           <div class="card-statistic-3">
                              <div class="align-items-center justify-content-between">
                                 <div class="row ">
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 pr-0 pt-3">
                                       <div class="card-content">
                                          <h5 class="font-15">Access Created</h5>




                                          <h2 class="mb-3 font-18">


                            <c:forEach items="${admList}" var="row">
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
                                          <h5 class="font-15">User Profiles Registered</h5>
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
                  </div>
                  <div class="row">
                     <div class="col-12">
                        <div class="card">
                           <div class="card-header">
                              <ul class="nav nav-pills" id="myTab3" role="tablist">
                                 <li class="nav-item">
                                    <a class="nav-link active" id="home-tab3" data-toggle="tab" href="#home3" role="tab" aria-controls="home" aria-selected="true">
                                    User Registry
                                    </a>
                                 </li>
                                 <li class="nav-item">
                                    <a class="nav-link" id="profile-tab3" data-toggle="tab" href="#profile3" role="tab" aria-controls="profile" aria-selected="false">Access Control</a>
                                 </li>
                              </ul>
                           </div>
                           <div class="card-body p-0">
                              <div class="tab-content" id="myTabContent2">
                                 <div class="tab-pane fade show active" id="home3" role="tabpanel" aria-labelledby="home-tab3">
                                    <div class="table-responsive">
                                       <table class="table table-striped">
                                          <tr>
                                             <th class="text-center">
                                                <div class="custom-checkbox custom-checkbox-table custom-control">
                                                   <input type="checkbox" data-checkboxes="mygroup" data-checkbox-role="dad" class="custom-control-input" id="checkbox-all">
                                                   <label for="checkbox-all" class="custom-control-label">&nbsp;</label>
                                                </div>
                                             </th>
                                             <th>User Name</th>
											 <th>Course Name</th> 
                                             <th>Type</th>
                                             <th>Categories</th>
                                             <th>Start Date</th>
                                             <th>End Date</th>
                                             <th>Amount (all in INR)</th>
                                          </tr>
                                          <tr>
                                             <td class="p-0 text-center">
                                                <div class="custom-checkbox custom-control">
                                                   <input type="checkbox" data-checkboxes="mygroup" class="custom-control-input" id="checkbox-1">
                                                   <label for="checkbox-1" class="custom-control-label">&nbsp;</label>
                                                </div>
                                             </td>
                                             <td>Jhon Doe</td>
											 <td>Maths</td> 
                                             <td class="text-truncate">
                                                <div class="badge badge-success">Free</div>
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
                                             <td>2018-01-20</td>
                                             <td>2019-05-28</td>
                                             <td>2500</td>
                                          </tr>
                                          <tr>
                                             <td class="p-0 text-center">
                                                <div class="custom-checkbox custom-control">
                                                   <input type="checkbox" data-checkboxes="mygroup" class="custom-control-input" id="checkbox-2">
                                                   <label for="checkbox-2" class="custom-control-label">&nbsp;</label>
                                                </div>
                                             </td>
											 <td>Sarah Williams</td> 
                                             <td>Redesign homepage</td>
                                             <td class="text-truncate">
                                                <div class="badge badge-danger">Paid</div>
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
                                             <td>2018-01-20</td>
                                             <td>2019-05-28</td>
                                             <td>485</td>
                                          </tr>
                                          <tr>
                                             <td class="p-0 text-center">
                                                <div class="custom-checkbox custom-control">
                                                   <input type="checkbox" data-checkboxes="mygroup" class="custom-control-input" id="checkbox-3">
                                                   <label for="checkbox-3" class="custom-control-label">&nbsp;</label>
                                                </div>
                                             </td>
											 <td>Faridah Bawani</td> 
                                             <td>Backup database</td>
                                             <td class="text-truncate">
                                                <div class="badge badge-danger">Paid</div>
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
                                             <td>2018-01-20</td>
                                             <td>2019-05-28</td>
                                             <td>752</td>
                                          </tr>
                                          <tr>
                                             <td class="p-0 text-center">
                                                <div class="custom-checkbox custom-control">
                                                   <input type="checkbox" data-checkboxes="mygroup" class="custom-control-input"
                                                      id="checkbox-4">
                                                   <label for="checkbox-4" class="custom-control-label">&nbsp;</label>
                                                </div>
                                             </td>
											 <td>Faridah Bawani</td> 
                                             <td>Android App</td>
                                             <td class="text-truncate">
                                                <div class="badge badge-success">Free</div>
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
                                             <td>2018-01-20</td>
                                             <td>2019-05-28</td>
                                             <td>954</td>
                                          </tr>
                                          <tr>
                                             <td class="p-0 text-center">
                                                <div class="custom-checkbox custom-control">
                                                   <input type="checkbox" data-checkboxes="mygroup" class="custom-control-input"
                                                      id="checkbox-5">
                                                   <label for="checkbox-5" class="custom-control-label">&nbsp;</label>
                                                </div>
                                             </td>
											 <td>Faridah Bawani</td> 
                                             <td>Logo Design</td>
                                             <td class="text-truncate">
                                                <div class="badge badge-danger">Paid</div>
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
                                             <td>2018-01-20</td>
                                             <td>2019-05-28</td>
                                             <td>1500</td>
                                          </tr>
                                          <tr>
                                             <td class="p-0 text-center">
                                                <div class="custom-checkbox custom-control">
                                                   <input type="checkbox" data-checkboxes="mygroup" class="custom-control-input" id="checkbox-6">
                                                   <label for="checkbox-6" class="custom-control-label">&nbsp;</label>
                                                </div>
                                             </td>
											 <td>Sarah Williams</td> 
                                             <td>Ecommerce website</td>
                                             <td class="text-truncate">
                                                <div class="badge badge-success">Free</div>
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
                                             <td>2018-01-20</td>
                                             <td>2019-05-28</td>
                                             <td>485</td>
                                          </tr>
                                       </table>
                                    </div>
                                 </div>
                                 <div class="tab-pane fade" id="profile3" role="tabpanel" aria-labelledby="profile-tab3">
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
                                             <th>Email</i></th>
                                             <th>Password</th>
                                             <th>Categories</th>
                                             <th>Date Created</th>
                                             <th>Actions</th>
                                          </tr>

                                            <c:forEach items="${admList}" var="row">
                                            <form action="/delete_admin" method="post">
                                          <tr>
                                             <td class="p-0 text-center">
                                                <div class="custom-checkbox custom-control">
                                                   <input type="checkbox" data-checkboxes="mygroup" class="custom-control-input" id="checkbox-1">
                                                   <label for="checkbox-1" class="custom-control-label">&nbsp;</label>
                                                </div>
                                             </td>
                                             <td>${row.first_name}</td>
                                             <td class="text-truncate">
                                               ${row.email}
                                               <input type="hidden" name="admin_id" value="   ${row.id}">
                                             </td>
                                             <td>
                                 <input type="password" value="${row.password}"  disabled="disabled" id="myInput" readonly style="border:none;color:grey" >
                                             </td>
											 <td>${row.access_control}</td>
											 <td>${row.date}</td>
                                             <td>
                                                <a class="btn btn-success btn-action mr-1"  onclick="myFunction()" data-toggle="tooltip" title="View">
                                                <i class="far fa-eye"></i>
                                                </a>


                                                <button formaction="/edit_admin" class="btn btn-primary btn-action mr-1" data-toggle="tooltip" title="Edit">
                                                <i class="fas fa-pencil-alt"></i>
                                                </button>
                                                <button formaction="/delete_admin?id=${row.id}" class="btn btn-danger btn-action" data-toggle="tooltip" title="Delete"
                                                   data-confirm="Are You Sure?|This action can not be undone. Do you want to continue?"
                                                   data-confirm-yes="alert('Deleted')">
                                                <i class="fas fa-trash"></i>
                                                </button>
                                             </td>
                                          </tr>
                                          </form>

                                                  </c:forEach>


                                       </table>
                                    </div>
                                 </div>
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
                              <h4>Create Access</h4>
                           </div>
                           <div class="card-body">
                                     <form action="/adminreg" method="post" modelAttribute="adminreg">
                              <div class="form-group row mb-4">

                                 <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Name</label>
                                 <div class="col-sm-6 col-md-4">
                                    <input type="text" class="form-control" minlength="2"  maxlength="16" name="fname" required placeholder="Enter First Name">
                                 </div>
								 <div class="col-sm-6 col-md-4">
                                    <input type="text" class="form-control" minlength="1"  maxlength="8" name="lname" required placeholder="Enter Last Name">
                                 </div> 
                              </div>
                              <div class="form-group row mb-4">
                                 <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Email</label>
                                 <div class="col-sm-4 col-md-3">
                                    <div class="input-group mb-3">
                                       <div class="input-group-prepend">
                                          <span class="input-group-text">
                                          <i data-feather="mail"></i>
                                          </span>
                                       </div>
                                       <input type="email" class="form-control" name="regemail" required  aria-label="Only Email is Accepted">
                                    </div>
                                 </div>
                              </div>
							  <div class="form-group row mb-4">
                                 <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Password</label>
                                 <div class="col-sm-4 col-md-3">
                                    <div class="input-group mb-3">
                                       <div class="input-group-prepend">
                                          <span class="input-group-text">
                                          <i data-feather="eye-off"></i>
                                          </span>
                                       </div>
                                       <input type="password" minlength="8"  maxlength="16" class="form-control"  name="regpassword" required aria-label="Minimum 8 and Maximum 16 Characters">
                                    </div>
                                 </div>
								 <div class="col-sm-4 col-md-3">
									 <div class="input-group mb-5">
										 <h6 class="font-weight-bold">(Minimum 8 and Maximum 16 above Characters)</h6>
									 </div>
								 </div> 
                              </div>
                              <div class="form-group row mb-4">
                                 <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Add Access</label>
                                 <div class="col-sm-12 col-md-4">
                                    <select class="form-control selectric" multiple=""  name="access" required>
                                       <option class="text-center">*Select Access Control*</option>
                                       <option value="all">Access ALL</option>
									   <option value="slider">Slider</option>
                                       <option value="resources">Resources</option>
                                       <option value="course">Courses</option>
                                       <option value="summit">Summit</option>
									   <option value="blogs">Blog</option>
                                       <option value="faculty">Faculty</option>
                                       <option value="message_center">Message Center</option>
									   <option value="mail"> Mail</option>
                                    </select>
                                 </div>
                              </div>
                              <div class="form-group row mb-4">
                                 <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3"></label>
                                 <div class="col-sm-12 col-md-7">
                                    <button class="btn btn-primary">CREATE ACCESS</button>
                                 </div>
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
      <!-- Page Specific JS File -->
      <script src="assets/admin/js/page/index.js"></script>
      <!-- Template JS File -->
      <script src="assets/admin/js/scripts.js"></script>
      <!-- Custom JS File -->
      <script src="assets/admin/js/custom.js"></script>
   </body>
</html>