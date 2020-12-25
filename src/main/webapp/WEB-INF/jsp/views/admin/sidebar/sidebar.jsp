
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





            <div class="main-sidebar sidebar-style-2">
               <aside id="sidebar-wrapper">
                  <div class="sidebar-brand">
                     <a href="/dashboard>
						 <img alt="image" src="assets/admin/images/logo/logo@2x.png" class="header-logo" />
                     </a>
                  </div>
                  <ul class="sidebar-menu">
                     <li class="dropdown">
                        <a href="/dashboard" class="nav-link">
							<i data-feather="monitor"></i>
							<span>Dashboard</span>
						</a>
                     </li>

                     <%
                     if(session.getAttribute("slider").equals("1"))
                     {%>
                             <li class="dropdown">
                                               <a href="/slider" class="menu-toggle nav-link">
                       							<i data-feather="briefcase"></i>
                       							<span>Slider</span>
                       						</a>
                                            </li>

                             <%
                     }%>






                     <%
                     if(session.getAttribute("resources").equals("1"))
                     {%>
                                <li class="dropdown">
                                                  <a href="/adminresources" class="menu-toggle nav-link">
                          							<i data-feather="command"></i>
                          							<span>Resources</span>
                          						</a>
                                               </li>

                             <%
                     }
                     %>


                                        <%
                                          if(session.getAttribute("course").equals("1"))
                                          {%>
                                                         <li class="dropdown">
                                                                      <a href="/admincourse" class="menu-toggle nav-link">
                                              							<i data-feather="award"></i>
                                              							<span>Courses</span>
                                              						</a>
                                                                   </li>

                                                  <%
                                          }
                                          %>




                                         <%
                                          if(session.getAttribute("summit").equals("1"))
                                          {%>

                                              <li class="dropdown">
                                          <a href="/adminsummit" class="menu-toggle nav-link">
					            		<i data-feather="copy"></i>
					                		<span>Summit</span>
					                    	</a>
                                           </li>

                                                  <%
                                          }
                                          %>



                                         <%
                                          if(session.getAttribute("blogs").equals("1"))
                                          {
                                          %>
                                            <li class="dropdown">
                                       <a href="/adminblog" class="menu-toggle nav-link">
						            	<i data-feather="shopping-bag"></i>
						                	<span>Blogs</span>
						              </a>
                                         </li>

                                                  <%
                                          }
                                          %>



                                         <%
                                          if(session.getAttribute("faculty").equals("1"))
                                          {
                                          %>
                                             <li class="dropdown">
                                                            <a href="/adminfaculty" class="menu-toggle nav-link">
                                    							<i data-feather="layout"></i>
                                    							<span>Faculty</span>
                                    						 </a>
                                                         </li>

                                                  <%
                                          }
                                          %>



                                          <%
                                          if(session.getAttribute("meassage_center").equals("1"))
                                          {
                                          %>
                                              <li class="dropdown">
                                                                 <a href="/message_center" class="menu-toggle nav-link">
                                         							<i data-feather="pie-chart"></i>
                                         							<span>Message Center</span>
                                         						</a>
                                                              </li>

                                                  <%
                                          }
                                          %>



                                         <%
                                          if(session.getAttribute("mail").equals("1"))
                                          {
                                          %>
                         		 <li class="dropdown">
                                                 <a href="/mail" class="menu-toggle nav-link">
                         							<i data-feather="mail"></i>
                         							<span>Mail</span>
                         						</a>
                                              </li>

                                                  <%
                                          }
                                          %>



           <%
                                          if(session.getAttribute("adminemail").equals("faridah@chrysaellect.com"))
                                          {
                                          %>
     <li class="dropdown">
                        <a href="/assessment" class="menu-toggle nav-link">
							<i data-feather="pen-tool"></i>
							<span>Assessment</span>
						</a>
                     </li>

                     <li class="dropdown">
                        <a href="/access_control" class="menu-toggle nav-link">
							<i data-feather="grid"></i>
							<span>Access Control</span>
						</a>
                     </li>

                     <li class="dropdown">
                        <a href="/e_certificate" class="menu-toggle nav-link">
							<i data-feather="feather"></i>
							<span>e-Certificate</span>
						</a>
                     </li>



                     <li class="dropdown">
                        <a href="/payment " class="menu-toggle nav-link">
							<i data-feather="shopping-cart"></i>
							<span>Payment</span>
						</a>
                     </li>

                         <li class="dropdown">
                                             <a href="/userdet " class="menu-toggle nav-link">
                     							<i data-feather="user"></i>
                     							<span>User</span>
                     						</a>
                                          </li>




                                                  <%
                                          }
                                          %>




                  </ul>
               </aside>
            </div>