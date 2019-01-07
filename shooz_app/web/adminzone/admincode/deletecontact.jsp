
<%@page import="mypack.DBManager"%>
<%
String contactId=request.getParameter("contactid");
DBManager db=new DBManager();
 String query="delete from contactus where contactId='"+contactId+"'";
 String msg=(db.executeNonQuery(query)==true)?"Contact deleted":"not! Deleted Contact";
 out.println(db.getAlert(msg, "../contact_us.jsp"));
%>
