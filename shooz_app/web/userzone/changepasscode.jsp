<%@page import="java.sql.ResultSet"%>
<%@page import="mypack.DBManager"%>
<%
String oldpass=request.getParameter("curpass").trim();
String newpass=request.getParameter("newpass").trim();
String conpass=request.getParameter("repass").trim();
DBManager db=new DBManager();
String q1="select password from tbl_registration where userEmail='"+session.getAttribute("uid")+"'and password='"+oldpass+"' ";
ResultSet rs=db.getRecord(q1);
if(rs.next())
{
    if(newpass.equals(conpass))
    {
        String q2="update tbl_registration set password='"+newpass+"' where userEmail='"+session.getAttribute("uid")+"'";
        if((db.executeNonQuery(q2)==true))
        {
        out.print("<script>alert('Password changed successfully! Now Login Again');window.location.href='../generalcode/logout.jsp';</script>");
        }
        else
        {
            out.println("database error sorry did not changed!!");
        }
    }
    
    else
    {
        out.print("<script>alert('Did not matched new password & confirm password');window.location.href='../user_account.jsp';</script>");
    }
}
else
{
    out.print("<script>alert('Invalide Old password');window.location.href='../user_account.jsp';</script>");
}
%>