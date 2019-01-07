<%@page import="mypack.DBManager"%>
<%
DBManager db =new DBManager();
String catName=request.getParameter("catName");
String sql1="update tbl_category set catName='"+catName+"' where catId='"+request.getParameter("catid")+"'";
 Boolean rs=db.executeNonQuery(sql1);
 if(rs==true)
 {
      response.sendRedirect("../manage_category.jsp");
 }
 else
 {
     response.sendRedirect("../editcategory.jsp");
 }
%>