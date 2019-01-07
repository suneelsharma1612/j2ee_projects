<%@page import="mypack.DBManager"%>
<%@page import="java.sql.ResultSet"%>
<header>
        <div class="row">
                <div class="col-md-3 top-info text-left mt-lg-4">
                        <h6>Need Help</h6>
                        <ul>
                                <li>
                                        <i class="fas fa-phone"></i> Call</li>
                                <li class="number-phone mt-3">8874001973</li>
                        </ul>
                </div>
                <div class="col-md-6 col-sm-12 logo-scstech text-center">
                        <h1 class="logo-scstech">
                                <a class="navbar-brand" href="index.jsp">
                                        <img src="images/logo/logo.png" width="60" height="35" class="logo1" />
                                        Shooz<span style="color:red;">App </span></a>
                        </h1>
                </div>

                <div class="col-md-3 top-info-cart text-right mt-lg-4">
                        <ul class="cart-inner-info">
                                <li class="button-log">
                                        <a class="btn-open" href="#">
                                                <span class="fa fa-user" aria-hidden="true"></span>
                                        </a>
                                </li
                                <!--script for cart hit without login-->
                                <script>
                                    function givInst()
                                    {
                                        alert("Login First Please !!")
                                    }
                                </script>
                                 <%
                                    if(session.getAttribute("uid")==null)
                                    {
                                       %>
                                <li class="galssescart galssescart2 cart cart box_1">
                                        <form action="#" method="post" class="last">
                                                <input type="hidden" name="userid" value="">
                                                <input type="hidden" name="display" value="1">
                                                <button class="top_googles_cart" type="button" onclick="givInst()" name="submit" value="">
                                                MyCart<i class="fas fa-cart-arrow-down"></i>
                                                </button>
                                        </form>
                                </li>
                    <%
                                    }
                                    else
                                    {
                                        DBManager db =new DBManager();
                                        String name=session.getAttribute("uid")+"";
                                        String itemno="select * from tbl_cart where orderby='"+name+"'";
                                        ResultSet rs=db.getRecord(itemno);
                                        int n=0;
                                        while(rs.next())
                                        {
                                            n++;
                                            
                                        }
                                        %>
                                        <script type="text/javascript">

                                       </script>
                                         <li class="galssescart galssescart2 cart cart box_1">
                                        <form action="mycart.jsp" method="post" class="last"><button class="top_googles_cart" type="submit" name="submit" value="">
                                                MyCart<i class="fas fa-cart-arrow-down"><span style="color: red;"><%=n%></span></i>
                                                </button>
                                        </form>
                                </li>
                                        <%
                                    }
                                %>
                        </ul>
                        <!---->
                        <div class="overlay-login text-left">
                                <button type="button" class="overlay-close1">
                                        <i class="fa fa-times" aria-hidden="true"></i>
                                </button>
                            <%
                                                if(session.getAttribute("uid")==null)
                                                {
                                                   %>
                                <div class="wrap">
                                        <h5 class="text-center mb-4">Login Now</h5>
                                        <div class="login p-5 bg-dark mx-auto mw-100">    
                                            <form action="generalcode/log_code.jsp" method="post">
                                                        <div class="form-group">
                                                                <label class="mb-2">Email address</label>
                                                                <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"  name="email" placeholder="" required="">
                                                                <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                                                        </div>
                                                        <div class="form-group">
                                                                <label class="mb-2">Password</label>
                                                                <input type="password" class="form-control" id="exampleInputPassword1" name="password" placeholder="" required="">
                                                        </div>
                                                        <div class="form-check mb-2">
                                                                <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                                                <label class="form-check-label" for="exampleCheck1">Check me out</label>
                                                        </div>
                                                        <button type="submit" class="btn btn-primary submit mb-4">Sign In</button>
                                                        <a href="registration.jsp" class="btn btn-info submit mb-4" style="color: white;"> Sign Up </a>
                                                </form>
                                        </div>
                                        <!---->
                                        <%
                                                }
                                             else
                                                {       
                                            %>
                                            <div class="uaccount" >
                                                <a href="order.jsp"><div class="col-sm-12">Order</div></a>
                                                
                                                <a href="checkout.jsp"><div class="col-sm-12" style="padding:10px;">Checkout</div></a>
                                                <a href="feedback.jsp"><div class="col-sm-12" style="padding:10px;">Feed Back</div></a>
                                                <a href="savecard.jsp"><div class="col-sm-12" style="padding:10px;">Save Card</div></a>
                                                <a href="shippingadd.jsp"><div class="col-sm-12" style="padding:10px;">Save Shipping Address</div></a>
                                                <a href="billingadd.jsp"><div class="col-sm-12" style="padding:10px;">Save Billing Address</div></a>
                                                 <a href="user_account.jsp">
                                                        <button type="submit" style="padding:10px;" class="btn btn-success btn-block">User Accout</button>
                                                    </a>
                                                    <a href="generalcode/logout.jsp">
                                                        <button type="submit" style="padding:10px;" class="btn btn-danger btn-block">Log-Out</button>
                                                    </a>
                                               
                                            </div>
                                            <%
                                                }
                                            %>
                                </div>
                        </div>
                        <!---->
                        
                </div>
        </div>
        <div class="search">
                <div class="mobile-nav-button">
                        <button id="trigger-overlay" type="button">
                                <i class="fas fa-search"></i>
                        </button>
                </div>
                <!-- open/close -->
                <div class="overlay overlay-door">
                        <button type="button" class="overlay-close">
                                <i class="fa fa-times" aria-hidden="true"></i>
                        </button>
                        <form action="#" method="post" class="d-flex">
                                <input class="form-control" type="search" placeholder="Search here..." required="">
                                <button type="submit" class="btn btn-primary submit">
                                        <i class="fas fa-search"></i>
                                </button>
                        </form>

                </div>
                <!-- open/close -->
        </div>
        <label class="top-log mx-auto"></label>
        <nav class="navbar navbar-expand-lg navbar-light bg-light top-header mb-2">

                <button class="navbar-toggler as mx-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon">

                        </span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav nav-mega mx-auto">
                                <li class="nav-item active">
                                        <a class="nav-link ml-lg-0" href="index.jsp">Home
                                                <span class="sr-only">(current)</span>
                                        </a>
                                </li>
                                <li class="nav-item">
                                        <a class="nav-link" href="about.jsp">About</a>
                                </li>
                                <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
                                            aria-expanded="false">
                                                Men
                                        </a>
                                        <ul class="dropdown-menu mega-menu ">
                                                <li>
                                                        <div class="row">
                                                                <div class="col-md-4 media-list span4 text-left">
                                                                        <h5 class="tittle-scstech-sub">Sports Shoes</h5>
                                                                        <ul>
                                                                                <li class="media-mini mt-3">
                                                                                        <a href="men_sheos.jsp">Running Shoes</a>
                                                                                </li>
                                                                                <li class="">
                                                                                        <a href="men_sheos.jsp">Sports Sandals</a>
                                                                                </li>
                                                                                <li class="">
                                                                                        <a href="men_sheos.jsp">Basketball</a>
                                                                                </li>
                                                                                <li>
                                                                                        <a href="men_sheos.jsp">Football</a>
                                                                                </li>
                                                                                <li>
                                                                                        <a href="men_sheos.jsp">Cricket</a>
                                                                                </li>
                                                                                <li class="mt-3">
                                                                                        <h5>Casuals</h5>
                                                                                </li>
                                                                                <li class="mt-2">
                                                                                        <a href="men_sheos.jsp">Flate</a>
                                                                                </li>
                                                                                <li>
                                                                                        <a href="men_sheos.jsp">Normal Walk</a>
                                                                                </li>
                                                                        </ul>
                                                                </div>
                                                                <div class="col-md-4 media-list span4 text-left">
                                                                        <h5 class="tittle-scstech-sub">Party Wear Shoes </h5>
                                                                        <div class="media-mini mt-3">
                                                                                <a href="men_sheos.jsp">
                                                                                        <img width="200" height="200" src="images/shoes/shp2.jpg" class="img-fluid" alt="">
                                                                                </a>
                                                                        </div>
                                                                </div>
                                                                <div class="col-md-4 media-list span4 text-left">
                                                                        <h5 class="tittle-scstech-sub">Formal Shoes</h5>
                                                                        <div class="media-mini mt-3">
                                                                                <a href="men_sheos.jsp">
                                                                                        <img src="images/shoes/shp3.jpg" class="img-fluid" width="150" height="150" alt="">
                                                                                </a>
                                                                        </div>

                                                                </div>
                                                        </div>
                                                        <hr>
                                                </li>
                                        </ul>
                                </li>
                                <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown1" role="button" data-toggle="dropdown" aria-haspopup="true"
                                            aria-expanded="false">
                                                Women
                                        </a>
                                        <ul class="dropdown-menu mega-menu ">
                                                <li>
                                                        <div class="row">
                                                                <div class="col-md-4 media-list span4 text-left">
                                                                        <h5 class="tittle-scstech-sub">Sports & Casuals </h5>
                                                                        <ul>
                                                                                <li class="media-mini mt-3">
                                                                                        <a href="women_shoes.jsp">Slippers</a>
                                                                                </li>
                                                                                <li class="">
                                                                                        <a href="women_shoes.jsp">Running Shoes</a>
                                                                                </li>
                                                                                <li>
                                                                                        <a href="women_shoes.jsp">Sandals</a>
                                                                                </li>
                                                                                <li>
                                                                                        <a href="women_shoes.jsp">Comfort shoes</a>
                                                                                </li>
                                                                                <li>
                                                                                        <a href="women_shoes.jsp">Fall Trends</a>
                                                                                </li>
                                                                                <li>
                                                                                        <a href="women_shoes.jsp">Mules</a>
                                                                                </li>
                                                                                <li>
                                                                                        <a href="women_shoes.jsp">Cut Out Booties</a>
                                                                                </li>
                                                                                <li>
                                                                                        <a href="women_shoes.jsp">Lightweight Running</a>
                                                                                </li>
                                                                                <li>
                                                                                        <a href="showomen_shoes.jsp">Sports Sandals</a>
                                                                                </li>
                                                                        </ul>
                                                                </div>
                                                                <div class="col-md-4 media-list span4 text-left">
                                                                        <h5 class="tittle-scstech-sub"> Formal & Party Wear </h5>
                                                                        <ul>
                                                                                <li class="media-mini mt-3">

                                                                                        <a href="women_shoes.jsp">Boots</a>
                                                                                </li>
                                                                                <li>
                                                                                        <a href="women_shoes.jsp">Booties</a>
                                                                                </li>
                                                                                <li>
                                                                                        <a href="women_shoes.jsp">Sneakers</a>
                                                                                </li>
                                                                                <li>
                                                                                        <a href="women_shoes.jsp">Flats</a>
                                                                                </li>
                                                                                <li>
                                                                                        <a href="women_shoes.jsp">Heels</a>
                                                                                </li>
                                                                                <li>
                                                                                        <a href="women_shoes.jsp">Sandals</a>
                                                                                </li>
                                                                        </ul>
                                                                        <ul class="sub-in text-left">

                                                                                <li>
                                                                                        <a href="women_shoes.jsp">Polo Ralph Lauren</a>
                                                                                </li>
                                                                                <li>
                                                                                        <a href="women_shoes.jsp">Prada</a>
                                                                                </li>
                                                                                <li>
                                                                                        <a href="women_shoes.jsp">Ray-Ban Jr</a>
                                                                                </li>
                                                                        </ul>

                                                                </div>
                                                                <div class="col-md-4 media-list span4 text-left">

                                                                        <h5 class="tittle-scstech-sub-nav">New Releases</h5>
                                                                        <div class="media-mini mt-3">
                                                                                <a href="women_shoes.jsp">
                                                                                        <img src="images/shoes/shp1.jpg" class="img-fluid" alt="">
                                                                                </a>
                                                                        </div>

                                                                </div>
                                                        </div>
                                                        <hr>
                                                </li>
                                        </ul>
                                </li>
                                <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown1" role="button" data-toggle="dropdown" aria-haspopup="true"
                                           aria-expanded="false">
                                                Kid's
