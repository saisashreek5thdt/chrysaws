<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="stag" %>




         <c:forEach items="${resourceList}" var="row">
           <c:if test="${title==row.resource_name}">

       </c:if >
     </c:forEach>

         <c:forEach items="${resourceList}" var="row">

  <c:if test="${title==row.resource_name}">


                    </c:if >


<jsp:forward page="/adminresources">
                    <jsp:param name="errors" value=" Resource Title Already Exists..! " ></jsp:param>
                         </jsp:forward>

