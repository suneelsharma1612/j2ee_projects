<%@page import="mypack.DBManager"%>
<%
String userid=request.getParameter("userid");
DBManager db=new DBManager();
 String query="delete from tbl_registration where userId='"+userid+"'";
 String msg=(db.executeNonQuery(query)==true)?"User deleted":"not! Deleted User";
 out.println(db.getAlert(msg, "../manage_user.jsp"));
%>
