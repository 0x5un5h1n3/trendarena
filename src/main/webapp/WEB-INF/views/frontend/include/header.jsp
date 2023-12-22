<%@ page import="org.hibernate.Session" %>
<%@ page import="com.ox5un5h1n3.web.trendarena.util.HibernateUtil" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="TrendArena">
    <meta name="keywords" content="TrendArena">
    <meta name="author" content="TrendArena">
    <link rel="icon" href="${BASE_URL}assets/images/favicon/favicon.png" type="image/x-icon">
    <title>TrendArena. | Shop with ease, anytime, anywhere</title>

    <!-- Google font -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Russo+One&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Kaushan+Script&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Exo+2:wght@400;500;600;700;800;900&display=swap"
          rel="stylesheet">
    <link
            href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
            rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Great+Vibes&family=Qwitcher+Grypen:wght@400;700&display=swap"
          rel="stylesheet">

    <!-- bootstrap css -->
    <link id="rtl-link" rel="stylesheet" type="text/css" href="${BASE_URL}assets/css/vendors/bootstrap.css">

    <!-- wow css -->
    <link rel="stylesheet" href="${BASE_URL}assets/css/animate.min.css"/>

    <!-- font-awesome css -->
    <link rel="stylesheet" type="text/css" href="${BASE_URL}assets/css/vendors/font-awesome.css">

    <!-- feather icon css -->
    <link rel="stylesheet" type="text/css" href="${BASE_URL}assets/css/vendors/feather-icon.css">

    <!-- slick css -->
    <link rel="stylesheet" type="text/css" href="${BASE_URL}assets/css/vendors/slick/slick.css">
    <link rel="stylesheet" type="text/css" href="${BASE_URL}assets/css/vendors/slick/slick-theme.css">

    <!-- Iconly css -->
    <link rel="stylesheet" type="text/css" href="${BASE_URL}assets/css/bulk-style.css">
    <link rel="stylesheet" type="text/css" href="${BASE_URL}assets/css/vendors/animate.css">

    <!-- Template css -->
    <link id="color-link" rel="stylesheet" type="text/css" href="${BASE_URL}assets/css/style.css">


<%--    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">--%>
    <!-- javscript -->
    <script
            src="https://code.jquery.com/jquery-3.5.1.min.js"
            integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
            crossorigin="anonymous"></script>
<%--    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>--%>
<%--    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>--%>

</head>


