

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="stag" %>


<%
if(session.getAttribute("adminemail")==null || session.getAttribute("slider").equals("0"))
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

   <script>

    function pay(){

           if( document.getElementById("category").value=="home"){
   			 document.getElementById("homec").style.display="flex";
   			 	 document.getElementById("b1").style.display="none";
                			  document.getElementById("b2").style.display="flex";

   		}
   		else{
   			 document.getElementById("homec").style.display="none";
   			 document.getElementById("b1").style.display="flex";
   			  document.getElementById("b2").style.display="none";
   			 	 document.getElementById("hc").value="";
   			 	 	 document.getElementById("customFile").value="";
   		}


   		}




   		     function fileValidation() {

                          var fileInput =
                              document.getElementById('customFile');

                          var filePath = fileInput.value;

                          // Allowing file type

                          if(document.getElementById("category").value=="home" && document.getElementById("hc").value=="home1" ||document.getElementById("hc").value=="home2" ){
                          var allowedExtensions =
                                  /(\.jpg|\.jpeg|\.png|\.gif|\.avi|\.mp4|\.mpeg|\.mov|\.flv|\.wmv|\.gif)$/i;
                               }
                               else{
                             var allowedExtensions =
                                                     /(\.jpg|\.jpeg|\.png)$/i;

                               }
                          if (!allowedExtensions.exec(filePath)) {
                              alert('Invalid file type');
                              fileInput.value = '';
                              return false;
                          }
                          var ex=filePath.split('.').pop();
                       if(ex=="jpg" || ex =="png"){
 document.getElementById('az').value="image";
                      }

                          if(ex=="mp4" || ex =="avi" || ex =="flv" || ex =="mpeg"){
                       document.getElementById('az').value="video";
                                            }
}

   </script>
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
                                 <h4>Slider</h4>
                              </div>
                              <div class="card-body">
								  <div class="bootstrap snippet">
                      			  <section id="portfolio" class="gray-bg padding-top-bottom">
									  <div class="categories">
										  <ul>
											<li class="active">
											  <a href="#" data-filter="*">All Categories</a>
											</li>
											<li>
											  <a href="#" data-filter=".home">Home</a>
											</li>
											<li>
											  <a href="#" data-filter=".resources">Resources</a>
											</li>
											<li>
											  <a href="#" data-filter=".courses">Courses</a>
											</li>
											<li>
											  <a href="#" data-filter=".summit">Summit</a>
											</li>
											<li>
											  <a href="#" data-filter=".blog">Blog</a>
											</li>
											<li>
											  <a href="#" data-filter=".faculty">Faculty</a>
											</li>  
										 </ul>
									 </div>
									<div class="projects-container scrollimation in">
									  <div class="row">









										  <c:forEach items="${sliderList}" var="rowt">



                                                    <c:if test="${rowt.category=='home1'}">

                  										<article class="col-md-4 col-sm-6 portfolio-item home">
                  										  <div class="portfolio-thumb in">
	                                        <a href="#" class="main-link">

										   	   <c:if test="${rowt.type=='image'}">
                                                      	  <img class="img-responsive img-center" src="assets/uploads/slider/${rowt.slider}" alt="" style="height:240px">
                                                    	   </c:if >
                                                       <c:if test="${rowt.type=='video'}">
                                                           <video autoplay muted loop class="img-responsive img-center"   style="width:100%;z-index:-1;height:240px">
                                                       <source src="assets/uploads/slider/${rowt.slider}" class="d-block w-100" type="video/mp4">

                                                                    </video>
                                                  	   </c:if >

											  <span class="project-title">${rowt.title}</span>
											  <span class="overlay-mask"></span>
											</a>
                  											<a class="enlarge cboxElement" href="#" title="Bills Project">
                  												<i class="fa fa-expand fa-fw"></i>
                  											</a>
                  											<a class="link centered" href="#">
                  												<i class="fa fa-eye fa-fw"></i>
                  											</a>
                  										  </div>
                  										</article>
                  										   </c:if >



                                  <c:if test="${rowt.category=='home2'}">

                    										<article class="col-md-4 col-sm-6 portfolio-item home">
                    										  <div class="portfolio-thumb in">
                                                    	<a href="#" class="main-link">
                                                    	   <c:if test="${rowt.type=='image'}">
              											  <img class="img-responsive img-center" src="assets/uploads/slider/${rowt.slider}" alt="" style="height:240px">
              											   </c:if >
              					                     <c:if test="${rowt.type=='video'}">
                                          			    <video autoplay muted loop class="img-responsive img-center"   style="width:100%;z-index:-1;height:240px">
                                                                           <source src="assets/uploads/slider/${rowt.slider}" class="d-block w-100" type="video/mp4">

                                                                         </video>
                                          					   </c:if >

              											  <span class="project-title">${rowt.title}</span>
              											  <span class="overlay-mask"></span>
              											</a>
                    											<a class="enlarge cboxElement" href="#" title="Bills Project">
                    												<i class="fa fa-expand fa-fw"></i>
                    											</a>
                    											<a class="link centered" href="#">
                    												<i class="fa fa-eye fa-fw"></i>
                    											</a>
                    										  </div>
                    										</article>
                    										   </c:if >



                                  <c:if test="${rowt.category=='home3'}">

                  										<article class="col-md-4 col-sm-6 portfolio-item home">
                  										  <div class="portfolio-thumb in">
                                                        	<a href="#" class="main-link">
           											  <img class="img-responsive img-center" src="assets/uploads/slider/${rowt.slider}" alt="" style="height:240px">
           											  <span class="project-title">${rowt.title}</span>
           											  <span class="overlay-mask"></span>
           											</a>
                  											<a class="enlarge cboxElement" href="#" title="Bills Project">
                  												<i class="fa fa-expand fa-fw"></i>
                  											</a>
                  											<a class="link centered" href="#">
                  												<i class="fa fa-eye fa-fw"></i>
                  											</a>
                  										  </div>
                  										</article>
                  										   </c:if >



                                              <c:if test="${rowt.category=='home4'}">

                  										<article class="col-md-4 col-sm-6 portfolio-item home">
                  										  <div class="portfolio-thumb in">
                                            	<a href="#" class="main-link">
              											  <img class="img-responsive img-center" src="assets/uploads/slider/${rowt.slider}" alt="" style="height:240px">
              											  <span class="project-title">${rowt.title}</span>
              											  <span class="overlay-mask"></span>
              											</a>
                  											<a class="enlarge cboxElement" href="#" title="Bills Project">
                  												<i class="fa fa-expand fa-fw"></i>
                  											</a>
                  											<a class="link centered" href="#">
                  												<i class="fa fa-eye fa-fw"></i>
                  											</a>
                  										  </div>
                  										</article>
                  										   </c:if >


 <c:if test="${rowt.category=='home5'}">

                  										<article class="col-md-4 col-sm-6 portfolio-item home">
                  										  <div class="portfolio-thumb in">
                                            	<a href="#" class="main-link">
              											  <img class="img-responsive img-center" src="assets/uploads/slider/${rowt.slider}" alt="" style="height:240px">
              											  <span class="project-title">${rowt.title}</span>
              											  <span class="overlay-mask"></span>
              											</a>
                  											<a class="enlarge cboxElement" href="#" title="Bills Project">
                  												<i class="fa fa-expand fa-fw"></i>
                  											</a>
                  											<a class="link centered" href="#">
                  												<i class="fa fa-eye fa-fw"></i>
                  											</a>
                  										  </div>
                  										</article>
                  										   </c:if >


										       <c:if test="${rowt.category=='faculty'}">

										<article class="col-md-4 col-sm-6 portfolio-item faculty">
										  <div class="portfolio-thumb in">
			                                    	<a href="#" class="main-link">
            											  <img class="img-responsive img-center" src="assets/uploads/slider/${rowt.slider}" alt="" style="height:240px">
            											  <span class="project-title">${rowt.title}</span>
            											  <span class="overlay-mask"></span>
            											</a>
											<a class="enlarge cboxElement" href="#" title="Bills Project">
												<i class="fa fa-expand fa-fw"></i>
											</a>
											<a class="link centered" href="#">
												<i class="fa fa-eye fa-fw"></i>
											</a>
										  </div>
										</article>
										   </c:if >


                                                 <c:if test="${rowt.category=='resources'}">

                  										<article class="col-md-4 col-sm-6 portfolio-item resources">
                   										  <div class="portfolio-thumb in">
                                         	<a href="#" class="main-link">
             											  <img class="img-responsive img-center" src="assets/uploads/slider/${rowt.slider}" alt="" style="height:240px">
         											  <span class="project-title">${rowt.title}</span>
         											  <span class="overlay-mask"></span>
         											</a>
                  											<a class="enlarge cboxElement" href="#" title="Bills Project">
                  												<i class="fa fa-expand fa-fw"></i>
                  											</a>
                  											<a class="link centered" href="#">
                  												<i class="fa fa-eye fa-fw"></i>
                  											</a>
                  										  </div>
                  										</article>
                  										   </c:if >




                                                        <c:if test="${rowt.category=='courses'}">

                  										<article class="col-md-4 col-sm-6 portfolio-item courses">
                  										  <div class="portfolio-thumb in">
                  											<a href="#" class="main-link">
                                                        											  <img class="img-responsive img-center" src="assets/uploads/slider/${rowt.slider}" alt="" style="height:240px">
                                                        											  <span class="project-title">${rowt.title}</span>
                                                        											  <span class="overlay-mask"></span>
                                                        											</a>
                  											<a class="enlarge cboxElement" href="#" title="Bills Project">
                  												<i class="fa fa-expand fa-fw"></i>
                  											</a>
                  											<a class="link centered" href="#">
                  												<i class="fa fa-eye fa-fw"></i>
                  											</a>
                  										  </div>
                  										</article>
                  										   </c:if >


                           <c:if test="${rowt.category=='blogs'}">

                  										<article class="col-md-4 col-sm-6 portfolio-item blog">
                  										  <div class="portfolio-thumb in">
	                                        <a href="#" class="main-link">
											  <img class="img-responsive img-center" src="assets/uploads/slider/${rowt.slider}" alt="" style="height:240px">
											  <span class="project-title">${rowt.title}</span>
											  <span class="overlay-mask"></span>
											</a>
                  											<a class="enlarge cboxElement" href="#" title="Bills Project">
                  												<i class="fa fa-expand fa-fw"></i>
                  											</a>
                  											<a class="link centered" href="#">
                  												<i class="fa fa-eye fa-fw"></i>
                  											</a>
                  										  </div>
                  										</article>
                  										   </c:if >



                                                   <c:if test="${rowt.category=='summit'}">

										<article class="col-md-4 col-sm-6 portfolio-item summit">
										  <div class="portfolio-thumb in">
											<a href="#" class="main-link">
											  <img class="img-responsive img-center" src="assets/uploads/slider/${rowt.slider}" alt="" style="height:240px">
											  <span class="project-title">${rowt.title}</span>
											  <span class="overlay-mask"></span>
											</a>
											<a class="link centered" href="#"><i class="fa fa-eye fa-fw"></i></a>
										  </div>
										</article>

                                     </c:if >
                                     </c:forEach>
									  </div>
									</div>
								  </section>
								</div>
                              </div>
                           </div>
                        </div>
                     </div>
					 <div class="row">
                        <div class="col-12">
                           <div class="card">
                              <div class="card-header">
                                 <h4>Upload</h4>
                              </div>	 <form  method="post" action="createSlider" enctype="multipart/form-data">
                              <div class="card-body">
                                 <div class="form-group row mb-4">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Title</label>
                                    <div class="col-sm-12 col-md-7">
                                       <input type="text" name="title" required class="form-control">
                                    </div>
                                 </div>

                                 <div class="form-group row mb-4">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Category</label>
                                    <div class="col-sm-12 col-md-7">
                                       <select class="form-control selectric" id="category" name="category" required onchange="pay()" >

                                          <option value="home">Home</option>
                                          <option value="resources">Resources</option>
										  <option value="courses">Courses</option>
                                          <option value="summit">Summit</option>
										  <option value="blogs">Blogs</option>
                                          <option value="faculty">Faculty</option>
                                       </select>
                                    </div>
                                 </div>
