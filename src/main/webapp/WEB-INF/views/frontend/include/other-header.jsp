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
</head>


<!-- Header Start -->
<header class="">
    <div class="header-top">
        <div class="container-fluid-lg">
            <div class="row">
                <div class="col-xxl-3 d-xxl-block d-none">
                    <div class="top-left-header">
                        <i class="iconly-Location icli text-white"></i>
                        <span class="text-white">8717 Area 51, NV 89070, US</span>
                    </div>
                </div>

                <div class="col-xxl-6 col-lg-9 d-lg-block d-none">
                    <div class="header-offer">
                        <div class="notification-slider">
                            <div>
                                <div class="timer-notification">
                                    <h6><strong class="me-1">Welcome to TrendArena!</strong>Wrap new offers/gift
                                        every single day on Weekends.
                                    </h6>
                                </div>
                            </div>

                            <div>
                                <div class="timer-notification">
                                    <h6>Something you love is now on sale!
                                        <a href="${BASE_URL}" class="text-white">Buy Now
                                            !</a>
                                    </h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>

    <div class="top-nav top-header sticky-header">
        <div class="container-fluid-lg">
            <div class="row">
                <div class="col-12">
                    <div class="navbar-top">
                        <button class="navbar-toggler d-xl-none d-inline navbar-menu-button" type="button"
                                data-bs-toggle="offcanvas" data-bs-target="#primaryMenu">
                                <span class="navbar-toggler-icon">
                                    <i class="fa-solid fa-bars"></i>
                                </span>
                        </button>
                        <a href="${BASE_URL}" class="web-logo nav-logo">
                            <img src="${BASE_URL}assets/images/logo/logo.png" class="img-fluid blur-up lazyload" alt="">
                        </a>


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
            <a href="${BASE_URL}">
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
