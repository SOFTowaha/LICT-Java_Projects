<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>NMIT MUSIC PORTAL LOGIN SCREEN</title>
    </head>
    <body>
        
        <style media="screen" type="text/css">

/*Simple reset*/
* {margin: 0; padding: 0;}

body {
	/*You can use any kind of background here.*/
        background: #33ccff;
}
canvas {
	display: block;

}

</style>
        <form method="post" name="frm"  action="login.jsp" onSubmit="return validate()">
            <center>
                <table border="1" width="20%" cellpadding="2"style="background-color:#33ccff;margin-left:auto;margin-right:auto;display:block;margin-top:20%;margin-bottom:35%">
                <thead>
                    <tr>
                        <th colspan="2">Login Here</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>User Name</td>
                        <td><input type="text" name="uname" value="" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="pass" value="" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" name="submit" value="Login"/></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                    <tr>
                        <td colspan="2"><marquee behavior="alternate">Yet Not Registered!!</marquee> <a href="reg.jsp">Register Here</a></td>
                    </tr>
                
                    <br><br><marquee behavior="alternate">&#9834;  &#9835; &#9829; <button type="button" style="background-color:#33ffff;" onclick=location.href='http://localhost:8080/AcademicJava/admin.jsp'>Administrator</button>&#9834;  &#9835; &#9829;</marquee>
                    <br><br><b><font color="white" size="5">WELCOME TO "&#9834;  &#9835;  &#9836; NMIT ONLINE MUSIC PORTAL &#9834;  &#9835;  &#9836;"</font>
                        <h4> &#9834;  &#9835; &#9829; If you do not have account with us probably you may need create one &#9829; &#9834;  &#9835; </h4><font color="brown" size="9">&#9834;  &#9835; &#9829; &#9786; &#9829; &#9834;  &#9835;</font>
            </tbody>
            </table>
            </center>
<script type="text/javascript">
function validate()
{
    if(document.frm.uname.value=="")
    {
      alert("User Name should not be left blank");
      document.frm.uname.focus();
      return false;
    }
    else if(document.frm.pass.value=="")
    {
      alert("Password should not be left blank");
      document.frm.pass.focus();
      return false;
    }
}
</script>
</form>
    </body>
</html>