<input type="hidden" id="az" name="az">

                                  <div class="form-group row mb-4" required id="homec">
                                        <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Slider</label>
                                        <div class="col-sm-12 col-md-7">
                                           <select class="form-control selectric" name="hc" id="hc">

                                              <option value="home1">slider1</option>
                                              <option value="home2">slider2</option>
    										  <option value="home3">slider3</option>
                                              <option value="home4">slider4</option>
    										  <option value="home5">slider5</option>

                                           </select>
                                        </div>
                                     </div>

								 <div class="form-group row mb-4">
									 <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Add</label>
									 <div class="col-sm-12 col-md-7">
										 <div class="custom-file">
											<input type="file" name="file" required  onchange="return fileValidation()" class="custom-file-input" id="customFile">
											<label class="custom-file-label form-control" for="customFile">Choose file</label>
										 </div>
									 </div>
								 </div>

								 <div class="form-group row mb-4">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Coupon</label>
                                    <div class="col-sm-12 col-md-7">
                                       <input type="text" name="coupon" required  class="form-control">
                                    </div>
                                 </div>
                                 <div class="form-group row mb-4">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Captions</label>
                                    <div class="col-sm-12 col-md-7">
                                       <textarea class="summernote-simple" name="caption" required ></textarea>
                                    </div>
                                 </div>
                                 <div class="form-group row mb-4">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3"></label>
                                    <div class="col-sm-12 col-md-7">
                                       <button class="btn btn-primary" style="display:none"  id="b1">ADD</button>
                                       <button class="btn btn-primary" formaction="createSliders" id="b2">ADDs</button>
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
	  <script src="assets/admin/js/page/portfolio.js"></script>
      <!-- Page Specific JS File -->
      <script src="assets/admin/js/page/index.js"></script>
      <!-- Template JS File -->
      <script src="assets/admin/js/scripts.js"></script>
      <!-- Custom JS File -->
      <script src="assets/admin/js/custom.js"></script>
   </body>
   
</html>