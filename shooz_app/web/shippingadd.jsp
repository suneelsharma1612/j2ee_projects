
<%
     if(session.getAttribute("uid")==null)
    {
        out.print("<script>alert('Login first Please!!');window.location.href='index.jsp';</script>");
    }
    DBManager db1=new DBManager();
    String rec="select * from tbl_shippingadd where userEmail='"+session.getAttribute("uid")+"'";
    ResultSet rs1=db1.getRecord(rec);
    if(rs1.next())
    {
        out.print("<script>alert('Already Added The Shipping Address');window.location.href='index.jsp';</script>");
    }
%>
 <%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <title>ShoozApp | Regstration</title>
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
    <link rel="stylesheet"  type="text/css" href="css/general.css">
   
</head>

<body>
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
                    <li>Shipping Adress</li>
                </ul>
            </div>
        </div>

    </div>

</div>
<!--//banner -->
<div class="login">

    <div class="main-agileits">
        <div class="form-w3agile">
            <h3>Add Your Shipping Address</h3>
            <form action="userzone/shippingaddcode.jsp" method="post">
                <div class="row">
                    <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
                        <i class="" aria-hidden="true">Name</i>
                        <div class="key">
                            <input  type="text"  name="name" required=""  placeholder="Full Name">
                            <div class="clearfix"></div>
                        </div>
                    </div>
                    <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
                        <i class="" aria-hidden="true">Country</i>
                        
                        <select required="" class="selectbox" name="country" style="color: #999;height:45px;">
                                <option value="INDIA">INDIA</option>
                                <option value="CHINA">CHINA </option>
                                <option value="JAPAN">JAPAN </option>
                                <option value="PAKISTAN">PAKISTAN </option>
                                <option value="NEPAL">NEPAL </option>
                                <option value="BHOOTAN">BHOOTAN </option>
                                <option value="SHRI LANKA">SHRI LANKA</option>
                            </select>
                            <div class="clearfix"></div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
                        <i class="" aria-hidden="true">State</i>
                        
                        <select required="" class="selectbox" name="state" style="color: #999;height:45px;">
                                <option value="UTTAR PRADES">UTTAR PRADES</option>
                                <option value="UTTRA KHAND">UTTRA KHAND</option>
                                <option value="DELHI">DELHI</option>
                                <option value="BIHAR">BIHAR </option>
                                <option value="MUMBAI">MUMBAI </option>
                                <option value="KOLKATA">KOLKATA </option>
                                <option value="PANJAB">PANJAB </option>
                            </select>
                            <div class="clearfix"></div>
                    </div>
                    <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
                        <i class="" aria-hidden="true">City</i>
                        
                        <select required="" class="selectbox" name="city" style="color: #999;height:45px;">
                                 <option value="LUCKNOW">LUCKNOW</option>
                                <option value="KANPUR">KANPUR</option>
                                <option value="PATANA">PATANA</option>
                                <option value="GORAKHPUR">GORAKHPUR</option>
                                <option value="CHANDIGARH">CHANDIGARH</option>
                                <option value="MOHALI">MOHALI</option>
                                <option value="DELHI">DELHI</option>
                            </select>
                            <div class="clearfix"></div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12 col-md-12 col-lg-12 col-xl-12">
                        <i class="" aria-hidden="true">Apartment/Home</i>
                        <div class="key">
                            <input  type="text"  name="apathome"  required=""  placeholder="House/Apartment">
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
                        <i class="" aria-hidden="true">Mobile</i>
                        <div class="key">
                            <input  type="text"  name="mobile" required=""  placeholder="Valid Contact">
                            <div class="clearfix"></div>
                        </div>
                    </div>
                    <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
                        <i class="" aria-hidden="true">Zipcode</i>
                        <div class="key">
                            <input  type="text"  name="zipcode" required=""  placeholder="Enter Pin/Zip Code">
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
                <input type="submit" value="Save Address" >
            </form>
        </div>
    </div>
</div>

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

