<%-- 
    Document   : admin
    Created on : 4 Nov, 2013, 1:01:25 PM
    Author     : Ashu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>NMIT MUSIC PORTAL ADMIN LOGIN SCREEN</title>
    </head>
    <body>
        
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
        <form method="post" name="frm" action="adminlogin.jsp" onSubmit="return validate()">
            <center>
            <table border="1" width="30%" cellpadding="3"style="background-color:#6b92b9;margin-left:auto;margin-right:auto;display:block;margin-top:20%;margin-bottom:35%">
                <thead>
                    <tr>
                        <th colspan="2"><marquee behavior="scroll">Administrator login facility</marquee></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Administrator</td>
                        <td><input type="text" name="aname" value="" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="apass" value="" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Login" /></td>
                       <td><input type="reset" value="Reset" /></td>
                    </tr>
                    <button type="button" 
style="background-color:#6b92b9;margin-left:auto;margin-right:auto;display:block;margin-top:5%;margin-bottom:1%" onclick=location.href='http://localhost:8080/AcademicJava/index.jsp'>Start The Portal</button>

            </tbody>
       
            </table>
                
            </center>
             <script type="text/javascript">
function validate()
{
    if(document.frm.aname.value=="")
    {
      alert("Admin Name should not be left blank");
      document.frm.aname.focus();
      return false;
    }
    else if(document.frm.apass.value=="")
    {
      alert("Password should not be left blank");
      document.frm.apass.focus();
      return false;
    }
}
</script>
</form>

    </body>
</html>
