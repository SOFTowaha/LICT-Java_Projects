<%-- 
    Document   : adminsuccess
    Created on : 4 Nov, 2013, 1:02:22 PM
    Author     : Ashu
--%>

<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
You are not logged in<br/>
<a href="admin.jsp">Please Login</a>
<%} else {
%>
<p>
<center>
    <br><br><br><b><font color="orange" size="5">WELCOME ADMINISTRATOR <br> NOW YOU POSSES ALL RIGHTS TO CONTROL THE PORTAL </font>
    <h1><%=session.getAttribute("userid")%></h1>
<a href='adminlogout.jsp'>Log out</a>
<br><br>
</center>

<%
    }
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style media="screen" type="text/css">

/*Simple reset*/
* {margin: 0; padding: 0;}

body {
	/*You can use any kind of background here.*/
	background: #6b92b9;
}
canvas {
	display: block;

}

</style>
    <%@ page import ="java.sql.*" %>
<%
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/music",
            "root", "codeface");
    Statement st = con.createStatement();
    ResultSet rs;
    String name=null;
    String address=null;
    String city=null;
    String phone=null;
    rs = st.executeQuery("select * from cart ");
    out.println("<center>");
    out.println("<font color='white'><h3><u>Outstanding orders</u></h3><br><br>");
    out.println("<table border=1>");
    out.println("<tr><td>NAME</td><td>ADDRESS</td><td>CITY</td><td>PHONE</td></tr>");
    while(rs.next())
    {
       name=rs.getString("name");
       address=rs.getString("address");
       city=rs.getString("city");
       phone=rs.getString("phone");
       out.println("<tr><td>"+name+"</td><td>"+address+"</td><td>"+city+"</td><td>"+phone+"</td></tr>");
    }
    out.println("</table>");    //out.println("welcome " + userid);
    out.println("</center>");
//out.println("<a href='logout.jsp'>Log out</a>");
       
       
 
%>    
 </body>
</html>
