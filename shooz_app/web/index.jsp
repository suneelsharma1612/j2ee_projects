<%@page import="java.sql.ResultSet"%>
<%@page import="mypack.DBManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="eng">

<head>
	<title>Shoes | Home</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="utf-8">
	<meta name="keywords" content="">
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar(){
			window.scrollTo(0, 1);
		}
	</script>

	<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
	<link href="css/login_overlay.css" rel='stylesheet' type='text/css' />
	<link href="css/style6.css" rel='stylesheet' type='text/css' />
	<link rel="stylesheet" href="css/shop.css" type="text/css" />
	<link rel="stylesheet" href="css/owl.carousel.css" type="text/css" media="all">
	<link rel="stylesheet" href="css/owl.theme.css" type="text/css" media="all">
	<link href="css/style.css" rel='stylesheet' type='text/css' />
	<link href="css/fontawesome-all.css" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Inconsolata:400,700" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800"
	    rel="stylesheet">
	<link rel="stylesheet"  type="text/css" href="css/custome_css.css">
</head>

<body>
	<div class="banner-top container-fluid" id="home">
            <!--header-->
            <%@include file="commonfiles/header.jsp" %> 
            <!-- //header-->
        
		<!-- banner -->
		<div class="banner">
			<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
				<ol class="carousel-indicators">
					<li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
					<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
					<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
					<li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
				</ol>
				<div class="carousel-inner" role="listbox">
					<div class="carousel-item active">
						<div class="carousel-caption text-center">
							<h3>Men’s Footwear
								<span>Cool summer sale 50% off</span>
							</h3>
							<a href="shop.jsp" class="btn btn-sm animated-button gibson-three mt-4">Shop Now</a>
						</div>
					</div>
					<div class="carousel-item item2">
						<div class="carousel-caption text-center">
							<h3>Women’s Footwear
								<span>Want to Look Your Best?</span>
							</h3>
							<a href="shop.jsp" class="btn btn-sm animated-button gibson-three mt-4">Shop Now</a>

						</div>
					</div>
					<div class="carousel-item item3">
						<div class="carousel-caption text-center">
							<h3>Kid’s Fashion
								<span>Cool summer sale 50% off</span>
							</h3>
							<a href="shop.jsp" class="btn btn-sm animated-button gibson-three mt-4">Shop Now</a>

						</div>
					</div>
					<div class="carousel-item item4">
						<div class="carousel-caption text-center">
							<h3>Men & Women Fashion
								<span>Want to Look Your Best?</span>
							</h3>
							<a href="shop.jsp" class="btn btn-sm animated-button gibson-three mt-4">Shop Now</a>
						</div>
					</div>
				</div>
				<a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
					<span class="carousel-control-prev-icon" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a>
				<a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
					<span class="carousel-control-next-icon" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>
			<!--//banner -->
		</div>
	</div>
	<!--//banner-sec-->
	<section class="banner-bottom-wthreelayouts py-lg-5 py-3">
		<div class="container-fluid">
			<div class="inner-sec-shop px-lg-4 px-3">
				<h3 class="tittle-scstech my-lg-4 my-4">New Arrivals for you </h3>
				<div class="row">
					<!-- /womens -->
                                        <%
                                        String query1="SELECT * FROM tbl_product ORDER BY productId DESC LIMIT 8";
                                        DBManager db = new DBManager();
                                        ResultSet rs = db.getRecord(query1);
                                        int i=0;
                                         while (rs.next()) {
                                             i++;
                                        %>
					<div class="col-md-3 product-men women_two">
						<div class="product-googles-info googles">
							<div class="men-pro-item">
								<div class="men-thumb-item">
                                                                    <img src="uploadproduct/<%= rs.getString("productPic") %>" class="img-fluid" alt="">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
                                                                                    <a href="single.jsp?productid=<%= rs.getString("productId") %>&catid=<%= rs.getString("catId") %>" class="link-product-add-cart">Quick View</a>
										</div>
									</div>
									<span class="product-new-top">New</span>
								</div>
								<div class="item-info-product">
									<div class="info-product-price">
										<div class="grid_meta">
											<div class="product_price">
												<h4>
                                                                                                    <a href="single.jsp?productid=<%= rs.getString("productId") %>&catid=<%= rs.getString("catId") %>"><%= rs.getString("productName") %></a>
												</h4>
												<div class="grid-price mt-2">
													<span class="money ">Rs. <%= rs.getString("productPrice") %></span>
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
														<i class="fa fa-star" aria-hidden="true"></i>
													</a>
												</li>
												<li>
													<a href="#">
														<i class="fa fa-star-half-o" aria-hidden="true"></i>
													</a>
												</li>
											</ul>
										</div>
										<div class="googles single-item hvr-outline-out">
                                                                                    <form action="addtocart.jsp" method="post">
												<input type="hidden" name="proid" value="<%= rs.getString("productId") %>">
												<input type="hidden" name="quant" value="1">
                                                                                                <input type="hidden" name="cartid" value="<%= rs.getString("catId") %>">
												<input type="hidden" name="proname" value="<%= rs.getString("productName") %>">
												<input type="hidden" name="proprice" value="<%= rs.getString("productPrice") %>">
                                                                                                <input type="hidden" name="ssize" value="7">
                                                                                                <input type="hidden" name="color" value="white">
												<button type="submit"class="googles-cart pgoogles-cart">
													<i class="fas fa-cart-plus"></i>
												</button>
                                                                                    </form>
										</div>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
						</div>
					</div>
                                        <%
                                         }
                                        %>
					
				</div>
				<!-- //womens -->
				<!-- /mens -->
				<div class="row mt-lg-3 mt-0">
					<!-- /womens -->
					<div class="col-md-3 product-men women_two">
						<div class="product-googles-info googles">
							<div class="men-pro-item">
								<div class="men-thumb-item">
									<img src="images/items/item-5.jpg" class="img-fluid" alt="">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a href="single.jsp" class="link-product-add-cart">Quick View</a>
										</div>
									</div>
									<span class="product-new-top">New</span>
								</div>
								<div class="item-info-product">

									<div class="info-product-price">
										<div class="grid_meta">
											<div class="product_price">
												<h4>
													<a href="single.jsp">Aislin Wayfarer </a>
												</h4>
												<div class="grid-price mt-2">
													<span class="money ">Rs. 775.00</span>
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
														<i class="fa fa-star" aria-hidden="true"></i>
													</a>
												</li>
												<li>
													<a href="#">
														<i class="fa fa-star-half-o" aria-hidden="true"></i>
													</a>
												</li>
											</ul>
										</div>
										<div class="googles single-item hvr-outline-out">
											<form action="#" method="post">
												<input type="hidden" name="cmd" value="_cart">
												<input type="hidden" name="add" value="1">
												<input type="hidden" name="googles_item" value="Aislin Wayfarer">
												<input type="hidden" name="amount" value="775.00">
												<button type="submit" class="googles-cart pgoogles-cart">
													<i class="fas fa-cart-plus"></i>
												</button>
												
											</form>

										</div>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-3 product-men women_two">
						<div class="product-googles-info googles">
							<div class="men-pro-item">
								<div class="men-thumb-item">
									<img src="images/items/item-6.jpg" class="img-fluid" alt="">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a href="single.jsp" class="link-product-add-cart">Quick View</a>
										</div>
									</div>
									<span class="product-new-top">New</span>
								</div>
								<div class="item-info-product">

									<div class="info-product-price">
										<div class="grid_meta">
											<div class="product_price">
												<h4>
													<a href="single.jsp">Azmani Round </a>
												</h4>
												<div class="grid-price mt-2">
													<span class="money ">Rs. 725.00</span>
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
											<form action="#" method="post">
												<input type="hidden" name="cmd" value="_cart">
												<input type="hidden" name="add" value="1">
												<input type="hidden" name="googles_item" value="Azmani Round">
												<input type="hidden" name="amount" value="725.00">
												<button type="submit" class="googles-cart pgoogles-cart">
													<i class="fas fa-cart-plus"></i>
												</button>

												
											</form>
										</div>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
						</div>
					</div>
					
					<div class="col-md-3 product-men women_two">
						<div class="product-googles-info googles">
							<div class="men-pro-item">
								<div class="men-thumb-item">
									<img src="images/items/item-8.jpg" class="img-fluid" alt="">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a href="single.jsp" class="link-product-add-cart">Quick View</a>
										</div>
									</div>
									<span class="product-new-top">New</span>
								</div>
								<div class="item-info-product">

									<div class="info-product-price">
										<div class="grid_meta">
											<div class="product_price">
												<h4>
													<a href="single.jsp">Fossil Wayfarer </a>
												</h4>
												<div class="grid-price mt-2">
													<span class="money ">Rs. 825.00</span>
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
											<form action="#" method="post">
												<input type="hidden" name="cmd" value="_cart">
												<input type="hidden" name="add" value="1">
												<input type="hidden" name="googles_item" value="Fossil Wayfarer">
												<input type="hidden" name="amount" value="825.00">
												<button type="submit" class="googles-cart pgoogles-cart">
													<i class="fas fa-cart-plus"></i>
												</button>
											</form>

										</div>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
						</div>
					</div>
                                        <div class="col-md-3 product-men women_two">
						<div class="product-googles-info googles">
							<div class="men-pro-item">
								<div class="men-thumb-item">
									<img src="images/items/item-8.jpg" class="img-fluid" alt="">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a href="single.jsp" class="link-product-add-cart">Quick View</a>
										</div>
									</div>
									<span class="product-new-top">New</span>
								</div>
								<div class="item-info-product">

									<div class="info-product-price">
										<div class="grid_meta">
											<div class="product_price">
												<h4>
													<a href="single.jsp">Fossil Wayfarer </a>
												</h4>
												<div class="grid-price mt-2">
													<span class="money ">Rs. 825.00</span>
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
											<form action="#" method="post">
												<input type="hidden" name="cmd" value="_cart">
												<input type="hidden" name="add" value="1">
												<input type="hidden" name="googles_item" value="Fossil Wayfarer">
												<input type="hidden" name="amount" value="825.00">
												<button type="submit" class="googles-cart pgoogles-cart">
													<i class="fas fa-cart-plus"></i>
												</button>
											</form>

										</div>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
						</div>
					</div>
					<!-- /mens -->
				</div>
				<!--//row-->
				<!--/meddle-->
				<div class="row">
					<div class="col-md-12 middle-slider my-4">
						<div class="middle-text-info ">

							<h3 class="tittle-scstech two text-center my-lg-4 mt-3">Summer Flash sale</h3>
							<div class="simply-countdown-custom" id="simply-countdown-custom"></div>

						</div>
					</div>
				</div>
				<!--//meddle-->
				<!--/slide-->
				<div class="slider-img mid-sec">
					<!--//banner-sec-->
					<div class="mid-slider">
						<div class="owl-carousel owl-theme row">
                                                     <%
                                                        String query2="SELECT * FROM tbl_product ORDER BY productId DESC LIMIT 6";
                                                        DBManager db1 = new DBManager();
                                                        ResultSet rs1 = db1.getRecord(query1);
                                                        int j=0;
                                                         while (rs1.next()) {
                                                             j++;
                                                      %>
							<div class="item">
								<div class="gd-box-info text-center">
									<div class="product-men women_two bot-gd">
										<div class="product-googles-info slide-img googles">
											<div class="men-pro-item">
												<div class="men-thumb-item">
                                                                                                    <img src="productpic/<%= rs1.getString("productPic")%>" class="img-fluid" alt="">
													<div class="men-cart-pro">
														<div class="inner-men-cart-pro">
															<a href="single.jsp?productid=<%= rs1.getString("productId") %>&catid=<%= rs1.getString("catId") %>" class="link-product-add-cart">Quick View</a>
														</div>
													</div>
													<span class="product-new-top">New</span>
												</div>
												<div class="item-info-product">

													<div class="info-product-price">
														<div class="grid_meta">
															<div class="product_price">
																<h4>
																	<a href="single.jsp?productid=<%= rs1.getString("productId") %>&catid=<%= rs1.getString("catId") %>"><%= rs1.getString("productName")%></a>
																</h4>
																<div class="grid-price mt-2">
																	<span class="money ">Rs. <%= rs1.getString("productPrice")%></span>
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
                                                                                                                                <input type="hidden" name="proid" value="<%= rs1.getString("productId") %>">
                                                                                                                                <input type="hidden" name="quant" value="1">
                                                                                                                                <input type="hidden" name="cartid" value="<%= rs1.getString("catId") %>">
                                                                                                                                <input type="hidden" name="proname" value="<%= rs1.getString("productName") %>">
                                                                                                                                <input type="hidden" name="proprice" value="<%= rs1.getString("productPrice") %>">
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
				<!-- /testimonials -->
				<div class="testimonials py-lg-4 py-3 mt-4">
					<div class="testimonials-inner py-lg-4 py-3">
						<h3 class="tittle-scstech text-center my-lg-4 my-4">Testimonials</h3>
						<div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
							<div class="carousel-inner" role="listbox">
								<div class="carousel-item active">
									<div class="testimonials_grid text-center">
										<div class="row">
											<div class="col-sm-8">
												<h3>Annul Hussan
													<span>Customer</span>
												</h3>
												<label>North India </label>
												<p>Hey Guys, Its my personal views I am using this site for my all kinds of footwear. On last summer session i had bought A leather shoe with free polish box.Thanks ShoozApp.</p>
											</div>
											<div class="col-sm-4">
												<img src="images/testimonials/c1.png">
											</div>
										</div>

									</div>

								</div>
								<div class="carousel-item">
									<div class="testimonials_grid text-center">
										<div class="row">
											<div class="col-sm-8">
												<h3>Aarti Giri
													<span>Customer</span>
												</h3>
												<label>Alambag Lucknow</label>
												<p>Hey Guys, Its my personal views I am using this site for my all kinds of footwear. On last summer session i had bought A leather shoe with free polish box.Thanks ShoozApp.</p>
											</div>
											<div class="col-sm-4">
												<img src="images/testimonials/c2.png">
											</div>
										</div>

									</div>
								</div>
								<div class="carousel-item">
									<div class="testimonials_grid text-center">
										<div class="row">
											<div class="col-sm-8">
												<h3>Anubha Shri
													<span>Customer</span>
												</h3>
												<label>Raja ji Puram</label>
												<p>Hey Guys, Its my personal views I am using this site for my all kinds of footwear. On last summer session i had bought A leather shoe with free polish box.Thanks ShoozApp.</p>
											</div>
											<div class="col-sm-4">
												<img src="images/testimonials/c3.png">
											</div>
										</div>

									</div>
								</div>
								<a class="carousel-control-prev test" href="#carouselExampleControls" role="button" data-slide="prev">
									<span class="fas fa-long-arrow-alt-left"></span>
									<span class="sr-only">Previous</span>
								</a>
								<a class="carousel-control-next test" href="#carouselExampleControls" role="button" data-slide="next">
									<span class="fas fa-long-arrow-alt-right" aria-hidden="true"></span>
									<span class="sr-only">Next</span>

								</a>
							</div>
						</div>
					</div>
				</div>
				<!-- //testimonials -->
				<div class="row galsses-grids pt-lg-5 pt-3">
					<div class="col-lg-6 galsses-grid-left">
						<figure class="effect-lexi">
							<img src="images/special_offer/offer_women.jpg" alt="" class="img-fluid">
							<figcaption>
								<h3>Special Offer For
									<span class="tshadow">Women</span>
								</h3>
								<a href="shop.jsp"><p class="pcolor">Don't Miss this, Get it now. Offer for limited time.</p></a>
							</figcaption>
						</figure>
					</div>
					<div class="col-lg-6 galsses-grid-left">
						<figure class="effect-lexi">
							<img src="images/special_offer/offer_men.jpg" alt="" class="img-fluid">
							<figcaption>
								<h3>Special Offerce For
									<span class="tshadow">Men</span>
								</h3>
								<a href="shop.jsp"><p class="pcolor">Don't Miss this, Get it now. Offer for limited time.</p></a>
							</figcaption>
						</figure>
					</div>
				</div>
				<!-- /grids -->
				<div class="bottom-sub-grid-content py-lg-5 py-3">
					<div class="row">
						<div class="col-lg-3 bottom-sub-grid text-center">
							<div class="bt-icon">

								<span class="far fa-heart"></span>
							</div>

							<h4 class="sub-tittle-scstech my-lg-4 my-3">Leather Care Product</h4>
							<p>Explore vast selection of products from Top Brands. Pay on Delivery. Easy Returns. 100% Purchase Protection. Free Shipping* Low Prices. Cash on Delivery</p>
							<p>
								<a href="shop.jsp" class="btn btn-sm animated-button gibson-three mt-4">Shop Now</a>
							</p>
						</div>
						<!-- /.col-lg-3-->
						<div class="col-lg-3 bottom-sub-grid text-center">
							<div class="bt-icon">
								<span class="fas fa-paint-brush"></span>
							</div>

							<h4 class="sub-tittle-scstech my-lg-4 my-3">Shoes Polishes</h4>
							<p>Various Catagory of Shoes Polishes having minimum cost and give a perfect look for Your Shoes.Free delivery on lather show.</p>
							<p>
								<a href="shop.jsp" class="btn btn-sm animated-button gibson-three mt-4">Shop Now</a>
							</p>
						</div>
						<!-- /.col-lg-3 -->
						<div class="col-lg-3 bottom-sub-grid text-center">
							<div class="bt-icon">
								<span class="far fa-sun"></span>
							</div>

							<h4 class="sub-tittle-scstech my-lg-4 my-3">Dust Protection</h4>
							<p>Vegetable and olive oil. Use a clean, damp rag to clean off any dust from the shoe and then buff with a small drop of oil to bring</p>
							<p>
								<a href="shop.jsp" class="btn btn-sm animated-button gibson-three mt-4">Shop Now</a>
							</p>
						</div>
						<!-- /.col-lg-3 -->
						<div class="col-lg-3 bottom-sub-grid text-center">
							<div class="bt-icon">

								<span class="far fa-hand-paper"></span>
							</div>

							<h4 class="sub-tittle-scstech my-lg-4 my-3">Shoe Dryer & Cleaner</h4>
							<p>DBuy Shoe Racks, Laundry Bags, Organizers & More. Pay on Delivery. Buy Now! Great Value for Money. Free Shipping* Huge Selection. Cash on Delivery. Easy Returns. </p>
							<p>
								<a href="shop.jsp" class="btn btn-sm animated-button gibson-three mt-4">Shop Now</a>
							</p>
						</div>
					</div>
				</div>
				<!-- //grids -->
				<!-- /clients-sec -->
				<div class="testimonials p-lg-5 p-3 mt-4">
					<div class="row last-section">
						<div class="col-lg-3 footer-top-scstech-grid-sec">
							<div class="mail-grid-icon text-center">
								<i class="fas fa-gift"></i>
							</div>
							<div class="mail-grid-text-info">
								<h3>Genuine Product</h3>
								<p>Lorem ipsum dolor sit amet, consectetur</p>
							</div>
						</div>
						<div class="col-lg-3 footer-top-scstech-grid-sec">
							<div class="mail-grid-icon text-center">
								<i class="fas fa-shield-alt"></i>
							</div>
							<div class="mail-grid-text-info">
								<h3>Secure Products</h3>
								<p>Lorem ipsum dolor sit amet, consectetur</p>
							</div>
						</div>
						<div class="col-lg-3 footer-top-scstech-grid-sec">
							<div class="mail-grid-icon text-center">
								<i class="fas fa-dollar-sign"></i>
							</div>
							<div class="mail-grid-text-info">
								<h3>Cash on Delivery</h3>
								<p>Lorem ipsum dolor sit amet, consectetur</p>
							</div>
						</div>
						<div class="col-lg-3 footer-top-scstech-grid-sec">
							<div class="mail-grid-icon text-center">
								<i class="fas fa-truck"></i>
							</div>
							<div class="mail-grid-text-info">
								<h3>Easy Delivery</h3>
								<p>Lorem ipsum dolor sit amet, consectetur</p>
							</div>
						</div>
					</div>
				</div>
				<!-- //clients-sec -->
			</div>
		</div>
	</section>
	<!-- about -->
    <!-- footer section-->
    <%@include file="commonfiles/footer.jsp" %> 

    <!--//footer section-->

	<!--jQuery-->
	<script src="js/jquery-2.2.3.min.js"></script>
	<!-- newsletter modal -->
	<!-- Modal -->
	<!-- Modal -->

	<!-- // modal -->

	<!--search jQuery-->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<script src="js/classie-search.js"></script>
	<script src="js/demo1-search.js"></script>
	<!--//search jQuery-->
	<!-- cart-js -->
	<!--<script src="js/minicart.js"></script>-->
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
	<!-- Count-down -->
	<script src="js/simplyCountdown.js"></script>
	<link href="css/simplyCountdown.css" rel='stylesheet' type='text/css' />
	<script>
		var d = new Date();
		simplyCountdown('simply-countdown-custom', {
			year: d.getFullYear(),
			month: d.getMonth() + 2,
			day: 25
		});
	</script>
	<!--// Count-down -->
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

