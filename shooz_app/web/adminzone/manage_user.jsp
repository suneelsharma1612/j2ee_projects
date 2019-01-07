
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
<title>Admin | Manage User</title>
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
<div class="inner-block" style="position:relative;top:0%;">
    <div class="inbox">
    	  <h2>Manage Product</h2>
    	 <div class="col-md-12 mailbox-content  tab-content tab-content-in">
    	 	<div class="tab-pane active text-style" id="tab1">
	    	 	<div class="mailbox-border">
	               <div class="mail-toolbar clearfix">
				     <div class="float-left">
				        <div class="btn btn_1 btn-default mrg5R">
				           <i class="fa fa-refresh"> </i>
				        </div>
				        <div class="dropdown dropdown-inbox">
				            <a href="#" title="" class="btn btn-default" data-toggle="dropdown" aria-expanded="false">
				                <i class="fa fa-cog icon_8"></i>
				                <i class="fa fa-chevron-down icon_8"></i>
				            <div class="ripple-wrapper"></div></a>
				            <ul class="dropdown-menu float-right">
				                <li>
				                    <a href="#" title="">
				                        <i class="fa fa-pencil-square-o icon_9"> </i>
				                        Edit
				                    </a>
				                </li>
				                <li>
				                    <a href="#" title="">
				                        <i class="fa fa-calendar icon_9"> </i>
				                        Schedule
				                    </a>
				                </li>
				                <li>
				                    <a href="#" title="">
				                        <i class="fa fa-download icon_9"> </i>
				                        Download
				                    </a>
				                </li>
				                <li class="divider"></li>
				                <li>
				                    <a href="#" class="font-red" title="">
				                        <i class="fa fa-times" icon_9=""> </i>
				                        Delete
				                    </a>
				                </li>
				            </ul>
				        </div>
				        <div class="clearfix"> </div>
				    </div>
				    <div class="float-right">
	                            <span class="text-muted m-r-sm">Showing 20 of 346 </span>
	                            <div class="btn-group m-r-sm mail-hidden-options" style="display: inline-block;">
	                                <div class="btn-group">
	                                    <a class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-folder"></i> <span class="caret"></span></a>
	                                    <ul class="dropdown-menu dropdown-menu-right" role="menu">
	                                        <li><a href="#">Social</a></li>
	                                        <li><a href="#">Forums</a></li>
	                                        <li><a href="#">Updates</a></li>
	                                        <li class="divider"></li>
	                                        <li><a href="#">Spam</a></li>
	                                        <li><a href="#">Trash</a></li>
	                                        <li class="divider"></li>
	                                        <li><a href="#">New</a></li>
	                                    </ul>
	                                </div>
	                                <div class="btn-group">
	                                    <a class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-tags"></i> <span class="caret"></span></a>
	                                    <ul class="dropdown-menu dropdown-menu-right" role="menu">
	                                        <li><a href="#">Work</a></li>
	                                        <li><a href="#">Family</a></li>
	                                        <li><a href="#">Social</a></li>
	                                        <li class="divider"></li>
	                                        <li><a href="#">Primary</a></li>
	                                        <li><a href="#">Promotions</a></li>
	                                        <li><a href="#">Forums</a></li>
	                                    </ul>
	                                </div>
	                            </div>
	                            <div class="btn-group">
	                                <a class="btn btn-default"><i class="fa fa-angle-left"></i></a>
	                                <a class="btn btn-default"><i class="fa fa-angle-right"></i></a>
	                            </div>	
	                       <div class="clearfix"> </div>		        
				    </div>
	               </div>
	                <table class="table tab-border">
	                    <tbody>
                                <tr>
                                    <th>Sr.No</th>
                                    <th>Name</th>
                                    <th>Gender</th>
                                    <th>Email</th>
                                    <th>Password</th>
                                    <th>Reg Date</th>
                                    <th>Update</th>
                                    <th>Delete</th>
                                </tr>
                                <%
                                    int n = 1;
                                    String q = "SELECT * FROM tbl_registration ORDER BY userId DESC";
                                    DBManager db = new DBManager();
                                    ResultSet rs = db.getRecord(q);
                                    while (rs.next()) {
                                %>
                                <script>
                                           function delfeedback()
                                           {
                                               confirm("are you sure want to delete");
                                           }
                               </script>
	                        <tr >
	                            <td class="hidden-xs"><%= n%></td>
	                            <td class="hidden-xs"><%= rs.getString("userName") %></td>
	                            <td class="hidden-xs"><%= rs.getString("gender") %></td>
	                            <td><%= rs.getString("userEmail") %></td>
                                    <td><%= rs.getString("password") %></td>
                                    <td><%= rs.getString("regDate") %></td>
                                    <td><a href="userupdate.jsp?userid=<%= rs.getString("userId")%>"><i class="fa fa-pencil"></i> Edit</a></td>
                                    <td><a onclick="return delfeedback()" href="admincode/deluser.jsp?userid=<%= rs.getString("userId")%>"><i class="fa fa-dropbox"></i> Delete</a></td>
	                        </tr>
                                 <%
                                    n++;
                                    }
                                    %>
                            </tbody>
	                </table>
	            </div>   
               </div>
            </div>
          <div class="clearfix"> </div>     
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