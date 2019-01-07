<%@page import="mypack.DBManager"%>
<%
DBManager db=new DBManager();
String nameonc=request.getParameter("name");
String ctype=request.getParameter("ctype");
String cnum =request.getParameter("cnum");
String expmonth=request.getParameter("expmonth");
String expyear=request.getParameter("expyear");

String insquery="insert into tbl_card(userEmail,nameOnCard,cardNumber, cardtype,expMonth,expYear)values('"+session.getAttribute("uid")+"','"+nameonc+"','"+cnum+"','"+ctype+"','"+expmonth+"','"+expyear+"')";
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
