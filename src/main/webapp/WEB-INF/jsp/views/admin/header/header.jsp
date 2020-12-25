

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




      <nav class="navbar navbar-expand-lg main-navbar sticky">
               <div class="form-inline mr-auto">
                  <ul class="navbar-nav mr-3">
                     <li>
						 <a href="#" data-toggle="sidebar" class="nav-link nav-link-lg collapse-btn">
							 <i data-feather="align-justify"></i>
						 </a>
					 </li>
                  </ul>
               </div>
               <ul class="navbar-nav navbar-right">
                  <li class="dropdown">
                     <a href="#" data-toggle="dropdown"
                        class="nav-link dropdown-toggle nav-link-lg nav-link-user">
						 <img alt="image" src="assets/admin/images/logo/logo.png" class="user-img-radious-style">
						 <span class="d-sm-none d-lg-inline-block"></span>
					  </a>
                     <div class="dropdown-menu dropdown-menu-right pullDown">
                        <div class="dropdown-title">Hello Chrysaellect</div>
                        <a href="#" class="dropdown-item has-icon">
							<i class="far fa-user"></i> Profile
                        </a>
						<a href="#" class="dropdown-item has-icon">
							<i class="fas fa-cog"></i>Settings
                        </a>
                        <div class="dropdown-divider"></div>
                        <a href="/logout" class="dropdown-item has-icon text-danger">
							<i class="fas fa-sign-out-alt"></i>Logout
                        </a>
                     </div>
                  </li>
               </ul>
            </nav>