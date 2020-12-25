


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="stag" %>


<%
if(session.getAttribute("adminemail")==null || session.getAttribute("mail").equals("0"))
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
                                    <a href="mail_compose.html">
										<button type="button" class="btn btn-danger waves-effect btn-compose m-b-15">COMPOSE</button>
									</a>
                                    <ul class="" id="mail-folders">
                                       <li class="active">
                                          <a href="" title="Inbox">
											  <i data-feather="mail"></i>&nbsp;Inbox (10)
                                          </a>
                                       </li>
                                       <li>
                                          <a href="javascript:;" title="Sent">
											  <i data-feather="package"></i>&nbsp;Sent
										  </a>
                                       </li>
                                       <li>
                                          <a href="javascript:;" title="Draft">
											  <i data-feather="pocket"></i>&nbsp;Draft
										  </a>
                                       </li>
                                       <li>
                                          <a href="javascript:;" title="Bin">
											  <i data-feather="trash-2"></i>&nbsp;Trash
										  </a>
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
                                             <th class="text-center">
                                                <label class="form-check-label">
                                                <input type="checkbox">
                                                <span class="form-check-sign"></span>
                                                </label>
                                             </th>
                                             <th colspan="3">
                                                <div class="inbox-header">
                                                   <div class="mail-option">
                                                      <div class="email-btn-group m-l-15">
                                                         <a href="#" class="col-dark-gray waves-effect m-r-20" title="back" data-toggle="tooltip">
                                                         <i data-feather="corner-down-left"></i>
                                                         </a>
                                                         <a href="#" class="col-dark-gray waves-effect m-r-20" title="Archive" data-toggle="tooltip">
                                                         <i data-feather="download"></i>
                                                         </a>
                                                         <div class="p-r-20">|</div>
                                                         <a href="#" class="col-dark-gray waves-effect m-r-20" title="Error" data-toggle="tooltip">
                                                         <i data-feather="alert-circle"></i>
                                                         </a>
                                                         <a href="#" class="col-dark-gray waves-effect m-r-20" title="Delete" data-toggle="tooltip">
                                                         <i data-feather="trash-2"></i>
                                                         </a>
                                                         <a href="#" class="col-dark-gray waves-effect m-r-20" title="Folders" data-toggle="tooltip">
                                                         <i data-feather="folder"></i>
                                                         </a>
                                                         <a href="#" class="col-dark-gray waves-effect m-r-20" title="Tag" data-toggle="tooltip">
                                                         <i data-feather="tag"></i>
                                                         </a>
                                                      </div>
                                                   </div>
                                                </div>
                                             </th>
											 <th>
												 <i data-feather="paperclip"></i>
											 </th> 
                                             <th class="hidden-xs" colspan="2">
                                                <div class="pull-right">
                                                   <div class="email-btn-group m-l-15">
                                                      <a href="#" class="col-dark-gray waves-effect m-r-20" title="previous" data-toggle="tooltip">
                                                      <i data-feather="chevron-left"></i>
                                                      </a>
                                                      <a href="#" class="col-dark-gray waves-effect m-r-20" title="next" data-toggle="tooltip">
                                                      <i data-feather="chevron-right"></i>
                                                      </a>
                                                   </div>
                                                </div>
                                             </th>
                                          </tr>
                                       </thead>
                                       <tbody>
                                          <tr class="unread">
                                             <td class="tbl-checkbox">
                                                <label class="form-check-label">
													<input type="checkbox">
													<span class="form-check-sign"></span>
                                                </label>
                                             </td>
                                             <td class="hidden-xs">Nelson Lane</td>
											 <td>
												 <span class="badge badge-primary">Work</span>
											 </td> 
                                             <td class="max-texts">
                                                <a href="mail_read.html">
													Lorem ipsum perspiciatis unde omnis iste natus
												</a>
                                             </td>
                                             <td class="hidden-xs">
                                                <i data-feather="paperclip"></i>
                                             </td>
                                             <td class="text-right"> 12:30 PM </td>
                                          </tr>
                                          <tr class="unread">
                                             <td class="tbl-checkbox">
                                                <label class="form-check-label">
                                                <input type="checkbox">
                                                <span class="form-check-sign"></span>
                                                </label>
                                             </td>
                                             <td class="hidden-xs">Kerry Mann</td>
											 <td></td> 
                                             <td class="max-texts">
                                                <a href="#">Lorem ipsum perspiciatis unde omnis iste natus</a>
                                             </td>
                                             <td class="hidden-xs">
                                                <i data-feather="paperclip"></i>
                                             </td>
                                             <td class="text-right"> May 13 </td>
                                          </tr>
                                          <tr class="unread">
                                             <td class="tbl-checkbox">
                                                <label class="form-check-label">
                                                <input type="checkbox">
                                                <span class="form-check-sign"></span>
                                                </label>
                                             </td>
                                             <td class="hidden-xs">Adam Peters</td>
											 <td>
												 <span class="badge badge-secondary">Shopping</span>
											 </td>
                                             <td class="max-texts">
                                                <a href="#">
                                                
                                                Lorem ipsum perspiciatis unde omnis</a>
                                             </td>
                                             <td class="hidden-xs">
                                                <i data-feather="paperclip"></i>
                                             </td>
                                             <td class="text-right"> May 12 </td>
                                          </tr>
                                          <tr>
                                             <td class="tbl-checkbox">
                                                <label class="form-check-label">
                                                <input type="checkbox">
                                                <span class="form-check-sign"></span>
                                                </label>
                                             </td>
                                             <td class="hidden-xs">Lula Reese</td>
											 <td>
												 <span class="badge badge-success">Family</span>
											 </td>
                                             <td class="max-texts">
                                                <a href="#">
                                                
                                                Lorem ipsum perspiciatis unde omnis iste natus</a>
                                             </td>
                                             <td class="hidden-xs">
                                                <i data-feather="paperclip"></i>
                                             </td>
                                             <td class="text-right"> May 12 </td>
                                          </tr>
                                          <tr>
                                             <td class="tbl-checkbox">
                                                <label class="form-check-label">
                                                <input type="checkbox">
                                                <span class="form-check-sign"></span>
                                                </label>
                                             </td>
                                             <td class="hidden-xs">Nelson Lane</td>
											 <td></td>
                                             <td class="max-texts">
                                                <a href="#">
                                                Lorem ipsum perspiciatis unde omnis iste natus</a>
                                             </td>
                                             <td class="hidden-xs">
                                                <i data-feather="paperclip"></i>
                                             </td>
                                             <td class="text-right"> May 12 </td>
                                          </tr>
                                          <tr>
                                             <td class="tbl-checkbox">
                                                <label class="form-check-label">
                                                <input type="checkbox">
                                                <span class="form-check-sign"></span>
                                                </label>
                                             </td>
                                             <td class="hidden-xs">Kerry Mann</td>
											 <td></td>
                                             <td class="max-texts">
                                                <a href="#">Lorem ipsum perspiciatis unde omnis iste natus</a>
                                             </td>
                                             <td class="hidden-xs">
                                                <i data-feather="paperclip"></i>
                                             </td>
                                             <td class="text-right"> May 11 </td>
                                          </tr>
                                          <tr>
                                             <td class="tbl-checkbox">
                                                <label class="form-check-label">
                                                <input type="checkbox">
                                                <span class="form-check-sign"></span>
                                                </label>
                                             </td>
                                             <td class="hidden-xs">Adam Peters</td>
											 <td>
												 <span class="badge badge-info">Office</span>
											 </td>
                                             <td class="max-texts">
                                                <a href="#">
                                                
                                                Lorem ipsum perspiciatis unde omnis iste natus</a>
                                             </td>
                                             <td class="hidden-xs">
                                                <i data-feather="paperclip"></i>
                                             </td>
                                             <td class="text-right"> May 11 </td>
                                          </tr>
                                          <tr>
                                             <td class="tbl-checkbox">
                                                <label class="form-check-label">
                                                <input type="checkbox">
                                                <span class="form-check-sign"></span>
                                                </label>
                                             </td>
                                             <td class="hidden-xs">Lula Reese</td>
											 <td></td>
                                             <td class="max-texts">
                                                <a href="#">
                                                Lorem ipsum perspiciatis unde omnis iste natus</a>
                                             </td>
                                             <td class="hidden-xs">
                                                <i data-feather="paperclip"></i>
                                             </td>
                                             <td class="text-right"> May 11 </td>
                                          </tr>
                                          <tr>
                                             <td class="tbl-checkbox">
                                                <label class="form-check-label">
                                                <input type="checkbox">
                                                <span class="form-check-sign"></span>
                                                </label>
                                             </td>
                                             <td class="hidden-xs">Nelson Lane</td>
											 <td>
												 <span class="badge badge-danger">Work</span>
											 </td>
                                             <td class="max-texts">
                                                <a href="#">
                                                
                                                Lorem ipsum perspiciatis unde omnis iste natus</a>
                                             </td>
                                             <td class="hidden-xs">
                                                <i data-feather="paperclip"></i>
                                             </td>
                                             <td class="text-right"> May 10 </td>
                                          </tr>
                                          <tr>
                                             <td class="tbl-checkbox">
                                                <label class="form-check-label">
                                                <input type="checkbox">
                                                <span class="form-check-sign"></span>
                                                </label>
                                             </td>
                                             <td class="hidden-xs">Kerry Mann</td>
											 <td></td>
                                             <td class="max-texts">
                                                <a href="#">Lorem ipsum perspiciatis unde omnis iste natus</a>
                                             </td>
                                             <td class="hidden-xs">
                                                <i data-feather="paperclip"></i>
                                             </td>
                                             <td class="text-right"> May 10 </td>
                                          </tr>
                                          <tr>
                                             <td class="tbl-checkbox">
                                                <label class="form-check-label">
                                                <input type="checkbox">
                                                <span class="form-check-sign"></span>
                                                </label>
                                             </td>
                                             <td class="hidden-xs">Adam Peters</td>
											 <td>
												 <span class="badge badge-secondary">Shopping</span>
											 </td>
                                             <td class="max-texts">
                                                <a href="#">
                                                
                                                Lorem ipsum perspiciatis unde omnis</a>
                                             </td>
                                             <td class="hidden-xs">
                                                <i data-feather="paperclip"></i>
                                             </td>
                                             <td class="text-right"> May 10 </td>
                                          </tr>
                                          <tr>
                                             <td class="tbl-checkbox">
                                                <label class="form-check-label">
                                                <input type="checkbox">
                                                <span class="form-check-sign"></span>
                                                </label>
                                             </td>
                                             <td class="hidden-xs">Lula Reese</td>
											 <td></td>
                                             <td class="max-texts">
                                                <a href="#">
                                                Lorem ipsum perspiciatis unde omnis iste natus</a>
                                             </td>
                                             <td class="hidden-xs">
                                                <i data-feather="paperclip"></i>
                                             </td>
                                             <td class="text-right"> May 09 </td>
                                          </tr>
                                       </tbody>
                                    </table>
                                 </div>
                                 <div class="row">
                                    <div class="col-sm-7 ">
                                       <p class="p-15">Showing 1 - 15 of 200</p>
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
      <!-- Page Specific JS File -->
      <!-- Template JS File -->
      <script src="assets/admin/js/scripts.js"></script>
      <!-- Custom JS File -->
      <script src="assets/admin/js/custom.js"></script>
   </body>
   
</html>