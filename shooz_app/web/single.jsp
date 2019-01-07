<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="mypack.DBManager"%>

<!DOCTYPE html>
<html lang="eng">

<head>
	<title>ShoozApp | Single View</title>
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
	<link rel="stylesheet" href="css/owl.carousel.css" type="text/css" media="all">
	<link rel="stylesheet" href="css/owl.theme.css" type="text/css" media="all">
	<link rel="stylesheet" type="text/css" href="css/jquery-ui1.css">
	<link href="css/easy-responsive-tabs.css" rel='stylesheet' type='text/css' />
	<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
	<link href="css/style.css" rel='stylesheet' type='text/css' />
	<link href="css/fontawesome-all.css" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Inconsolata:400,700" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800"
	    rel="stylesheet">
    <link rel="stylesheet"  type="text/css" href="css/custome_css.css">
</head>

<body bgcolor="#d8bfd8">
	<div class="banner-top container-fluid" id="home">
		<!-- header -->
		        <%@include file="commonfiles/header.jsp" %> 
		<!-- banner -->
		<div class="banner_inner">
			<div class="services-breadcrumb">
				<div class="inner_breadcrumb">

					<ul class="short">
						<li>
							<a href="index.jsp">Home</a>
							<i>|</i>
						</li>
						<li>Single Page</li>
					</ul>
				</div>
			</div>

		</div>
		
	</div>
		<!--//banner -->
		<!--/shop-->
		<section class="banner-bottom-wthreelayouts py-lg-5 py-3">
                   <%
                        String query1="SELECT * FROM tbl_product WHERE productId='"+request.getParameter("productid")+"'";

                        DBManager db = new DBManager();
                       ResultSet rs1=db.getRecord(query1);
                         rs1.next();
                         String query2="SELECT * FROM tbl_productpic WHERE productId='"+request.getParameter("productid")+"'";
                         ResultSet rs2=db.getRecord(query2);
                         rs2.next();
               
                
                %>
			<div class="container">
				<div class="inner-sec-shop pt-lg-4 pt-3">
					<div class="row">
							<div class="col-lg-4 single-right-left ">
									<div class="grid images_3_of_2">
										<div class="flexslider1">
					
											<ul class="slides">
												<li data-thumb="productpic/<%= rs2.getString("pic1")%>">
                                                                                                    <div class="thumb-image"> <img src="productpic/<%= rs2.getString("pic1")%>" data-imagezoom="true" class="img-fluid" alt=" "> </div>
												</li>
												<li data-thumb="productpic/<%= rs2.getString("pic2")%>">
													<div class="thumb-image"> <img src="productpic/<%= rs2.getString("pic2")%>" data-imagezoom="true" class="img-fluid" alt=" "> </div>
												</li>
												<li data-thumb="productpic/<%= rs2.getString("pic3")%>">
													<div class="thumb-image"> <img src="productpic/<%= rs2.getString("pic3")%>" data-imagezoom="true" class="img-fluid" alt=" "> </div>
												</li>
											</ul>
											<div class="clearfix"></div>
										</div>
									</div>
								</div>
                                                                <form action="addtocart.jsp" method="post">
								<div class="col-lg-8 single-right-left simpleCart_shelfItem">
                                                                    <input type="hidden" value="<%= rs1.getString("productName")%>" name="proname">
                                                                    <input type="hidden" value="<%= rs1.getString("productPrice")%>" name="proprice">
                                                                    <input type="hidden" value="<%= rs1.getString("productId")%>" name="proid">
									<h3><%= rs1.getString("productName")%></h3>
                                                                        <div class="row">
                                                                            <div class="col-sm-6"><p><span class="item_price">Price: Rs.<%= rs1.getString("productPrice")%></span></p></div>
                                                                            <div class="col-sm-6">
                                                                                <p><del></del><span class="item_price"> Discount : 26%</span>
                                                                                </p>
                                                                            </div>
                                                                        </div>
                                                                            <div class="rating1">
                                                                                <span class="item_price"> Rating: </span>
                                                                                    <ul class="stars">
                                                                                            <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                                                                            <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                                                                            <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                                                                            <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                                                                            <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                                                                            <li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
                                                                                            <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                                                                    </ul>
                                                                            </div>
                                                                            

                                                                            <br>
                                                                        <div class="row">
                                                                            <div class="col-sm-6">
                                                                                <div class="color-quality">
                                                                                    <div class="color-quality-right">
                                                                                        <h5>Quantity:</h5>
                                                                                        <select id="country1" name="quant" class="frm-field required sect">
                                                                                            <option value="1">1</option>
                                                                                            <option value="2">2</option>
                                                                                            <option value="3">3</option>
                                                                                            <option value="5">5</option>
                                                                                            <option value="10">10</option>
                                                                                        </select>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-sm-6">
                                                                                <div class="color-quality">
                                                                                    <div class="color-quality-right">
                                                                                        <h5>Size:(IND/USA)</h5>
                                                                                        <select id="size" class="field required sect" name="ssize">
                                                                                             <option value="1">1</option>
                                                                                            <option value="2">2</option>
                                                                                            <option value="3">3</option>
                                                                                            <option value="4">4</option>
                                                                                            <option value="5">5</option>
                                                                                            <option value="6">6</option>
                                                                                            <option value="7">7</option>
                                                                                            <option value="8">8</option>
                                                                                            <option value="9">9</option>
                                                                                            <option value="10">10</option>
                                                                                            <option value="11">11</option>
                                                                                            <option value="12">12</option>
                                                                                        </select>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            
                                                                        </div>


									<div class="occasional">
									
										
                                                                                <div class="color-quality">
                                                                                    <div class="color-quality-right">
                                                                                        <h5>Available Color</h5>
                                                                                        <select id="size" class="field required sect" name="color">
                                                                                             <option value="red">Red</option>
                                                                                            <option value="white">White</option>
                                                                                            <option value="yellow">Yellow</option>
                                                                                            <option value="blue">Blue</option>
                                                                                            <option value="black">Black</option>
                                                                                            <option value="dark pink">Dark Pink</option>
                                                                                        </select>
                                                                                    </div>
                                                                                </div>
                                                                            
									</div>
									<div class="occasion-cart">
                                                                            
                                                                            <div class="googles single-item singlepage">
                                                                                
                                                                                        <button type="submit" class="googles-cart pgoogles-cart">
                                                                                                Add to Cart
                                                                                        </button>

                                                                                

                                                                            </div>
									</div>
                                                                            
									
			
								</div>
                                                            </form>
								<div class="clearfix"> </div>
								<!--/tabs-->
								<div class="responsive_tabs">
									<div id="horizontalTab">
										<ul class="resp-tabs-list">
											<li>Description</li>
											<li>Reviews</li>
											<li>Information</li>
										</ul>
										<div class="resp-tabs-container">
											<!--/tab_one-->
											<div class="tab1">
					
												<div class="single_page">
													<h6>Description About This Product</h6>
													<p></p>
													<p class="para"><%= rs1.getString("productName")%></p>
												</div>
											</div>
											<!--//tab_one-->
											<div class="tab2">
					
												<div class="single_page">
													<div class="bootstrap-tab-text-grids">
														<div class="bootstrap-tab-text-grid">
															<div class="bootstrap-tab-text-grid-left">
																<img src="images/team1.jpg" alt=" " class="img-fluid">
															</div>
															<div class="bootstrap-tab-text-grid-right">
																<ul>
																	<li><a href="#">Admin</a></li>
																	<li><a href="#"><i class="fa fa-reply-all" aria-hidden="true"></i> Reply</a></li>
																</ul>
																<p>the quick brown fox jumps right over the little lazy dog. The quick brown fox jumsp right over the little lazy dog. the quick brown fox jumps right ovver the little lazy dog.the quick brown fox jumps right over the little lazy dog. The quick brown fox jumsp right over the little lazy dog. the quick brown fox jumps right ovver the little lazy dog..</p>
															</div>
															<div class="clearfix"> </div>
														</div>
														<div class="add-review">
															<h4>add a review</h4>
															<form action="#" method="post">
																	<input class="form-control" type="text" name="Name" placeholder="Enter your email..." required="">
																<input class="form-control" type="email" name="Email" placeholder="Enter your email..." required="">
																<textarea name="Message" required=""></textarea>
																<input type="submit" value="SEND">
															</form>
														</div>
													</div>
					
												</div>
											</div>
											<div class="tab3">
					
												<div class="single_page">
													<h6>Information about the Poduct</h6>
													<p>the quick brown fox jumps right over the little lazy dog. The quick brown fox jumsp right over the little lazy dog. the quick brown fox jumps right ovver the little lazy dog.the quick brown fox jumps right over the little lazy dog. The quick brown fox jumsp right over the little lazy dog. the quick brown fox jumps right ovver the little lazy dog.</p>
													<p class="para">the quick brown fox jumps right over the little lazy dog. The quick brown fox jumsp right over the little lazy dog. the quick brown fox jumps right ovver the little lazy dog.the quick brown fox jumps right over the little lazy dog. The quick brown fox jumsp right over the little lazy dog. the quick brown fox jumps right ovver the little lazy dog.</p>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!--//tabs-->
					
					</div>
				</div>
			</div>
				<div class="container-fluid">
					<!--/slide-->
                    <div class="slider-img mid-sec mt-lg-5 mt-2">
                        <!--//banner-sec-->
                        <h3 class="tittle-scstech text-left my-lg-4 my-3">Similar Products</h3>
                        <div class="slider-img mid-sec">
					<!--//banner-sec-->
					<div class="mid-slider">
						<div class="owl-carousel owl-theme row">
                                                     <%
                                                        String query6="SELECT * FROM tbl_product ORDER BY productId DESC LIMIT 6";
                                                        DBManager db6 = new DBManager();
                                                        ResultSet rs6 = db6.getRecord(query6);
                                                        int j=0;
                                                         while (rs6.next()) {
                                                             j++;
                                                      %>
							<div class="item">
								<div class="gd-box-info text-center">
									<div class="product-men women_two bot-gd">
										<div class="product-googles-info slide-img googles">
											<div class="men-pro-item">
												<div class="men-thumb-item">
                                                                                                    <img src="productpic/<%= rs6.getString("productPic")%>" class="img-fluid" alt="">
													<div class="men-cart-pro">
														<div class="inner-men-cart-pro">
															<a href="single.jsp?productid=<%= rs6.getString("productId") %>&catid=<%= rs6.getString("catId") %>" class="link-product-add-cart">Quick View</a>
														</div>
													</div>
													<span class="product-new-top">New</span>
												</div>
												<div class="item-info-product">

													<div class="info-product-price">
														<div class="grid_meta">
															<div class="product_price">
																<h4>
																	<a href="single.jsp?productid=<%= rs6.getString("productId") %>&catid=<%= rs6.getString("catId") %>"><%= rs6.getString("productName")%></a>
																</h4>
																<div class="grid-price mt-2">
																	<span class="money ">Rs. <%= rs6.getString("productPrice")%></span>
																</div>
															</div>
															<ul class="stars">
																<li>
																	<a href="#">
																		<i class="fa fa-star" aria-hidden="true"></i>
																	</a>
																</li>
																<li>
																	<a href="#">
																		<i class="fa fa-star" aria-hidden="true"></i>
																	</a>
																</li>
																<li>
																	<a href="#">
																		<i class="fa fa-star" aria-hidden="true"></i>
																	</a>
																</li>
																<li>
																	<a href="#">
																		<i class="fa fa-star-half-o" aria-hidden="true"></i>
																	</a>
																</li>
																<li>
																	<a href="#">
																		<i class="fa fa-star-o" aria-hidden="true"></i>
																	</a>
																</li>
															</ul>
														</div>
														<div class="googles single-item hvr-outline-out">
                                                                                                                    <form action="addtocart.jsp" method="post">
                                                                                                                                <input type="hidden" name="proid" value="<%= rs6.getString("productId") %>">
                                                                                                                                <input type="hidden" name="quant" value="1">
                                                                                                                                <input type="hidden" name="ssize" value="7">
                                                                                                                                <input type="hidden" name="color" value="white">
                                                                                                                                <input type="hidden" name="cartid" value="<%= rs6.getString("catId") %>">
                                                                                                                                <input type="hidden" name="proname" value="<%= rs6.getString("productName") %>">
                                                                                                                                <input type="hidden" name="proprice" value="<%= rs6.getString("productPrice") %>">
                                                                                                                                <button type="submit"class="googles-cart pgoogles-cart">
                                                                                                                                        <i class="fas fa-cart-plus"></i>
                                                                                                                                </button>
                                                                                                                    </form>
                                                                                                                </div>
													</div>

												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							
                                                      <%
                                                         }
                                                      %>
							</div>
						</div>
					</div>
                    </div>
                    <!--//slider-->
					<!--//slider-->
				</div>
		</section>
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
		<!-- price range (top products) -->
		<script src="js/jquery-ui.js"></script>
		<script>
			//<![CDATA[ 
			$(window).load(function () {
				$("#slider-range").slider({
					range: true,
					min: 0,
					max: 9000,
					values: [50, 6000],
					slide: function (event, ui) {
						$("#amount").val("$" + ui.values[0] + " - $" + ui.values[1]);
					}
				});
				$("#amount").val("$" + $("#slider-range").slider("values", 0) + " - $" + $("#slider-range").slider("values", 1));

			}); //]]>
		</script>
		<!-- //price range (top products) -->

		<script src="js/owl.carousel.js"></script>
		<script>
			$(document).ready(function () {
				$('.owl-carousel').owlCarousel({
					loop: true,
					margin: 10,
					responsiveClass: true,
					responsive: {
						0: {
							items: 1,
							nav: true
						},
						600: {
							items: 2,
							nav: false
						},
						900: {
							items: 3,
							nav: false
						},
						1000: {
							items: 4,
							nav: true,
							loop: false,
							margin: 20
						}
					}
				})
			})
		</script>

		<!-- //end-smooth-scrolling -->

		<!-- single -->
		<script src="js/imagezoom.js"></script>
		<!-- single -->
		<!-- script for responsive tabs -->
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
		<!-- FlexSlider -->
		<script src="js/jquery.flexslider.js"></script>
		<script>
			// Can also be used with $(document).ready()
			$(window).load(function () {
				$('.flexslider1').flexslider({
					animation: "slide",
					controlNav: "thumbnails"
				});
			});
		</script>
		<!-- //FlexSlider-->

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


		<script src="js/bootstrap.js"></script>
		<!-- js file -->
</body>

</html>