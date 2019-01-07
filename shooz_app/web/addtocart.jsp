
<%@page import="mypack.DBManager"%>

<%
    if(session.getAttribute("uid")==null)
    {
       out.println("<script>alert('Sorry !! Login first');window.location.href='index.jsp';</script>"); 
    }
       DBManager db=new DBManager();
       String proName=request.getParameter("proname");
       String proId=request.getParameter("proid");
       String proPrice=request.getParameter("proprice");
       String quant=request.getParameter("quant");
       String Size=request.getParameter("ssize");
       String color=request.getParameter("color");
       String addDate=db.getCurrentDate();
       String query1="insert into tbl_cart(productId,productName,quantity,grandTotal,size,color,orderby,addDate) values('"+proId+"','"+proName+"','"+quant+"','"+proPrice+"','"+Size+"','"+color+"','"+session.getAttribute("uid")+"','"+addDate+"')";
       Boolean rs1=db.executeNonQuery(query1);
    if(rs1==true)
       {
         out.println("<script>alert('Item added to the cart');window.location.href='index.jsp';</script>");  
       }
       
           else
           {
               out.println("<script>alert('Sorry !!not available');window.location.href='index.jsp';</script>");
           }
       
       
%>
