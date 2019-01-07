<%@page import="mypack.DBManager"%>
<%
       DBManager db=new DBManager();
       String name=request.getParameter("name");
       String email=request.getParameter("email");
       String gender=request.getParameter("gender");
       String password=request.getParameter("password");
       String regDate=db.getCurrentDate();
       String query1="insert into tbl_registration(userName,userEmail,gender,password,picture,regDate) values('"+name+"','"+email+"','"+gender+"','"+password+"','','"+regDate+"')";
       Boolean rs1=db.executeNonQuery(query1);
       
       if(rs1==true)
       {
         out.println("<script>alert('Thank You!! For Contact Us. We Will Get In Touch Very Short.');window.location.href='../index.jsp';</script>");  
       }
       
           else
           {
               out.println("<script>alert('Sorry !! Unsuccessfull ,Please Fill Valid deatils.');window.location.href='../contact.jsp';</script>");
           }
       
       
%>
