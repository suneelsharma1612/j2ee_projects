
<%@page import="java.sql.ResultSet"%>
<%@page import="mypack.DBManager"%>
<%


if(request.getParameterMap().containsKey("country_id"))
{
     out.print(request.getParameter("name"));

    //Get all state data
     DBManager db=new DBManager();
    String query="SELECT * FROM states WHERE country_id = '"+request.getParameter("country_id")+"' ORDER BY stateName ASC";
    ResultSet rs=db.getRecord(query);
   int i=1;
    //Display states list
    if(i > 0){
        %>
        <option value="">Select state</option>
        <%
        while(rs.next()){ 
            %>
            <option value="<%=rs.getString("state_id")%>"><%=rs.getString("stateName")%></option>
            <%
        }
    }else{
        %>
        
       <option value="">State not available</option>
       <%
    }
}

if(request.getParameterMap().containsKey("state_id"))
{
    //Get all city data
     DBManager db1=new DBManager();
    String query1="SELECT * FROM cities WHERE state_id = '"+request.getParameter("state_id")+"' ORDER BY cityName ASC";
    ResultSet rs=db1.getRecord(query1);
   int j=1;
    //Display states list
    if(j > 0){
        %>
        <option value="">Select City</option>
        <%
        while(rs.next()){ 
            %>
            <option value="<%=rs.getString("city_id")%>"><%=rs.getString("cityName")%></option>
            <%
        }
    }else{
        %>
        
       <option value="">City not available</option>
       <%
    }
}

%>