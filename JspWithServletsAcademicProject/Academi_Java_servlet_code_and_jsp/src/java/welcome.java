/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Ashu
 */
public class welcome extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Academic Java Project</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<canvas id=\"canvas\"></canvas>");
            out.println("<h1><marquee>WELCOME TO \"&#9834;  &#9835;  &#9836; NMIT ONLINE MUSIC PORTAL &#9834;  &#9835;  &#9836;\"</h1></marquee>");

            out.println("<button type=\"button\" \n" +
"style=\"background-color:#6b92b9;margin-left:auto;margin-right:auto;display:block;margin-top:20%;margin-bottom:35%\" onclick=location.href='http://localhost:8080/AcademicJava/index.jsp'>Start The Portal</button> ");
            out.println("<style media=\"screen\" type=\"text/css\">\n" +
"\n" +
"/*Simple reset*/\n" +
"* {margin: 0; padding: 0;}\n" +
"\n" +
"body {\n" +
"	/*You can use any kind of background here.*/\n" +
"	background: #6b92b9;\n" +
"}\n" +
"canvas {\n" +
"	display: block;\n" +
"\n" +
"}</style>");
            //out.println("");
            out.println("</body>");
            out.println("</html>");
        } finally {
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
