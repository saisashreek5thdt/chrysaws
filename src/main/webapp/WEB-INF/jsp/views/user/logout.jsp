<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="stag" %>





 <c:set var="adminid" value="" scope="session"  />
             <c:set var="useremail" value="" scope="session"  />
                  <c:set var="userid" value="" scope="session"  />
                       <c:set var="cart" value="" scope="session"  />


<%

response.sendRedirect("/");%>