
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
@WebServlet(name = "uploadpic", urlPatterns = {"/productpics"})
public class uploadpic extends HttpServlet {

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
            
            String productId=request.getParameter("pid");
            String productFor = request.getParameter("pfor");
            Part p1 = request.getPart("pic1");
            Part p2 = request.getPart("pic2");
            Part p3 = request.getPart("pic3");
            InputStream is1 = p1.getInputStream();
            InputStream is2 = p2.getInputStream();
            InputStream is3 = p3.getInputStream();
         String filename1=   p1.getSubmittedFileName();
         String filename2=   p2.getSubmittedFileName();
         String filename3=   p3.getSubmittedFileName();
         DBManager db=new DBManager();
        
         String query1="insert into tbl_productpic(productId,productFor,pic1,pic2,pic3) values('"+productId+"','"+productFor+"','"+filename1+"','"+filename2+"','"+filename3+"')";
         Boolean rs1=db.executeNonQuery(query1);
         if(rs1==true)
         {
            String spath="/productpic";
            File path1=new File(request.getRealPath(spath),filename1);
            File path2=new File(request.getRealPath(spath),filename2);
            File path3=new File(request.getRealPath(spath),filename3);
            Files.copy(is1,path1.toPath());
            Files.copy(is2,path2.toPath());
            Files.copy(is3,path3.toPath());
            out.print("<html><script>window.location.href='adminzone/addshowpic.jsp';</script></html>");
        
         }
         else
         {
           out.print("<html><script>alert('Not uploade pic ');window.location.href='adminzone/addshowpic.jsp';</script></html>");
         }
        } catch (Exception e) {
            out.print("<html><script>alert('"+e+"');window.location.href='adminzone/addshowpic.jsp?erro="+e+"';</script></html>");
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


