<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="stag" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@page import="java.io.*, java.util.*,java.time.*,java.text.*, java.util.Enumeration" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
         <c:forEach items="${courseList}" var="row">


   <c:set var = "start" value = "${row.start}" scope="page" />


  <c:set var = "day" value = "${today}" scope="page" />



<%
    String startz = String.valueOf(pageContext.getAttribute("start"));
     String day = String.valueOf(pageContext.getAttribute("day"));
    SimpleDateFormat sdfo = new SimpleDateFormat("yyyy-MM-dd");
Date d1 = sdfo.parse(startz);
Date d2 = sdfo.parse(day);
    if (d1.compareTo(d2) > 0) {

            // When Date d1 > Date d2
            System.out.println("Date1 is after Date2");

      %>

        ${row.start}   ${row.coursename}

      <%  }%>
     </c:forEach>