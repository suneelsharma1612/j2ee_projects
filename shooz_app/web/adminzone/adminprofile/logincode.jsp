<%@page import="java.sql.ResultSet"%>
<%@page import="mypack.DBManager"%>
<%
String txtemail=request.getParameter("email").trim();
String txtpsw=request.getParameter("password").trim();
DBManager db=new DBManager();
String query="select * from authorities where authEmail='"+txtemail+"' and password='"+txtpsw+"'";       
ResultSet rs = db.getRecord(query);
            if (rs.next())
            {  
            /*session setting for the user*/
            session.setAttribute("aid",txtemail);
            out.println("<script>window.location.href='../home.jsp';</script>");      
             }
            else 
            {
                
                out.print("<script>alert('Sorry !! Invalide Userid/password');window.location.href='../index.jsp';</script>");
            }
%>