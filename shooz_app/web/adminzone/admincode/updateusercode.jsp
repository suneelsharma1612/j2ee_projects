<%@page import="mypack.DBManager"%>
<%
DBManager db =new DBManager();
String userName=request.getParameter("name");
String userEmail=request.getParameter("email");
String password=request.getParameter("password");
String gender=request.getParameter("gender");
String sql1="update tbl_registration set userName='"+userName+"',userEmail='"+userEmail+"',gender='"+gender+"',password='"+password+"' where userID='"+request.getParameter("userid")+"'";
 Boolean rs=db.executeNonQuery(sql1);
 if(rs==true)
 {
      response.sendRedirect("../manage_user.jsp");
 }
 else
 {
     response.sendRedirect("../userupdate.jsp");
 }
%>