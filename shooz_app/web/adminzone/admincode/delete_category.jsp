
<%@page import="mypack.DBManager"%>
<%
DBManager db=new DBManager();
 String query="delete from tbl_category where catId='"+request.getParameter("catid")+"'";
 String msg=(db.executeNonQuery(query)==true)?"category deleted":"not! Deleted category";
 out.println(db.getAlert(msg, "../manage_category.jsp"));
%>
