<%@page import="java.sql.ResultSet"%>
<%@page import="mypack.DBManager"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Detail Article</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 
 <style type="text/css">
.select-boxes{width: 280px;text-align: center;}
select {
   
    border: 1px double #000;
 
    font-family: Georgia;
    font-weight: bold;
    font-size: 14px;
    height: 39px;
    padding: 7px 8px;
    width: 250px;
    outline: none;
    margin: 10px 0 10px 0;
}
select option{
    font-family: Georgia;
    font-size: 14px;
}
</style>
<script src="jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
    $('#country').on('change',function(){
        var countryID = $(this).val();
        if(countryID){
            $.ajax({
                type:'POST',
                url:'fileajaxdata.jsp',
                data:'country_id='+countryID,
                success:function(html){
                    $('#state').html(html);
                    $('#city').html('<option value="">Select state first</option>'); 
                }
            }); 
        }else{
            $('#state').html('<option value="">Select country first</option>');
            $('#city').html('<option value="">Select state first</option>'); 
        }
    });
    
    $('#state').on('change',function(){
        var stateID = $(this).val();
        if(stateID){
            $.ajax({
                type:'POST',
                url:'fileajaxdata.jsp',
                data:'state_id='+stateID,
                success:function(html){
                    $('#city').html(html);
                }
            }); 
        }else{
            $('#city').html('<option value="">Select state first</option>'); 
        }
    });
});
</script>
</head>

<body>
<div class="maincontainer">
		 <header class="header">
             	   <div class="hadeLogo" >
                    <a class="navbar-brand" href="Article.aspx" style="color: #fff">
                        <img src="images/logo (1).png" alt="Simply Learn Programming" style="margin-top:-12%;" /></a>
             	   </div>
      <nav class="navbar navbar-default">
           <div class="container-fluid">
           <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

                        <!-- Brand and toggle get grouped for better mobile display -->
           <div class="navbar-header">
      

          </div>

                        
                        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

 
                        </div>
                        <!-- /.navbar-collapse -->
                    </div>
                    <!-- /.container-fluid -->
                </nav>
            </header>
     <div class="mainclass">
     <div class="titel">
     <h3>Dynamic Dependent Select Box</h3>
</div>
<hr  class="hr"/>

            
    <div class="middel_div_right" align="center">
       


 <div class="select-boxes">
    <%
    //Include database configuration file
    DBManager db=new DBManager();
    
    //Get all country data
    String query ="SELECT * FROM countries ORDER BY conName ASC";
    
    //Count total number of rows
    ResultSet rs=db.getRecord(query);
   %>
    <select name="country" id="country">
        <option value="">Select Country</option>
        <%
           int j=1;
        if(j> 0){
            while(rs.next()){ 
                %>
                <option value="<%=rs.getString("country_id")%>"><%=rs.getString("conName")%></option>
                <%
            }
        }else{
            %>
            
            <option value="">Country not available</option>
            <%
        }
        %>
    </select>
    
    <select name="state" id="state">
        <option value="">Select country first</option>
    </select>
    
    <select name="city" id="city">
        <option value="">Select state first</option>
    </select>
    </div>

          
   </div>

  
</body>
</html>
