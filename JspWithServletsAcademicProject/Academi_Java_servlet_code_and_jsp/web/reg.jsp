<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration Form </title>
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
        <form method="post"  name="frm" action="registration.jsp" onSubmit="return validate()">
            <center>
            <table border="1" width="30%" cellpadding="5"style="background-color:
                   #6b92b9;margin-left:auto;margin-right:auto;display:block;margin-top:20%;margin-bottom:35%">
                <thead>
                    <tr>
                        <th colspan="2">All Fields are mandatory!! </th>
                    </tr>
                </thead>
                <thead>
                    <tr>
                        <th colspan="2"><marquee>Enter Information Here</marquee></th>
                    </tr>
                </thead>
                
                <tbody>
                    <tr>
                        <td>First Name</td>
                        <td><input type="text" name="fname" value="" /></td>
                    </tr>
                    <tr>
                        <td>Last Name</td>
                        <td><input type="text" name="lname" value="" /></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td><input type="text" name="email" value="" /></td>
                    </tr>
                    <tr>
                        <td>User Name</td>
                        <td><input type="text" name="uname" value="" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="pass" value="" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Submit"/></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                    <tr>
                        <td colspan="2">Already registered!! <a href="index.jsp">Login Here</a></td>
                    </tr>
                </tbody>
            </table>
            </center>
             <script type="text/javascript">
function validate()
{
    if(document.frm.fname.value=="")
    {
      alert("First Name should not be left blank");
      document.frm.fname.focus();
      return false;
    }
    else if(document.frm.lname.value=="")
    {
      alert("last name should not be left blank");
      document.frm.lname.focus();
      return false;
    }
    else if(document.frm.email.value=="")
    {
      alert("email should not be left blank");
      document.frm.email.focus();
      return false;
    }
     else if(document.frm.uname.value=="")
    {
      alert("User Name should not be left blank");
      document.frm.uname.focus();
      return false;
    }
     else if(document.frm.pass.value=="")
    {
      alert("password should not be left blank");
      document.frm.pass.focus();
      return false;
    }
}    
             
             </script>
    </form>
    </body>
</html>