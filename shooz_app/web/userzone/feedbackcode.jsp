<%@page import="java.sql.ResultSet"%>
<%@page import="mypack.DBManager"%>
<%
       DBManager db=new DBManager();
       String resquery="select * from tbl_registration where userEmail='"+session.getAttribute("uid")+"'";
       ResultSet rs = db.getRecord(resquery);
       rs.next();
       
       String subject=request.getParameter("subject");
       String message=request.getParameter("message");
     
       String fbDate=db.getCurrentDate();
       String query1="insert into tbl_feedback(userId,fbMessage,fbSubject,fbDate,userEmail) values('"+rs.getString("userId")+"','"+message+"','"+subject+"','"+fbDate+"','"+rs.getString("userEmail")+"')";
       Boolean rs1=db.executeNonQuery(query1);
       if(rs1==true)
       {
         out.println("<script>alert('Thank You!! For Your Feedback. It makes us good for You...');window.location.href='../feedback.jsp';</script>");  
       }
       
           else
           {
               out.println("<script>alert('Opps !! There is some data connection problem .');window.location.href='../feedback.jsp';</script>");
           }
       
       
%>