<!-- Header Start -->
<header class="pb-0 fixed-header">
    <div class="top-nav top-header">
        <div class="container-fluid-xs">
            <div class="row">
                <div class="col-12">
                    <div class="navbar-top">
                        <button class="navbar-toggler d-xl-none d-inline navbar-menu-button" type="button"
                                data-bs-toggle="offcanvas" data-bs-target="#primaryMenu">
                                <span class="navbar-toggler-icon navbar-toggler-icon-2">
                                    <i class="fa-solid fa-bars"></i>
                                </span>
                        </button>

                        <div class="middle-box">


                            <div class="search-box">
                                <div class="input-group">
                                    <input type="search" class="form-control" placeholder="I'm searching for..."
                                           aria-label="Recipient's username" aria-describedby="button-addon2">
                                    <button class="btn bg-theme" type="button" id="button-addon2">
                                        <i data-feather="search"></i>
                                    </button>
                                </div>
                            </div>
                        </div>

                        <div class="rightside-box">
                            <div class="search-full">
                                <div class="input-group">
                                        <span class="input-group-text">
                                            <i data-feather="search" class="font-light"></i>
                                        </span>
                                    <input type="text" class="form-control search-type" placeholder="Search here..">
                                    <span class="input-group-text close-search">
                                            <i data-feather="x" class="font-light"></i>
                                        </span>
                                </div>
                            </div>
                            <ul class="right-side-menu">
                                <li class="right-side">
                                    <div class="delivery-login-box">
                                        <div class="delivery-icon">
                                            <div class="search-box">
                                                <i data-feather="search"></i>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li class="right-side">
                                    <a href="${BASE_URL}contact-us" class="delivery-login-box">
                                        <div class="delivery-icon">
                                            <i data-feather="phone-call"></i>
                                        </div>
                                        <div class="delivery-detail">
                                            <h6>24/7 Delivery</h6>
                                            <h5>+123 456 7890</h5>
                                        </div>
                                    </a>
                                </li>
                                <li class="right-side">
                                    <a href="wishlist.html" class="btn p-0 position-relative header-wishlist">
                                        <i data-feather="heart"></i>
                                    </a>
                                </li>
                                <li class="right-side">
                                    <div class="onhover-dropdown header-badge">
                                        <%--                                        <a data-toggle="modal" data-target="#cart">--%>
                                        <%--                                            <button type="button" class="btn p-0 position-relative header-wishlist" id="cart" >--%>
                                        <%--                                            <i data-feather="shopping-cart"></i>--%>
                                        <%--                                            <span class="position-absolute top-0 start-100 translate-middle badge cart-items">0--%>
                                        <%--                                                    <span class="visually-hidden">unread messages</span>--%>
                                        <%--                                                </span>--%>
                                        <%--                                        </button>--%>
                                        <%--                                        </a>--%>

                                        <button type="button" class="btn p-0 position-relative header-wishlist"
                                                data-bs-toggle="modal" data-bs-target="#cart">
                                            <i data-feather="shopping-cart"></i>
                                            <span class="position-absolute top-0 start-100 translate-middle badge cart-items">0
        <span class="visually-hidden">unread messages</span>
    </span>
                                        </button>

                                        <%--                                        <div class="onhover-div">--%>
                                        <%--                                            <ul class="cart-list">--%>
                                        <%--                                                <li class="product-box-contain">--%>
                                        <%--                                                    <div class="drop-cart">--%>
                                        <%--                                                        <a href="product-left-thumbnail.html" class="drop-image">--%>
                                        <%--                                                            <img src="../assets/images/vegetable/product/1.png"--%>
                                        <%--                                                                 class="blur-up lazyload" alt="">--%>
                                        <%--                                                        </a>--%>

                                        <%--                                                        <div class="drop-contain">--%>
                                        <%--                                                            <a href="product-left-thumbnail.html">--%>
                                        <%--                                                                <h5>Fantasy Crunchy Choco Chip Cookies</h5>--%>
                                        <%--                                                            </a>--%>
                                        <%--                                                            <h6><span>1 x</span> $80.58</h6>--%>
                                        <%--                                                            <button class="close-button close_button">--%>
                                        <%--                                                                <i class="fa-solid fa-xmark"></i>--%>
                                        <%--                                                            </button>--%>
                                        <%--                                                        </div>--%>
                                        <%--                                                    </div>--%>
                                        <%--                                                </li>--%>

                                        <%--                                                <li class="product-box-contain">--%>
                                        <%--                                                    <div class="drop-cart">--%>
                                        <%--                                                        <a href="product-left-thumbnail.html" class="drop-image">--%>
                                        <%--                                                            <img src="../assets/images/vegetable/product/2.png"--%>
                                        <%--                                                                 class="blur-up lazyload" alt="">--%>
                                        <%--                                                        </a>--%>

                                        <%--                                                        <div class="drop-contain">--%>
                                        <%--                                                            <a href="product-left-thumbnail.html">--%>
                                        <%--                                                                <h5>Peanut Butter Bite Premium Butter Cookies 600 g--%>
                                        <%--                                                                </h5>--%>
                                        <%--                                                            </a>--%>
                                        <%--                                                            <h6><span>1 x</span> $25.68</h6>--%>
                                        <%--                                                            <button class="close-button close_button">--%>
                                        <%--                                                                <i class="fa-solid fa-xmark"></i>--%>
                                        <%--                                                            </button>--%>
                                        <%--                                                        </div>--%>
                                        <%--                                                    </div>--%>
                                        <%--                                                </li>--%>
                                        <%--                                            </ul>--%>

                                        <%--                                            <div class="price-box">--%>
                                        <%--                                                <h5>Total :</h5>--%>
                                        <%--                                                <h4 class="theme-color fw-bold">$106.58</h4>--%>
                                        <%--                                            </div>--%>

                                        <%--                                            <div class="button-group">--%>
                                        <%--                                                <a href="${BASE_URL}cart" class="btn btn-sm cart-button">View Cart</a>--%>
                                        <%--                                                <a href="${BASE_URL}checkout" class="btn btn-sm cart-button theme-bg-color--%>
                                        <%--                                                    text-white">Checkout</a>--%>
                                        <%--                                            </div>--%>
                                        <%--                                        </div>--%>
                                        <%--                                    </div>--%>
                                </li>


                                <li class="right-side onhover-dropdown">
                                    <div class="delivery-login-box">
                                        <div class="delivery-icon">
                                            <i data-feather="user"></i>
                                        </div>
                                        <div class="delivery-detail">
                                            <h6>Hello,</h6>
                                            <!-- Check if userName is empty -->
                                            <c:if test="${empty userName}">
                                                <h5>My Account</h5>
                                            </c:if>

                                            <!-- Display userName if it's not empty -->
                                            <c:if test="${not empty userName}">
                                                <h5>${userName}</h5>
                                            </c:if>
                                        </div>
                                    </div>


                                    <div class="onhover-div onhover-div-login">
                                        <ul class="user-box-name">
                                            <c:choose>
                                                <c:when test="${sessionScope.userLogged != null}">
                                                    <li class="product-box-contain">
                                                            <%--                                                        <i></i>--%>
                                                        <a href="${BASE_URL}logout">Logout</a></li>
                                                    <li class="product-box-contain">
                                                        <a href="${BASE_URL}forgot-password">Forgot Password</a>
                                                    </li>
                                                </c:when>
                                                <c:otherwise>
                                                    <li><a href="${BASE_URL}login">Login</a></li>
                                                    <li class="product-box-contain">
                                                        <a href="${BASE_URL}register">Register</a>
                                                    </li>
                                                    <li class="product-box-contain">
                                                        <a href="${BASE_URL}forgot-password">Forgot Password</a>
                                                    </li>
                                                </c:otherwise>
                                            </c:choose>

                                        </ul>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
<!-- Header End -->


<!-- mobile fix menu start -->
<div class="mobile-menu d-md-none d-block mobile-cart">
    <ul>
        <li class="active">
            <a href="index.html">
                <i class="iconly-Home icli"></i>
                <span>Home</span>
            </a>
        </li>

        <li class="mobile-category">
            <a href="javascript:void(0)">
                <i class="iconly-Category icli js-link"></i>
                <span>Category</span>
            </a>
        </li>

        <li>
            <a href="search.html" class="search-box">
                <i class="iconly-Search icli"></i>
                <span>Search</span>
            </a>
        </li>

        <li>
            <a href="wishlist.html" class="notifi-wishlist">
                <i class="iconly-Heart icli"></i>
                <span>My Wish</span>
            </a>
        </li>

        <li>
            <a href="cart.html">
                <i class="iconly-Bag-2 icli fly-cate"></i>
                <span>Cart</span>
            </a>
        </li>
    </ul>
</div>
<!-- mobile fix menu end -->
