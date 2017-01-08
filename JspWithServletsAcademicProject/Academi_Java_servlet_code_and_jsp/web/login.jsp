<%@ page import ="java.sql.*" %>
<%
    String uname = request.getParameter("uname");   
    String pass = request.getParameter("pass");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/music",
            "root", "codeface");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from login where uname='" + uname + "' and pass='" + pass + "'");
    if (rs.next()) {
        session.setAttribute("userid", uname);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("success.jsp");
    } else {
        out.println("<center>Invalid password <a href='index.jsp'>try again</a></center> ");
        out.println("<center>Make Sure you have registered details without mistakes</center>");
    }
%>