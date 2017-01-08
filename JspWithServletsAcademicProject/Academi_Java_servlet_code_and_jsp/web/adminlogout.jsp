<%-- 
    Document   : adminlogout
    Created on : 4 Nov, 2013, 1:02:44 PM
    Author     : Ashu
--%>

<%
session.setAttribute("userid", null);
session.invalidate();
response.sendRedirect("admin.jsp");
%>