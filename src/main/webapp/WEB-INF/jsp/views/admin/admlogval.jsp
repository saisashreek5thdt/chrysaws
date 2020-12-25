
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="stag" %>




   		<c:forEach items="${admList}" var="row">


           <c:if test="${email == row.email && password==row.password && row.status.equals('1')}">

 <c:set var="adminid" value="${row.id}" scope="session"  />
             <c:set var="adminemail" value="${row.email}" scope="session"  />
                  <c:set var="status" value="${row.status}" scope="session"  />
                       <c:set var="slider" value="${row.slider}" scope="session"  />
                            <c:set var="resources" value="${row.resources}" scope="session"  />
                                <c:set var="course" value="${row.course}" scope="session"  />
                                    <c:set var="summit" value="${row.summit}" scope="session"  />
                                          <c:set var="blogs" value="${row.blogs}" scope="session"  />
                                                <c:set var="faculty" value="${row.faculty}" scope="session"  />
                                                      <c:set var="meassage_center" value="${row.meassage_center}" scope="session"  />
                                                            <c:set var="mail" value="${row.mail}" scope="session"  />


            <jsp:forward page="/dashboard" />


                    </c:if>

         </c:forEach>



         <c:forEach items="${admList}" var="row">

                    <c:if test="${email == row.email && password==row.password && row.status.equals('2')}">

                                       <jsp:forward page="/admin">
                                         <jsp:param name="error" value=" You Account Temporary Not Available! <br><big>Contact Admin.</big>" ></jsp:param>
                                       </jsp:forward>
                                      </c:if >

                  </c:forEach>

         <c:forEach items="${admList}" var="row">

                    <c:if test="${email==row.email}">

                                       <jsp:forward page="/admin">
                                         <jsp:param name="error" value=" Incorrect Password! " ></jsp:param>
                                       </jsp:forward>
                                      </c:if >

                  </c:forEach>





<jsp:forward page="/admin">
  <jsp:param name="error" value="Username Or Password Error!" ></jsp:param>
</jsp:forward>



