<%@ page import ="java.sql.*" %>
<%
    String uname = request.getParameter("uname");   
    String address = request.getParameter("address");
    String city = request.getParameter("city");
    String phone = request.getParameter("phone");

    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/music",
            "root", "codeface");
    Statement st = con.createStatement();
    //ResultSet rs;
 int c = st.executeUpdate("insert into cart values ('" + uname + "','" + address + "','" + city + "','" + phone + "')");  
 if (c > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("ordersuccess1.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("orderfailure.jsp");
    }
%>