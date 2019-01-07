<%@page import="mypack.DBManager"%>
<%
String fbId=request.getParameter("fbId");
DBManager db=new DBManager();
 String query="delete from tbl_feedback where fbId='"+fbId+"'";
 String msg=(db.executeNonQuery(query)==true)?"feedback deleted":"not! Deleted feedback";
 out.println(db.getAlert(msg, "../manage_feedback.jsp"));
%>
