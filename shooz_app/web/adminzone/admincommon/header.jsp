<%
    if(session.getAttribute("aid")==null)
    {
    response.sendRedirect("../index.jsp");
    }
    else
    {
%>
<div class="header-main">
    <div class="header-left">
                    <div class="logo-name">
                                     <a href="home.jsp">
                                         <img id="logo" width="80" height="50"src="../images/logo/logo.png" alt="Logo"/>
                              </a> 								
                    </div>
                    <!--search-box-->
                            <div class="search-box">
                                    <form>
                                            <input type="text" placeholder="Search..." required="">	
                                            <input type="submit" value="">					
                                    </form>
                            </div><!--//end-search-box-->
                    <div class="clearfix"> </div>
             </div>
             <div class="header-right">
                    <div class="profile_details_left"><!--notifications of menu start -->
                            
                            <div class="clearfix"> </div>
                    </div>
                    <!--notification menu end -->
                    <div class="profile_details">		
                            <ul>
                                    <li class="dropdown profile_details_drop">
                                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                                    <div class="profile_img">	
                                                            <span class="prfil-img"><img src="images/p1.png" alt=""> </span> 
                                                            <div class="user-name">
                                                                <p><%= session.getAttribute("aid")%></p>
                                                                    <span>Administrator</span>
                                                            </div>
                                                            <i class="fa fa-angle-down lnr"></i>
                                                            <i class="fa fa-angle-up lnr"></i>
                                                            <div class="clearfix"></div>	
                                                    </div>	
                                            </a>
                                            <ul class="dropdown-menu drp-mnu">
                                                <li> <a href="changepassword.jsp"><i class="fa fa-lock"></i> Change Password</a> </li>
                                                <li> <a href="adminprofile/logoutcode.jsp"><i class="fa fa-sign-out"></i> Logout</a> </li>
                                            </ul>
                                    </li>
                            </ul>
                    </div>
                    <div class="clearfix"> </div>				
            </div>
    <div class="clearfix"> </div>	
</div>
<!--heder end here-->
<!-- script-for sticky-nav -->
		<script>
		$(document).ready(function() {
			 var navoffeset=$(".header-main").offset().top;
			 $(window).scroll(function(){
				var scrollpos=$(window).scrollTop(); 
				if(scrollpos >=navoffeset){
					$(".header-main").addClass("fixed");
				}else{
					$(".header-main").removeClass("fixed");
				}
			 });
			 
		});
		</script>
		<!-- /script-for sticky-nav -->
                
                
<%
}
%>