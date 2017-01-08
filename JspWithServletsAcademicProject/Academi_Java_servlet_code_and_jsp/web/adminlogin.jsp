<%-- 
    Document   : adminlogin
    Created on : 4 Nov, 2013, 1:01:58 PM
    Author     : Ashu
--%>

<%@ page import ="java.sql.*" %>
<%
    String adminName = request.getParameter("aname");   
    String apass = request.getParameter("apass");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/music",
            "root", "codeface");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from alogin where aname='" + adminName + "' and apass='" + apass + "'");
    if (rs.next()) {
        session.setAttribute("userid", adminName);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("adminsuccess.jsp");
    } else {
        out.println("Invalid password <a href='admin.jsp'>try again</a>");
    }
%>