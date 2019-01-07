<%@page import="java.sql.ResultSet"%>
<%@page import="mypack.DBManager"%>
<%
String oldpass=request.getParameter("oldpass").trim();
String newpass=request.getParameter("newpass").trim();
String conpass=request.getParameter("conpass").trim();
DBManager db=new DBManager();
String q1="select password from authorities where authEmail='"+session.getAttribute("aid")+"'and password='"+oldpass+"' ";
ResultSet rs=db.getRecord(q1);
if(rs.next())
{
    if(newpass.equals(conpass))
    {
        String q2="update authorities set password='"+newpass+"' where authEmail='"+session.getAttribute("aid")+"'";
        if((db.executeNonQuery(q2)==true))
        {
        out.print("<script>alert('Password changed successfully');window.location.href='logoutcode.jsp';</script>");
        }
        else
        {
            out.println("database error sorry did not changed!!");
        }
    }
    
    else
    {
        out.print("<script>alert('Did not matched new password & confirm password');window.location.href='../changepassword.jsp';</script>");
    }
}
else
{
    out.print("<script>alert('Invalide Old password');window.location.href='../changepassword.jsp';</script>");
}
%>