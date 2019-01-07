<%@page import="java.sql.ResultSet"%>
<%@page import="mypack.DBManager"%>
<%
    if(session.getAttribute("aid")==null)
    {
    response.sendRedirect("index.jsp");
    }
    else
    {
%>
<!DOCTYPE HTML>
<html>
<head>
<title>Admin | Add Product Properties</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<!-- Custom Theme files -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
<!--js-->
<script src="js/jquery-2.1.1.min.js"></script> 
<!--icons-css-->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!--Google Fonts-->
<link href='//fonts.googleapis.com/css?family=Carrois+Gothic' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Work+Sans:400,500,600' rel='stylesheet' type='text/css'>
<!--static chart-->
<script src="js/Chart.min.js"></script>
<!--//charts-->
<!-- geo chart -->
    <script src="//cdn.jsdelivr.net/modernizr/2.8.3/modernizr.min.js" type="text/javascript"></script>
    <script>window.modernizr || document.write('<script src="lib/modernizr/modernizr-custom.js"><\/script>')</script>
    <!--<script src="lib/html5shiv/html5shiv.js"></script>-->
     <!-- Chartinator  -->
    <script src="js/chartinator.js" ></script>
    
<!--skycons-icons-->
<script src="js/skycons.js"></script>
<!--//skycons-icons-->
<style>
    .selpc
    {
        width: 100%;
        height: 43px;
        border-radius: 5px;
        border: 1px solid lightgrey;
    }
    input[type='text']
    {
        background: none;
    }
 </style>
</head>
<body>	
<div class="page-container">	
   <div class="left-content">
	   <div class="mother-grid-inner">
            <!--header start here-->
                
            <%@include file="admincommon/header.jsp" %>
    <!--inner block start here-->
<div class="signup-page-main">
     <div class="signup-main">  	
    	 <div class="signup-head"><h1>Add Product Properties</h1></div>
        <div class="signup-block">
            <form action="admincode/addproperty.jsp" method="post">
                <div class="row">
                    <div class="col-sm-6">
                        <label for="pid">Product Name</label>
                        <select name="pid" required="" class="selpc">
                            <option value="">----select---</option>
                            <%
                                String query2="select * from tbl_product";
                                DBManager db1 = new DBManager();
                                ResultSet rs1 = db1.getRecord(query2);
                                while (rs1.next()) {
                            %>
                            <option value="<%= rs1.getString("productId") %>"><%= rs1.getString("productName")%></option>
                            <%	
                    		}
                            %>
                        </select>
                        
                    </div>
                    <div class="col-sm-6">
                        <label for="availquant">Available Quantity</label>
                        <input type="text" name="availquant" placeholder="Valid Quantity" required="">
                        
                    </div>
                </div>
                 <div class="row">
                    <div class="col-sm-6">
                        <label for="pcolor">Color</label>
                        <select name="pcolor" required="" class="selpc">
                            <option value="">----select---</option>
                            <option value="black">Black</option>
                            <option value="grey">Grey</option>
                            <option value="red">Red</option>
                            <option value="green">Green</option>
                            <option value="brown">Brown</option>
                            <option value="balck&white">Black&White</option>
                            <option value="yellow">yellow</option>
                            <option value="white">White</option>
                        </select>
                    </div>
                    <div class="col-sm-6">
                        <label for="psize">Product Size</label>
                        <select name="psize" required="" class="selpc">
                            <option value="">----select---</option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="5">5</option>
                            <option value="6">6</option>
                            <option value="7">7</option>
                            <option value="8">8</option>
                            <option value="9">9</option>
                            <option value="10">10</option>
                            <option value="10+">10+</option>
                        </select>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <label for="pfeature">Product Description</label>
                        <textarea name="pfeature" class="form-control" placeholder="Enter product Description" required=""></textarea>
                    </div>
                </div>
                <br>
                       
                        <input type="submit" name="Sign In" value="Add Property">														
                </form>
        </div>
    </div>
</div>
<!--inner block end here-->
<!--copy rights start here-->
<footer>
    <%@include file="admincommon/footer.jsp" %>
</footer>	
<!--COPY rights end here-->
</div>
</div>
            <%@include file="admincommon/side_header.jsp" %>
<!--scrolling js-->
		<script src="js/jquery.nicescroll.js"></script>
		<script src="js/scripts.js"></script>
		<!--//scrolling js-->
<script src="js/bootstrap.js"> </script>
<!-- mother grid end here-->
</body>
</html>                     
<%

}
%>