<%@ page import ="java.sql.*" %>
<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
You are not logged in<br/>
<a href="index.jsp">Please Login</a>
<%} else {
%>
<center>
    <p><br><br><font color="white" size="6">Welcome --- <%=session.getAttribute("userid")%>  --->   <a href='logout.jsp'>Log out</a>
        
</font>  </p>

    
</center>

<center>
     <font color="yellow" size="7"><marquee behavior="alternate">You will get navigated to musix when you press this</marquee><font color="white" size="7">&#9834;  &#9835; &#9834;  &#9835;</font><a href='musix.html'>MUSIC STORE</a><font color="white" size="7">&#9834;  &#9835;&#9834;  &#9835;</font></font>
</center>

         
<%
    }
%>


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


