<%@page import="mypack.DBManager"%>
<%
            DBManager db=new DBManager();
            String productId=request.getParameter("pid");
            String proSize= request.getParameter("psize");
            String availQuant= request.getParameter("availquant");
            String proColor=request.getParameter("pcolor");
            String proDesc=request.getParameter("pfeature");
            
      
            
         
        String addDate=db.getCurrentDate();
         String query1="insert into tbl_proproperty(productId,proColor,proSize,availQuant,proDesc) values('"+productId+"','"+proColor+"','"+proSize+"','"+availQuant+"','"+proDesc+"')";
         Boolean rs1=db.executeNonQuery(query1);
         if(rs1==true)
         {
            out.print("<html><script>window.location.href='../addproductproperties.jsp';</script></html>");
        
         }
         else
         {
           out.print("<html><script>alert('failed to add');window.location.href='../addproductproperties.jsp';</script></html>");
         }
         
         %>