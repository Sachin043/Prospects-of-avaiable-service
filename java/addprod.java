/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author admin
 */
public class addprod extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
             HttpSession s=request.getSession();
           String p=request.getParameter("proname");
           try{
               Class.forName("com.mysql.jdbc.Driver");
               Connection c=DriverManager.getConnection("jdbc:mysql://localhost/test","root","");
               Statement st=c.createStatement();
                int i= st.executeUpdate("Insert into product  values('"+p+"')");
                if(i>0)
                out.println("<script>(' Inserted')</script>");
                else
                    out.println("<script>(' not Inserted')</script>");
    }
           catch(Exception e){
              e.printStackTrace();
           }

        }
    }}
