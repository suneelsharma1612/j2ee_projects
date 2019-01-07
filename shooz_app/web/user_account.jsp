<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%
    if(session.getAttribute("uid")==null)
    {
        out.println("<html><script>alert('Please Login First!!');</script></html>");
        response.sendRedirect("index.jsp");

    }
    else
    {
  %>

<!DOCTYPE html>
<html lang="zxx">

<head>
	<title> ShoozApp| User Account</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="utf-8">
	<meta name="keywords" content="" />
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
                
	</script>
	<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
	<link href="css/login_overlay.css" rel='stylesheet' type='text/css' />
	<link href="css/style6.css" rel='stylesheet' type='text/css' />
	<link rel="stylesheet" href="css/shop.css" type="text/css" />
	<link rel="stylesheet" type="text/css" href="css/checkout.css">
	<link href="css/easy-responsive-tabs.css" rel='stylesheet' type='text/css' />
	<link href="css/style.css" rel='stylesheet' type='text/css' />
	<link href="css/fontawesome-all.css" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Inconsolata:400,700" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800"
	    rel="stylesheet">
    <link rel="stylesheet"  type="text/css" href="css/custome_css.css">
    

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
	<div class="banner-top container-fluid" id="home">
		<!-- header -->
            <%@include file="commonfiles/header.jsp" %> 
		<!-- // header -->
    </div>
		<!-- banner -->
		<div class="banner_inner">
			<div class="services-breadcrumb">
				<div class="inner_breadcrumb">

					<ul class="short">
						<li>
							<a href="index.jsp">Home</a>
							<i>|</i>
						</li>
                                                <li>User Account</li>
					</ul>
				</div>
			</div>

		</div>
		<!--//banner -->
		<!--// header_top -->
		<!--Payment-->
                <%
                DBManager db3 =new DBManager();
                String query3="select * from tbl_registration where userEmail='"+session.getAttribute("uid")+"'";
                ResultSet rs3=db3.getRecord(query3);
                rs3.next();
                %>
		<section class="banner-bottom-wthreelayouts py-lg-5 py-3">
			<div class="container">
				<div class="inner-sec-shop px-lg-4 px-3">
					<h3 class="tittle-scstech my-lg-4 mt-3">My Account</h3>
					<!--/tabs-->
					<div class="responsive_tabs">
						<div id="horizontalTab">
							<ul class="resp-tabs-list">
								<li>My Profile</li>
								<li>Update Profile</li>
								<li>Change Password</li>
							</ul>
							<div class="resp-tabs-container">
								<!--/tab_one-->
								<div class="tab1">
									<div class="pay_info">
										<form action="#" method="post" class="creditly-card-form agileinfo_form">
											<section class="creditly-wrapper wthree, w3_agileits_wrapper">
												<div class="credit-card-wrapper">
													<div class="first-row form-group">
                                                                                                            
                                                                                                            <div class="row">
                                                                                                                <div class="controls col-md-6">
															<label class="control-label">Name</label>
                                                                                                                        <input class="billing-address-name form-control" type="text" readonly="" value="<%=rs3.getString("userName")%>" name="name" placeholder="John Smith">
														</div>
                                                                                                                <div class="controls col-md-6">
															<label class="control-label">Gender</label>
                                                                                                                        <input class="billing-address-name form-control" type="text" readonly="" value="<%=rs3.getString("gender")%>" name="name" placeholder="John Smith">
														</div>
                                                                                                            </div>
														<div class="w3_agileits_card_number_grids row">
															<div class="w3_agileits_card_number_grid_left col-md-6 col-sm-12">
																<div class="controls">
																	<label class="control-label">Email</label>
																	<input class="number credit-card-number form-control" type="text" name="number" inputmode="numeric" autocomplete="cc-number"
                                                                                                                                               autocompletetype="cc-number" x-autocompletetype="cc-number" value="<%=rs3.getString("userEmail")%>">
																</div>
															</div>
															<div class="w3_agileits_card_number_grid_right col-md-6 col-sm-12">
																<div class="controls">
																	<label class="control-label">Join Date</label>
                                                                                                                                        <input class="security-code form-control" Â· inputmode="numeric" type="text" name="security-code" value="<%=rs3.getString("regDate")%>" placeholder="&#149;&#149;&#149;">
																</div>
															</div>
															<div class="clear"> </div>
														</div>
                                                                                                            <div class="row">
														<div class="controls col-sm-12">
                                                                                                                    <%
                                                                                                                    DBManager db4=new DBManager();
                                                                                                                    String query4="select * from tbl_shippingadd where userEmail='"+session.getAttribute("uid")+"'";
                                                                                                                    ResultSet rs4=db4.getRecord(query4);
                                                                                                                    rs4.next();
                                                                                                                    %>
															<label class="control-label">Address</label>
                                                                                                                        <input class="expiration-month-and-year form-control" value="<%=rs4.getString("apartHome")%>,<%=rs4.getString("city")%>,<%=rs4.getString("state")%>,<%=rs4.getString("country")%>" type="text" name="expiration-month-and-year" placeholder="Please Fill Your Shipping address">
														</div>
                                                                                                            </div>
													</div>
												</div>
                                                                                                
											</section>
										</form>
									</div>

								</div>
								<!--//tab_one-->
								<div class="tab2">
									<div class="pay_info">
										<form action="userzone/updateprofile.jsp" method="post" class="creditly-card-form agileinfo_form">
                                                                                    <section class="creditly-wrapper wthree, w3_agileits_wrapper">
                                                                                <div class="credit-card-wrapper">
                                                                                        <div class="first-row form-group">
                                                                                            <div class="row">
                                                                                                <div class="controls col-md-12 col-sm-12 col-lg-12">
                                                                                                        <label class="control-label">Name</label>
                                                                                                        <input class="billing-address-name form-control" type="text" name="name" value="<%=rs3.getString("userName")%>">
                                                                                                </div>
                                                                                                
                                                                                            </div>
                                                                                            <div class="row">
                                                                                                <div class="controls col-md-6">
                                                                                                        <label class="control-label">Home/Apartment No or Name</label>
                                                                                                        <input class="billing-address-name form-control" type="text" name="homeapart" value="<%=rs4.getString("apartHome")%>">
                                                                                                </div>
                                                                                                <div class="controls col-md-6">
                                                                                                        <label class="control-label">Country</label>
                                                                                                        <br>
                                                                                                         <%
                                                                                                            //Include database configuration file
                                                                                                            DBManager db5=new DBManager();

                                                                                                            //Get all country data
                                                                                                            String query5 ="SELECT * FROM countries ORDER BY conName ASC";

                                                                                                            //Count total number of rows
                                                                                                            ResultSet rs5=db5.getRecord(query5);
                                                                                                           %>
                                                                                                        <select class="year" name="country" id="country" required style="width:95%;height: 45%;outline: gray;color:gray;">
                                                                                                            <option value="">Select Country</option>
                                                                                                            <%
                                                                                                               int j=1;
                                                                                                            if(j> 0){
                                                                                                                while(rs5.next()){ 
                                                                                                                    %>
                                                                                                                    <option value="<%=rs5.getString("country_id")%>"><%=rs5.getString("conName")%></option>
                                                                                                                    <%
                                                                                                                }
                                                                                                            }else{
                                                                                                                %>

                                                                                                                <option value="">Country not available</option>
                                                                                                                <%
                                                                                                            }
                                                                                                            %>
                                                                                                        </select>
                                                                                                            
                                                                                                </div>
                                                                                            </div>
                                                                                               
                                                                                            <div class="row">
                                                                                                <div class="controls col-md-6">
                                                                                                        <label class="control-label">State</label>
                                                                                                        <br>
                                                                                                         <select class="year" name="state" id="state" required style="width:95%;height: 45px;outline: gray;color:gray;" >
                                                                                                                <option value="">Select country first</option>
                                                                                                         </select>
                                                                                                </div>
                                                                                                <div class="controls col-md-6">
                                                                                                        <label class="control-label">City</label>
                                                                                                        <br>
                                                                                                         <select class="year" name="city" id="city" required style="width:95%;height: 45px;outline: gray;color:gray;" >
                                                                                                                <option value="">Select state first</option>
                                                                                                         </select>
                                                                                                        
                                                                                                            
                                                                                                </div>
                                                                                            </div>
                                                                                              <br>
                                                                                                <div class="w3_agileits_card_number_grids row">
                                                                                                        <div class="w3_agileits_card_number_grid_left col-md-6 col-sm-12">
                                                                                                                <div class="controls">
                                                                                                                        <label class="control-label">PinCode</label>
                                                                                                                        <input class="number form-control" type="text" name="pin" value="<%=rs4.getString("zipcode")%>">
                                                                                                                </div>
                                                                                                        </div>
                                                                                                        <div class="w3_agileits_card_number_grid_right col-md-6 col-sm-12">
                                                                                                                <div class="controls">
                                                                                                                        <label class="control-label">Mobile</label>
                                                                                                                        <input class="security-code form-control" inputmode="numeric" type="text" name="mobile" value="<%=rs4.getString("mobile")%>">
                                                                                                                </div>
                                                                                                        </div>
                                                                                                        <div class="clear"> </div>
                                                                                                </div>
                                                                                            
                                                                                        </div>
                                                                                </div>
                                                                                <input type="submit" value="Update Profile">
                                                                            </section>
											
									</form>

                                                                    </div>
								</div>
								<div class="tab3">
                                                                    <div class="pay_info">
                                                                        <form action="userzone/changepasscode.jsp" method="post">
                                                                            <section class="creditly-wrapper wthree, w3_agileits_wrapper">
                                                                                            
                                                                                <div class="credit-card-wrapper">
                                                                                        <div class="first-row form-group">
                                                                                                <div class="controls">
                                                                                                        <label class="control-label">Current Password</label>
                                                                                                        <input class="billing-address-name form-control" type="password" name="curpass" placeholder="Enter Current Password">
                                                                                                </div>
                                                                                                <div class="controls">
                                                                                                        <label class="control-label">New Password</label>
                                                                                                        <input class="billing-address-name form-control" type="password" name="newpass" placeholder="Enter New Password">
                                                                                                </div>
                                                                                                <div class="controls">
                                                                                                        <label class="control-label">Re-Enter Password</label>
                                                                                                        <input class="billing-address-name form-control" type="password" name="repass" placeholder="Re-Enter Your New Password">
                                                                                                </div>
                                                                                                
                                                                                        </div>
                                                                                     <input type="submit" style="background: green;color: wheat;"  value="Change Password">
                                                                                </div>
                                                                        </section>
                                                                                                
                                                                        </form>
                                                                    </div>
								</div>
								
							</div>
						</div>
					</div>
					<!--//tabs-->
				</div>

			</div>
			<!-- //payment -->
		</section>
		<!--//Payment-->
		<!--footer -->
                <%@include file="commonfiles/footer.jsp" %> 
		<!-- //footer -->
		<!--jQuery-->
		<script src="js/jquery-2.2.3.min.js"></script>
		<!-- newsletter modal -->
		<!--search jQuery-->
		<script src="js/modernizr-2.6.2.min.js"></script>
		<script src="js/classie-search.js"></script>
		<script src="js/demo1-search.js"></script>
		<!--//search jQuery-->
		<!-- cart-js -->
		<script src="js/minicart.js"></script>
		<script>
			googles.render();

			googles.cart.on('googles_checkout', function (evt) {
				var items, len, i;

				if (this.subtotal() > 0) {
					items = this.items();

					for (i = 0, len = items.length; i < len; i++) {}
				}
			});
		</script>
		<!-- //cart-js -->
		<script>
			$(document).ready(function () {
				$(".button-log a").click(function () {
					$(".overlay-login").fadeToggle(200);
					$(this).toggleClass('btn-open').toggleClass('btn-close');
				});
			});
			$('.overlay-close1').on('click', function () {
				$(".overlay-login").fadeToggle(200);
				$(".button-log a").toggleClass('btn-open').toggleClass('btn-close');
				open = false;
			});
		</script>
		<!-- carousel -->
		<!-- easy-responsive-tabs -->
		<script src="js/easy-responsive-tabs.js"></script>
		<script>
			$(document).ready(function () {
				$('#horizontalTab').easyResponsiveTabs({
					type: 'default', //Types: default, vertical, accordion           
					width: 'auto', //auto or any width like 600px
					fit: true, // 100% fit in a container
					closed: 'accordion', // Start closed if in accordion view
					activate: function (event) { // Callback function if tab is switched
						var $tab = $(this);
						var $info = $('#tabInfo');
						var $name = $('span', $info);
						$name.text($tab.text());
						$info.show();
					}
				});
				$('#verticalTab').easyResponsiveTabs({
					type: 'vertical',
					width: 'auto',
					fit: true
				});
			});
		</script>

		<!-- credit-card -->
		<script type="text/javascript" src="js/creditly.js"></script>
		<link rel="stylesheet" href="css/creditly.css" type="text/css" media="all" />

		<script type="text/javascript">
			$(function () {
				var creditly = Creditly.initialize(
					'.creditly-wrapper .expiration-month-and-year',
					'.creditly-wrapper .credit-card-number',
					'.creditly-wrapper .security-code',
					'.creditly-wrapper .card-type');

				$(".creditly-card-form .submit").click(function (e) {
					e.preventDefault();
					var output = creditly.validate();
					if (output) {
						// Your validated credit card output
						console.log(output);
					}
				});
			});
		</script>
		<!-- //credit-card -->
		<!-- dropdown nav -->
		<script>
			$(document).ready(function () {
				$(".dropdown").hover(
					function () {
						$('.dropdown-menu', this).stop(true, true).slideDown("fast");
						$(this).toggleClass('open');
					},
					function () {
						$('.dropdown-menu', this).stop(true, true).slideUp("fast");
						$(this).toggleClass('open');
					}
				);
			});
		</script>
		<!-- //dropdown nav -->
		<script src="js/move-top.js"></script>
    <script src="js/easing.js"></script>
    <script>
        jQuery(document).ready(function($) {
            $(".scroll").click(function(event) {
                event.preventDefault();
                $('html,body').animate({
                    scrollTop: $(this.hash).offset().top
                }, 900);
            });
        });
    </script>
    <script>
        $(document).ready(function() {
            /*
            						var defaults = {
            							  containerID: 'toTop', // fading element id
            							containerHoverID: 'toTopHover', // fading element hover id
            							scrollSpeed: 1200,
            							easingType: 'linear' 
            						 };
            						*/

            $().UItoTop({
                easingType: 'easeOutQuart'
            });

        });
    </script>
    <!--// end-smoth-scrolling -->


		<!-- //smooth-scrolling-of-move-up -->
		<script src="js/bootstrap.js"></script>
		<!-- js file -->
</body>

</html>

<%
}
%>
