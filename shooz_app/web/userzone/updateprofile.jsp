
<%@page import="mypack.DBManager"%>
<%@page import="java.sql.ResultSet"%>
<%
    String con_id=request.getParameter("country");
    DBManager db=new DBManager();
    String conq="select * from countries where country_id='"+con_id+"'";
    ResultSet rs1=db.getRecord(conq);
    rs1.next();
    String conName="'"+rs1.getString("conName") +"'";
    String sta_id=request.getParameter("state");
     DBManager db1=new DBManager();
    String staq="select * from states where state_id='"+sta_id+"'";
    ResultSet rs2=db1.getRecord(staq);
    rs2.next();
    String stateName="'"+rs2.getString("stateName") +"'";
    String city_id=request.getParameter("city");
     DBManager db2=new DBManager();
    String cityq="select * from cities where city_id='"+city_id+"'";
    ResultSet rs3=db2.getRecord(cityq);
    rs3.next();
    String cityName="'"+rs3.getString("cityName") +"'";
    String name=request.getParameter("name");
    String homeapart=request.getParameter("homeapart");
    String mobile=request.getParameter("mobile");
    String zipcode=request.getParameter("pin");
    
    DBManager db4=new DBManager();
    String query1="UPDATE tbl_shippingadd SET city="+cityName+",state="+stateName+",country="+conName+",mobile='"+mobile+"',zipcode='"+zipcode+"',apartHome='"+homeapart+"' where userEmail='"+session.getAttribute("uid") +"' ";
    Boolean rs4=db4.executeNonQuery(query1);
       
       if(rs4==true)
       {
            DBManager db5=new DBManager();
            String query2="update tbl_registration set userName='"+name+"'where userEmail='"+session.getAttribute("uid") +"' ";
            Boolean rs5=db5.executeNonQuery(query2);
           if(rs5==true)
           {
                out.println("<script>alert('successfully updated profile');window.location.href='../user_account.jsp';</script>"); 
           }
           else
           {
                out.println("<script>alert('your internet connection is slow!');window.location.href='../user_account.jsp';</script>"); 
           }
         
       }
       
        else
        {
            out.println("<script>alert('Please first add your Shipping add');window.location.href='../shippingadd.jsp';</script>");
        }
       
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    %>