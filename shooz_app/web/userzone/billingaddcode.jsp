<%@page import="mypack.DBManager"%>
<%
DBManager db=new DBManager();
String country=request.getParameter("country");
String state=request.getParameter("state");
String city =request.getParameter("city");
String aparthome=request.getParameter("apathome");
String mobile=request.getParameter("mobile");
String zipcode=request.getParameter("zipcode");

String insquery="insert into tbl_billingadd(userEmail,country,state, city,apartHome,mobile,zipcode)values('"+session.getAttribute("uid")+"','"+country+"','"+state+"','"+city+"','"+aparthome+"','"+mobile+"','"+zipcode+"')";
Boolean rs1=db.executeNonQuery(insquery);
if(rs1==true)
       {
         out.println("<script>alert('You saved Your address successfully.');window.location.href='../index.jsp';</script>");  
       }
       
           else
           {
               out.println("<script>alert('Sorry !! There is something wrong.');window.location.href='../billingadd.jsp';</script>");
           }


%>
