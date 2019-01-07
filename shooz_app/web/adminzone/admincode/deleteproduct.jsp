

<%@page import="mypack.DBManager"%>
<%
String productId=request.getParameter("productid");
DBManager db=new DBManager();
 String query="delete from tbl_product where productId='"+productId+"'";
 String msg=(db.executeNonQuery(query)==true)?"Product deleted":"not! Deleted Product";
 out.println(db.getAlert(msg, "../manage_product.jsp"));
%>
