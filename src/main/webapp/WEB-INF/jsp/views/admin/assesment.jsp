
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
                                       <th>Start Date</th>
									   <th>End Date</th>
                                       <th>Actions</th>
                                    </tr>       <c:forEach items="${courseList}" var="row">
                                    <tr>
									
                                       <td class="p-0 text-center">
                                          <div class="custom-checkbox custom-control">
                                             <input type="checkbox" data-checkboxes="mygroup" class="custom-control-input" id="checkbox-1">
                                             <label for="checkbox-1" class="custom-control-label">&nbsp;</label>
                                          </div>
                                       </td>
                                       <td>${row.coursename}</td>
                                       <td>${row.start}</td>
                                       <td>${row.end}</td>
                                       <td>
									   <form method="get">
										 <a href="/createAssesments?id=${row.id}&name=${row.coursename}" class="btn btn-primary">Create</a>
										</form>
									 </td>
                                    </tr>
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
                                              <h4>Assessments</h4>
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
                                                       <th>User Email</th>
                                                       <th>Course Name</th>
                									   <th>Assessment Name</th>
                                                       <th>Download</th>
                                                    </tr>       <c:forEach items="${assList}" var="row">
                                                    <tr>

                                                       <td class="p-0 text-center">
                                                          <div class="custom-checkbox custom-control">
                                                             <input type="checkbox" data-checkboxes="mygroup" class="custom-control-input" id="checkbox-1">
                                                             <label for="checkbox-1" class="custom-control-label">&nbsp;</label>
                                                          </div>
                                                       </td>
                                                       <td>${row.user}</td>

                                                       <td>
                                                        <c:forEach items="${asList}" var="rowt">
                                                         <c:if test="${row.file2==rowt.file}">
                                                       ${rowt.course}
                                                         </c:if>
                                                                 </c:forEach>
                                                       </td>
                                                              <td>
                                                   <c:forEach items="${asList}" var="rowtt">
                                                         <c:if test="${row.file2==rowtt.file}">
                                                      ${rowtt.course}
                                                              </c:if>
                                                                    </c:forEach>
                                                                  </td>


                                                       <td>
                									   <form method="get">
                										 <a href="assets/uploads/assessments/${row.file}" class="btn btn-primary">View</a>
                										</form>
                									 </td>
                                                    </tr>
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