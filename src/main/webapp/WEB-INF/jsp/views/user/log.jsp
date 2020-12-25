<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="stag" %>

     <c:set var="useremail" value="${regemail}" scope="session"  />
        <c:set var="userid" value="${id}" scope="session"  />
 <c:forEach items="${cartList}" var="row">
           <c:if test="${row.user==id && row.status=='1'}">
           <c:set var="count" value="${count + 1}" scope="page"/>
<c:set var="cart" value="${count}" scope="session"  />




       </c:if >
     </c:forEach>
        <jsp:forward page="/user" />