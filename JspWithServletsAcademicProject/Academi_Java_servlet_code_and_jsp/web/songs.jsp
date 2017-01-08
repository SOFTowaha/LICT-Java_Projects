<%-- 
    Document   : songs
    Created on : 4 Nov, 2013, 6:48:05 PM
    Author     : Ashu
--%>

<%@ page import ="java.sql.*" %>
<%@ page import="java.io.*,java.sql.*" %>
<%
String saveFile="";
String contentType = request.getContentType();
if ((contentType != null) && (contentType.indexOf("multipart/form-data") >= 0)) {
    DataInputStream in = new DataInputStream(request.getInputStream());
    int formDataLength = request.getContentLength();
    byte dataBytes[] = new byte[formDataLength];
    int byteRead = 0;
    int totalBytesRead = 0;
    while (totalBytesRead < formDataLength) {
        byteRead = in.read(dataBytes, totalBytesRead,formDataLength);
        totalBytesRead += byteRead; 
    }
    String file = new String(dataBytes);
    saveFile = file.substring(file.indexOf("filename=\"") + 10);
    saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
    saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1,saveFile.indexOf("\""));
    int lastIndex = contentType.lastIndexOf("=");
    String boundary = contentType.substring(lastIndex + 1,contentType.length());
    int pos;
    pos = file.indexOf("filename=\"");
    pos = file.indexOf("\n", pos) + 1;
    pos = file.indexOf("\n", pos) + 1;
    pos = file.indexOf("\n", pos) + 1;
    int boundaryLocation = file.indexOf(boundary, pos) - 4;
    int startPos = ((file.substring(0, pos)).getBytes()).length;
    int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;
    saveFile="C:\\Users\\Ashokkumar\\Documents\\NetBeansProjects\\AcademicJava\\audios\\"+saveFile;
    File ff = new File(saveFile);
    FileOutputStream fileOut = new FileOutputStream(ff);
    fileOut.write(dataBytes, startPos, (endPos - startPos));
    fileOut.flush();
    fileOut.close();
%>
<br>
    <table border="2">
        <tr>
            <td><b>You have successfully upload the file by the name of:</b><% out.println(saveFile);%></td>
        </tr>
    </table>
<%
    Connection connection = null;
    String connectionURL = "jdbc:mysql://localhost:3306/music";
    ResultSet rs = null;
    PreparedStatement psmnt = null;
    FileInputStream fis;
    try {
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        connection = DriverManager.getConnection(connectionURL, "root", "codeface");
        File f = new File(saveFile);
        psmnt = connection.prepareStatement("insert into isong(file_data) values(?)");
        fis = new FileInputStream(f);
        psmnt.setBinaryStream(1, (InputStream)fis, (int)(f.length()));
        int s = psmnt.executeUpdate();
        if(s>0) {
            out.println("file Uploaded successfully !");
        }
        else{
            out.println("unsucessfull to upload file.");
        }
    }
    catch(Exception e){
        e.printStackTrace();
    }
}


    String song_id = request.getParameter("song_id");   
    String songName = request.getParameter("songName");
    String artist = request.getParameter("artist");
    String album = request.getParameter("album");
    String movie = request.getParameter("movie");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/music",
            "root", "codeface");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into songs values ('" + song_id + "','" + songName + "','" + artist + "','" + album + "','" + movie + "')");
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("songuploadsuccess.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("songuploaderror.jsp");
    }
%>