
<%@page import="mypack.DBManager"%>
<%
String productId=request.getParameter("productid");
DBManager db=new DBManager();
 String query="delete from tbl_cart where productId='"+productId+"'";
 String msg=(db.executeNonQuery(query)==true)?"Product Removed From Cart":"not! Removed Product";
 out.println(db.getAlert(msg, "mycart.jsp"));
%>