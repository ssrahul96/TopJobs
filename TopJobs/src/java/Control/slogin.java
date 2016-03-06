/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Control;

import Method.Dbconnect;
import Method.Password;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ssrahul96
 */
public class slogin extends HttpServlet {

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
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
           String uname=request.getParameter("uname");
           String pass=request.getParameter("pass");
           int utype = Integer.parseInt(request.getParameter("utype"));
           
           //out.println(uname+" "+pass+" "+utype);
           
           if(utype==3){
               if(uname.equals("admin") && pass.equals("admin") && utype==3)
                  System.out.println("logged in as Admin");
                    HttpSession ses=request.getSession(true);
                    ses.setAttribute("uname", uname);
                    ses.setAttribute("utype", ""+utype);
                  request.getRequestDispatcher("admin/info.jsp").forward(request, response);
           }else{           
            Dbconnect db = new Dbconnect();
            Password p = new Password();

            boolean status=db.LoginCheck(uname,p.ptoh(pass), utype);
            System.out.println(status);
            
            if(status==true){
                HttpSession ses=request.getSession(true);
                ses.setMaxInactiveInterval(1000);
                out.println("Login success");
                ses.setAttribute("uname", uname);
                ses.setAttribute("utype", ""+utype);
                if(utype==1)
                    request.getRequestDispatcher("info/jobseaker.jsp").forward(request, response);
                else
                    request.getRequestDispatcher("info/employer.jsp").forward(request, response);
            }else{
                request.setAttribute("logerr","Login Failed");
                request.getRequestDispatcher("loginerror.jsp").forward(request, response);
            }
            
            
           
        }} finally {
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(slogin.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(slogin.class.getName()).log(Level.SEVERE, null, ex);
        }
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
