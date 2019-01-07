<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    if(session.getAttribute("uid")==null)
    {
        out.print("<script>alert('Login first Please!!');window.location.href='index.jsp';</script>");
    }
    DBManager db1=new DBManager();
    String rec="select * from tbl_card where userEmail='"+session.getAttribute("uid")+"'";
    ResultSet rs1=db1.getRecord(rec);
    if(rs1.next())
    {
        out.print("<script>alert('Already Saved Card');window.location.href='index.jsp';</script>");
    }
%>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <title>ShoozApp | Save Card</title>
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
                    <li>Registration</li>
                </ul>
            </div>
        </div>

    </div>

</div>
<!--//banner -->
<div class="login">

    <div class="main-agileits">
        <div class="form-w3agile">
            <h3>Register</h3>
            <form action="userzone/savecardcode.jsp" method="post">
                <div class="row">
                    <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
                        <i class="fa fa-user" aria-hidden="true"> Name on Card</i>
                        <div class="key">
                            <input  type="text"  name="name" required=""  placeholder="Full Name">
                            <div class="clearfix"></div>
                        </div>
                    </div>
                    <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
                        <i class="fa fa-amazon-pay" aria-hidden="true"> Card Type</i>
                        
                            <select required="" name="ctype" style="width:100%; height: 45%;color: #999;">
                                <option value="Credit"> Credit </option>
                                <option value="Debit"> Debit </option>
                            </select>
                            <div class="clearfix"></div>
                    </div>
                </div>
               
                <div class="row">
                    <div class="col-sm-12 col-md-12 col-lg-12 col-xl-12">
                        <i class="fa fa-credit-card" aria-hidden="true"> Card Number </i>
                        <div class="key">
                            <input  type="text"  name="text"  required=""  placeholder="Enter Valid Card Number">
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
                        <i class="fa fa-calendar" aria-hidden="true"> Card Expire Month</i>
                        
                            <select required="" name="ctype" style="width:100%; height: 45px;color: #999;">
                                <option value="JAN">  JAN </option>
                                <option value="FEB"> FEB </option>
                                <option value="MAR"> MAR </option>
                                <option value="APR"> APR </option>
                                <option value="MAY"> MAY </option>
                                <option value="JUN"> JUN </option>
                                <option value="JUL"> JUL </option>
                                <option value="AUG"> AUG </option>
                                <option value="SEP"> SEP </option>
                                <option value="OCT"> OCT </option>
                                <option value="NOV"> NOV </option>
                                <option value="DEC"> DEC </option>
                            </select>
                            <div class="clearfix"></div>
                    </div>
                    
                    <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
                        <i class="fa fa-calendar" aria-hidden="true"> Card Expire Year</i>
                        
                            <select required="" name="ctype" style="width:100%; height: 45px;color: #999;">
                                <option value="2018"> 2018 </option>
                                <option value="2019"> 2019 </option>
                                <option value="2020"> 2020 </option>
                                <option value="2021"> 2021 </option>
                                <option value="2022"> 2022 </option>
                                <option value="2023"> 2023 </option>
                                <option value="2024"> 2024 </option>
                                <option value="2025"> 2025 </option>
                                <option value="2026"> 2026 </option>
                                <option value="2027"> 2027 </option>
                                <option value="2028"> 2028 </option>
                                <option value="2029"> 2029 </option>
                                <option value="2030"> 2030 </option>
                                <option value="2031"> 2031 </option>
                                <option value="2032"> 2032 </option>
                                <option value="2033"> 2033 </option>
                                <option value="2034"> 2034 </option>
                                <option value="2035"> 2035 </option>
                                <option value="2036"> 2036 </option>
                                <option value="2037"> 2037 </option>
                                <option value="2038"> 2038 </option>
                                <option value="2039"> 2039 </option>
                                <option value="2040"> 2040 </option>
                                
                                
                            </select>
                            <div class="clearfix"></div>
                    </div>
                </div>
                <br>
                <input type="submit" class="btn-block" value="Save Card">
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

