<%@page import="mypack.DBManager"%>
<%
       DBManager db=new DBManager();
       String conName=request.getParameter("name");
       String conEmail=request.getParameter("email");
       String conSubject=request.getParameter("subject");
       String conMobile=request.getParameter("mobile");
       String conMessage=request.getParameter("message");
       String conDate=db.getCurrentDate();
     
       
        
       String query1="insert into contactus(conName,conEmail,conMobile,conSubject,conMessage,conDate) values('"+conName+"','"+conEmail+"','"+conMobile+"','"+conSubject+"','"+conMessage+"','"+conDate+"')";
       Boolean rs1=db.executeNonQuery(query1);
       
       if(rs1==true)
       {
         out.println("<script>alert('Thank You!! For Contact Us. We Will Get In Touch Very Short.');window.location.href='../contact.jsp';</script>");  
       }
       
           else
           {
               out.println("<script>alert('Sorry !! Unsuccessfull ,Please Fill Valid deatils.');window.location.href='../contact.jsp';</script>");
           }
       
       
%>
