
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mypack;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.file.Files;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@MultipartConfig
@WebServlet(name = "updateproduct", urlPatterns = {"/upupload"})
public class updateproduct extends HttpServlet {

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
            out.println("<title>Servlet upload</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet upload at " + request.getContextPath() + "</h1>");
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
        response.setContentType("text/html;charset=UTF-8");
      PrintWriter out=  response.getWriter();
         try {
            
            String productid=request.getParameter("productid");
            String productName=request.getParameter("pname");
            String catId = request.getParameter("ptype");
            String productFor = request.getParameter("pfor");
            String productPrice=request.getParameter("pprice");
            Part p = request.getPart("productfile");
            InputStream is = p.getInputStream();
         String filename=   p.getSubmittedFileName();
         DBManager db=new DBManager();
        String addDate=db.getCurrentDate();
        String query1="update tbl_product set productName='"+productName+"',productFor='"+productFor+"',productPrice='"+productPrice+"',catId='"+catId+"',productPic='"+filename+"',addDate='"+addDate+"' where productId='"+productid+"'";
         Boolean rs1=db.executeNonQuery(query1);
         if(rs1==true)
         {
            String spath="/uploadproduct";
        File path=new File(request.getRealPath(spath),filename);
        Files.copy(is,path.toPath());
        out.print("<html><script>alert('Added Product');window.location.href='adminzone/manage_product.jsp';</script></html>");
        
         }
         else
         {
           out.print("<html><script>alert('Not Added Product');window.location.href='adminzone/manage_product.jsp';</script></html>");
         }
        } catch (Exception e) {
            out.print("<html><script>alert('"+e+"');window.location.href='adminzone/manage_product.jsp?erro="+e+"';</script></html>");
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
    }
    
}