</a>
                                        <ul class="dropdown-menu mega-menu ">
                                                <li>
                                                        <div class="row">
                                                                <div class="col-md-4 media-list span4 text-left">
                                                                        <h5 class="tittle-scstech-sub">Kid's Wear - She </h5>
                                                                        <ul>
                                                                                <li class="media-mini mt-3">
                                                                                        <a href="kids_shoes.jsp">Slippers</a>
                                                                                </li>
                                                                                <li class="">
                                                                                        <a href="kids_shoes.jsp">Running Shoes</a>
                                                                                </li>
                                                                                <li>
                                                                                        <a href="kids_shoes.jsp">Sandals</a>
                                                                                </li>
                                                                                <li>
                                                                                        <a href="kids_shoes.jsp">Comfort shoes</a>
                                                                                </li>
                                                                                <li>
                                                                                        <a href="kids_shoes.jsp">Fall Trends</a>
                                                                                </li>
                                                                                <li>
                                                                                        <a href="kids_shoes.jsp">Mules</a>
                                                                                </li>
                                                                                <li>
                                                                                        <a href="kids_shoes.jsp">Cut Out Booties</a>
                                                                                </li>
                                                                                <li>
                                                                                        <a href="kids_shoes.jsp">Lightweight Running</a>
                                                                                </li>
                                                                                <li>
                                                                                        <a href="kids_shoes.jsp">Sports Sandals</a>
                                                                                </li>
                                                                        </ul>
                                                                </div>
                                                                <div class="col-md-4 media-list span4 text-left">
                                                                        <h5 class="tittle-scstech-sub"> Kid's Wear - He </h5>
                                                                        <ul>
                                                                                <li class="media-mini mt-3">

                                                                                        <a href="kids_shoes.jsp">Boots</a>
                                                                                </li>
                                                                                <li>
                                                                                        <a href="kids_shoes.jsp">Booties</a>
                                                                                </li>
                                                                                <li>
                                                                                        <a href="kids_shoes.jsp">Sneakers</a>
                                                                                </li>
                                                                                <li>
                                                                                        <a href="kids_shoes.jsp">Flats</a>
                                                                                </li>
                                                                                <li>
                                                                                        <a href="kids_shoes.jsp">Heels</a>
                                                                                </li>
                                                                                <li>
                                                                                        <a href="kids_shoes.jsp">Sandals</a>
                                                                                </li>
                                                                        </ul>
                                                                        <ul class="sub-in text-left">

                                                                                <li>
                                                                                        <a href="kids_shoes.jsp">Polo Ralph Lauren</a>
                                                                                </li>
                                                                                <li>
                                                                                        <a href="kids_shoes.jsp">Prada</a>
                                                                                </li>
                                                                                <li>
                                                                                        <a href="kids_shoes.jsp">Ray-Ban Jr</a>
                                                                                </li>
                                                                        </ul>

                                                                </div>
                                                                <div class="col-md-4 media-list span4 text-left">

                                                                        <h5 class="tittle-scstech-sub-nav">New Releases</h5>
                                                                        <div class="media-mini mt-3">
                                                                                <a href="kids_shoes.jsp">
                                                                                        <img src="images/shoes/shp7.jpg" class="img-fluid" alt="">
                                                                                </a>
                                                                        </div>

                                                                </div>
                                                        </div>
                                                        <hr>
                                                </li>
                                        </ul>
                                </li>
                                <li class="nav-item">
                                        <a class="nav-link" href="contact.jsp">Contact</a>
                                </li>
                        </ul>

                </div>
        </nav>
</header>
		<!-- //header -->