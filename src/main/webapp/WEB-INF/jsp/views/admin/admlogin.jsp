<%
// Get the login information.
    String userName = request.getParameter("username");
    String password = request.getParameter("password");

%>
Welcome, <%=userName%>!