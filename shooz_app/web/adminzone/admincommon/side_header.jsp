
<!--slider menu-->
    <div class="sidebar-menu">
		  	<div class="logo"> <a href="#" class="sidebar-icon"> <span class="fa fa-bars"></span> </a> <a href="#"> <span id="logo" ></span> 
			      <!--<img id="logo" src="" alt="Logo"/>--> 
			  </a> </div>		  
		    <div class="menu">
		      <ul id="menu" >
		        <li id="menu-home" ><a href="home.jsp"><i class="fa fa-tachometer"></i><span>Dashboard</span></a></li>
		        <li><a href="#"><i class="fa fa-shopping-cart"></i><span>Product</span><span class="fa fa-angle-right" style="float: right"></span></a>
		         	<ul id="menu-academico-sub" >
			            <li id="menu-academico-avaliacoes" ><a href="addproduct.jsp">Add Product</a></li>
			            <li id="menu-academico-boletim" ><a href="addproductproperties.jsp">Add product properties</a></li>
                                    <li id="menu-academico-boletim" ><a href="addshowpic.jsp">Add Product Picture</a></li>
                                    <li id="menu-academico-boletim" ><a href="manage_product.jsp">Manage Prouct</a></li>
		             </ul>
		         </li>
		         <li><a href="#"><i class="fa fa-cogs"></i><span>Category</span><span class="fa fa-angle-right" style="float: right"></span></a>
		          <ul>
		            <li><a href="add_category.jsp">Add Category</a></li>
		            <li><a href="manage_category.jsp">Manage Category</a></li>		            
		          </ul>
		        </li>
                        <li><a href="#"><i class="fa fa-pencil"></i><span>Reviews</span><span class="fa fa-angle-right" style="float: right"></span></a>
		          <ul>
		            <li><a href="manage_feedback.jsp">Check Feedback</a></li>
		            <li><a href="404.jsp">Manage Reviews</a></li>		            
		          </ul>
		        </li>
                        <li><a href="#"><i class="fa fa-user"></i><span>User</span><span class="fa fa-angle-right" style="float: right"></span></a>
		          <ul>
		            <li><a href="manage_user.jsp">Manage User</a></li>		            
		          </ul>
		        </li>
                        <li><a href="contact_us.jsp"><i class="fa fa-envelope"></i><span>Contact Us</span></a></li>
		      </ul>
		    </div>
	 </div>
	<div class="clearfix"> </div>
</div>
<!--slide bar menu end here-->
<script>
var toggle = true;
            
$(".sidebar-icon").click(function() {                
  if (toggle)
  {
    $(".page-container").addClass("sidebar-collapsed").removeClass("sidebar-collapsed-back");
    $("#menu span").css({"position":"absolute"});
  }
  else
  {
    $(".page-container").removeClass("sidebar-collapsed").addClass("sidebar-collapsed-back");
    setTimeout(function() {
      $("#menu span").css({"position":"relative"});
    }, 400);
  }               
                toggle = !toggle;
            });
</script>