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
                            <div class="location-box">
                                <button class="btn location-button" data-bs-toggle="modal"
                                        data-bs-target="#locationModal">
                                        <span class="location-arrow">
                                            <i data-feather="map-pin"></i>
                                        </span>
                                    <span class="locat-name">Your Location</span>
                                    <i class="fa-solid fa-angle-down"></i>
                                </button>
                            </div>

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
                                    <a href="contact-us.html" class="delivery-login-box">
                                        <div class="delivery-icon">
                                            <i data-feather="phone-call"></i>
                                        </div>
                                        <div class="delivery-detail">
                                            <h6>24/7 Delivery</h6>
                                            <h5>+91 888 104 2340</h5>
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
                                        <button type="button" class="btn p-0 position-relative header-wishlist">
                                            <i data-feather="shopping-cart"></i>
                                            <span class="position-absolute top-0 start-100 translate-middle badge">2
                                                    <span class="visually-hidden">unread messages</span>
                                                </span>
                                        </button>

                                        <div class="onhover-div">
                                            <ul class="cart-list">
                                                <li class="product-box-contain">
                                                    <div class="drop-cart">
                                                        <a href="product-left-thumbnail.html" class="drop-image">
                                                            <img src="../assets/images/vegetable/product/1.png"
                                                                 class="blur-up lazyload" alt="">
                                                        </a>

                                                        <div class="drop-contain">
                                                            <a href="product-left-thumbnail.html">
                                                                <h5>Fantasy Crunchy Choco Chip Cookies</h5>
                                                            </a>
                                                            <h6><span>1 x</span> $80.58</h6>
                                                            <button class="close-button close_button">
                                                                <i class="fa-solid fa-xmark"></i>
                                                            </button>
                                                        </div>
                                                    </div>
                                                </li>

                                                <li class="product-box-contain">
                                                    <div class="drop-cart">
                                                        <a href="product-left-thumbnail.html" class="drop-image">
                                                            <img src="../assets/images/vegetable/product/2.png"
                                                                 class="blur-up lazyload" alt="">
                                                        </a>

                                                        <div class="drop-contain">
                                                            <a href="product-left-thumbnail.html">
                                                                <h5>Peanut Butter Bite Premium Butter Cookies 600 g
                                                                </h5>
                                                            </a>
                                                            <h6><span>1 x</span> $25.68</h6>
                                                            <button class="close-button close_button">
                                                                <i class="fa-solid fa-xmark"></i>
                                                            </button>
                                                        </div>
                                                    </div>
                                                </li>
                                            </ul>

                                            <div class="price-box">
                                                <h5>Total :</h5>
                                                <h4 class="theme-color fw-bold">$106.58</h4>
                                            </div>

                                            <div class="button-group">
                                                <a href="cart.html" class="btn btn-sm cart-button">View Cart</a>
                                                <a href="checkout.html" class="btn btn-sm cart-button theme-bg-color
                                                    text-white">Checkout</a>
                                            </div>
                                        </div>
                                    </div>
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

<!-- Product Section Start -->
<section class="product-section pt-0">
    <div class="container-fluid p-0">
        <div class="custom-row">
            <div class="sidebar-col">
                <div class="category-menu">
                    <a href="index.html" class="web-logo nav-logo">
                        <img src="../assets/images/logo/5.png" class="img-fluid blur-up lazyload" alt="">
                    </a>
                    <ul>
                        <li>
                            <div class="category-list">
                                <img src="../assets/svg/1/vegetable.svg" class="blur-up lazyload" alt="">
                                <h5>
                                    <a href="shop-left-sidebar.html">Vegetables & Fruit</a>
                                </h5>
                            </div>
                        </li>
                        <li>
                            <div class="category-list">
                                <img src="../assets/svg/1/cup.svg" class="blur-up lazyload" alt="">
                                <h5>
                                    <a href="shop-left-sidebar.html">Beverages</a>
                                </h5>
                            </div>
                        </li>
                        <li>
                            <div class="category-list">
                                <img src="../assets/svg/1/meats.svg" class="blur-up lazyload" alt="">
                                <h5>
                                    <a href="shop-left-sidebar.html">Meats & Seafood</a>
                                </h5>
                            </div>
                        </li>
                        <li>
                            <div class="category-list">
                                <img src="../assets/svg/1/breakfast.svg" class="blur-up lazyload" alt="">
                                <h5>
                                    <a href="shop-left-sidebar.html">Breakfast & Dairy</a>
                                </h5>
                            </div>
                        </li>
                        <li>
                            <div class="category-list">
                                <img src="../assets/svg/1/frozen.svg" class="blur-up lazyload" alt="">
                                <h5>
                                    <a href="shop-left-sidebar.html">Frozen Foods</a>
                                </h5>
                            </div>
                        </li>
                        <li>
                            <div class="category-list">
                                <img src="../assets/svg/1/biscuit.svg" class="blur-up lazyload" alt="">
                                <h5>
                                    <a href="shop-left-sidebar.html">Biscuits & Snacks</a>
                                </h5>
                            </div>
                        </li>
                        <li>
                            <div class="category-list">
                                <img src="../assets/svg/1/grocery.svg" class="blur-up lazyload" alt="">
                                <h5>
                                    <a href="shop-left-sidebar.html">Grocery & Staples</a>
                                </h5>
                            </div>
                        </li>
                        <li>
                            <div class="category-list">
                                <img src="../assets/svg/1/drink.svg" class="blur-up lazyload" alt="">
                                <h5>
                                    <a href="shop-left-sidebar.html">Wines & Alcohol Drinks</a>
                                </h5>
                            </div>
                        </li>
                        <li>
                            <div class="category-list">
                                <img src="../assets/svg/1/milk.svg" class="blur-up lazyload" alt="">
                                <h5>
                                    <a href="shop-left-sidebar.html">Milk & Dairies</a>
                                </h5>
                            </div>
                        </li>
                        <li class="pb-30">
                            <div class="category-list">
                                <img src="../assets/svg/1/pet.svg" class="blur-up lazyload" alt="">
                                <h5>
                                    <a href="shop-left-sidebar.html">Pet Foods</a>
                                </h5>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>

<%--            <div class="content-col">--%>
<%--                <div class="section-b-space">--%>
<%--                    <div class="row g-md-4 g-3">--%>
<%--                        <div class="col-xxl-8 col-xl-12 col-md-7">--%>
<%--                            <div class="banner-contain hover-effect">--%>
<%--                                <img src="../assets/images/grocery/banner/11.jpg" class="bg-img blur-up lazyload"--%>
<%--                                     alt="">--%>
<%--                                <div class="banner-details p-center-left p-sm-5 p-4">--%>
<%--                                    <div>--%>
<%--                                        <h2 class="text-kaushan fw-normal orange-color">Get Ready To</h2>--%>
<%--                                        <h3 class="mt-2 mb-3 text-white">TAKE ON THE DAY!</h3>--%>
<%--                                        <p class="text-content banner-text text-white opacity-75 d-md-block d-none">--%>
<%--                                            In publishing and graphic design, Lorem ipsum is a placeholder text--%>
<%--                                            commonly used to demonstrate.</p>--%>
<%--                                        <button onclick="location.href = 'shop-left-sidebar.html';"--%>
<%--                                                class="btn btn-animation btn-sm mend-auto">Shop Now <i--%>
<%--                                                class="fa-solid fa-arrow-right icon"></i></button>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>

<%--                        <div class="col-xxl-4 col-xl-12 col-md-5">--%>
<%--                            <div class="banner-contain hover-effect h-100">--%>
<%--                                <img src="../assets/images/grocery/banner/12.jpg" class="bg-img blur-up lazyload"--%>
<%--                                     alt="">--%>
<%--                                <div class="banner-details p-center-left p-4 h-100">--%>
<%--                                    <div>--%>
<%--                                        <h2 class="text-kaushan fw-normal orange-color">Organic</h2>--%>
<%--                                        <h3 class="mt-2 mb-3">Fresh</h3>--%>
<%--                                        <p class="text-content banner-text w-100">Super Offer to 50%--%>
<%--                                            Off</p>--%>
<%--                                        <button onclick="location.href = 'shop-left-sidebar.html';"--%>
<%--                                                class="btn btn-animation btn-sm mend-auto">Shop Now <i--%>
<%--                                                class="fa-solid fa-arrow-right icon"></i></button>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>

<%--                <div class="title d-block">--%>
<%--                    <h2 class="text-theme font-sm">Food Cupboard</h2>--%>
<%--                    <p>A virtual assistant collects the products from your list</p>--%>
<%--                </div>--%>

<%--                <div--%>
<%--                        class="row row-cols-xxl-6 row-cols-lg-5 row-cols-md-4 row-cols-sm-3 row-cols-2 g-sm-4 g-3 section-b-space">--%>
<%--                    <div>--%>
<%--                        <div class="product-box product-white-bg wow fadeIn">--%>
<%--                            <div class="product-image">--%>
<%--                                <a href="product-left-thumbnail.html">--%>
<%--                                    <img src="../assets/images/cake/product/1.png"--%>
<%--                                         class="img-fluid blur-up lazyload" alt="">--%>
<%--                                </a>--%>
<%--                                <ul class="product-option">--%>
<%--                                    <li data-bs-toggle="tooltip" data-bs-placement="top" title="View">--%>
<%--                                        <a href="javascript:void(0)" data-bs-toggle="modal" data-bs-target="#view">--%>
<%--                                            <i data-feather="eye"></i>--%>
<%--                                        </a>--%>
<%--                                    </li>--%>

<%--                                    <li data-bs-toggle="tooltip" data-bs-placement="top" title="Compare">--%>
<%--                                        <a href="compare.html">--%>
<%--                                            <i data-feather="refresh-cw"></i>--%>
<%--                                        </a>--%>
<%--                                    </li>--%>

<%--                                    <li data-bs-toggle="tooltip" data-bs-placement="top" title="Wishlist">--%>
<%--                                        <a href="wishlist.html" class="notifi-wishlist">--%>
<%--                                            <i data-feather="heart"></i>--%>
<%--                                        </a>--%>
<%--                                    </li>--%>
<%--                                </ul>--%>
<%--                            </div>--%>
<%--                            <div class="product-detail position-relative">--%>
<%--                                <a href="product-left-thumbnail.html">--%>
<%--                                    <h6 class="name">--%>
<%--                                        Muffets & Tuffets Whole Wheat Bread 400 g--%>
<%--                                    </h6>--%>
<%--                                </a>--%>

<%--                                <h6 class="sold weight text-content fw-normal">1 KG</h6>--%>

<%--                                <h6 class="price theme-color">$ 80.00</h6>--%>

<%--                                <div class="add-to-cart-btn-2 addtocart_btn">--%>
<%--                                    <button class="btn addcart-button btn buy-button"><i--%>
<%--                                            class="fa-solid fa-plus"></i></button>--%>
<%--                                    <div class="cart_qty qty-box-2 qty-box-3">--%>
<%--                                        <div class="input-group">--%>
<%--                                            <button type="button" class="qty-left-minus" data-type="minus"--%>
<%--                                                    data-field="">--%>
<%--                                                <i class="fa fa-minus" aria-hidden="true"></i>--%>
<%--                                            </button>--%>
<%--                                            <input class="form-control input-number qty-input" type="text"--%>
<%--                                                   name="quantity" value="0">--%>
<%--                                            <button type="button" class="qty-right-plus" data-type="plus"--%>
<%--                                                    data-field="">--%>
<%--                                                <i class="fa fa-plus" aria-hidden="true"></i>--%>
<%--                                            </button>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>

<%--                    <div>--%>
<%--                        <div class="product-box product-white-bg wow fadeIn" data-wow-delay="0.1s">--%>
<%--                            <div class="product-image">--%>
<%--                                <a href="product-left-thumbnail.html">--%>
<%--                                    <img src="../assets/images/cake/product/2.png"--%>
<%--                                         class="img-fluid blur-up lazyload" alt="">--%>
<%--                                </a>--%>
<%--                                <ul class="product-option">--%>
<%--                                    <li data-bs-toggle="tooltip" data-bs-placement="top" title="View">--%>
<%--                                        <a href="javascript:void(0)" data-bs-toggle="modal" data-bs-target="#view">--%>
<%--                                            <i data-feather="eye"></i>--%>
<%--                                        </a>--%>
<%--                                    </li>--%>

<%--                                    <li data-bs-toggle="tooltip" data-bs-placement="top" title="Compare">--%>
<%--                                        <a href="compare.html">--%>
<%--                                            <i data-feather="refresh-cw"></i>--%>
<%--                                        </a>--%>
<%--                                    </li>--%>

<%--                                    <li data-bs-toggle="tooltip" data-bs-placement="top" title="Wishlist">--%>
<%--                                        <a href="wishlist.html" class="notifi-wishlist">--%>
<%--                                            <i data-feather="heart"></i>--%>
<%--                                        </a>--%>
<%--                                    </li>--%>
<%--                                </ul>--%>
<%--                            </div>--%>
<%--                            <div class="product-detail position-relative">--%>
<%--                                <a href="product-left-thumbnail.html">--%>
<%--                                    <h6 class="name">--%>
<%--                                        Fresh Bread and Pastry Flour 200 g--%>
<%--                                    </h6>--%>
<%--                                </a>--%>

<%--                                <h6 class="sold weight text-content fw-normal">1 KG</h6>--%>

<%--                                <h6 class="price theme-color">$ 80.00</h6>--%>

<%--                                <div class="add-to-cart-btn-2 addtocart_btn">--%>
<%--                                    <button class="btn addcart-button btn buy-button"><i--%>
<%--                                            class="fa-solid fa-plus"></i></button>--%>
<%--                                    <div class="cart_qty qty-box-2 qty-box-3">--%>
<%--                                        <div class="input-group">--%>
<%--                                            <button type="button" class="qty-left-minus" data-type="minus"--%>
<%--                                                    data-field="">--%>
<%--                                                <i class="fa fa-minus" aria-hidden="true"></i>--%>
<%--                                            </button>--%>
<%--                                            <input class="form-control input-number qty-input" type="text"--%>
<%--                                                   name="quantity" value="0">--%>
<%--                                            <button type="button" class="qty-right-plus" data-type="plus"--%>
<%--                                                    data-field="">--%>
<%--                                                <i class="fa fa-plus" aria-hidden="true"></i>--%>
<%--                                            </button>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>

<%--                    <div>--%>
<%--                        <div class="product-box product-white-bg wow fadeIn">--%>
<%--                            <div class="product-image">--%>
<%--                                <a href="product-left-thumbnail.html">--%>
<%--                                    <img src="../assets/images/cake/product/3.png"--%>
<%--                                         class="img-fluid blur-up lazyload" alt="">--%>
<%--                                </a>--%>
<%--                                <ul class="product-option">--%>
<%--                                    <li data-bs-toggle="tooltip" data-bs-placement="top" title="View">--%>
<%--                                        <a href="javascript:void(0)" data-bs-toggle="modal" data-bs-target="#view">--%>
<%--                                            <i data-feather="eye"></i>--%>
<%--                                        </a>--%>
<%--                                    </li>--%>

<%--                                    <li data-bs-toggle="tooltip" data-bs-placement="top" title="Compare">--%>
<%--                                        <a href="compare.html">--%>
<%--                                            <i data-feather="refresh-cw"></i>--%>
<%--                                        </a>--%>
<%--                                    </li>--%>

<%--                                    <li data-bs-toggle="tooltip" data-bs-placement="top" title="Wishlist">--%>
<%--                                        <a href="wishlist.html" class="notifi-wishlist">--%>
<%--                                            <i data-feather="heart"></i>--%>
<%--                                        </a>--%>
<%--                                    </li>--%>
<%--                                </ul>--%>
<%--                            </div>--%>
<%--                            <div class="product-detail position-relative">--%>
<%--                                <a href="product-left-thumbnail.html">--%>
<%--                                    <h6 class="name">--%>
<%--                                        Peanut Butter Bite Premium Butter Cookies 600 g--%>
<%--                                    </h6>--%>
<%--                                </a>--%>

<%--                                <h6 class="sold weight text-content fw-normal">1 KG</h6>--%>

<%--                                <h6 class="price theme-color">$ 80.00</h6>--%>

<%--                                <div class="add-to-cart-btn-2 addtocart_btn">--%>
<%--                                    <button class="btn addcart-button btn buy-button"><i--%>
<%--                                            class="fa-solid fa-plus"></i></button>--%>
<%--                                    <div class="cart_qty qty-box-2 qty-box-3">--%>
<%--                                        <div class="input-group">--%>
<%--                                            <button type="button" class="qty-left-minus" data-type="minus"--%>
<%--                                                    data-field="">--%>
<%--                                                <i class="fa fa-minus" aria-hidden="true"></i>--%>
<%--                                            </button>--%>
<%--                                            <input class="form-control input-number qty-input" type="text"--%>
<%--                                                   name="quantity" value="0">--%>
<%--                                            <button type="button" class="qty-right-plus" data-type="plus"--%>
<%--                                                    data-field="">--%>
<%--                                                <i class="fa fa-plus" aria-hidden="true"></i>--%>
<%--                                            </button>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>

<%--                    <div>--%>
<%--                        <div class="product-box product-white-bg wow fadeIn" data-wow-delay="0.1s">--%>
<%--                            <div class="product-image">--%>
<%--                                <a href="product-left-thumbnail.html">--%>
<%--                                    <img src="../assets/images/cake/product/4.png"--%>
<%--                                         class="img-fluid blur-up lazyload" alt="">--%>
<%--                                </a>--%>
<%--                                <ul class="product-option">--%>
<%--                                    <li data-bs-toggle="tooltip" data-bs-placement="top" title="View">--%>
<%--                                        <a href="javascript:void(0)" data-bs-toggle="modal" data-bs-target="#view">--%>
<%--                                            <i data-feather="eye"></i>--%>
<%--                                        </a>--%>
<%--                                    </li>--%>

<%--                                    <li data-bs-toggle="tooltip" data-bs-placement="top" title="Compare">--%>
<%--                                        <a href="compare.html">--%>
<%--                                            <i data-feather="refresh-cw"></i>--%>
<%--                                        </a>--%>
<%--                                    </li>--%>

<%--                                    <li data-bs-toggle="tooltip" data-bs-placement="top" title="Wishlist">--%>
<%--                                        <a href="wishlist.html" class="notifi-wishlist">--%>
<%--                                            <i data-feather="heart"></i>--%>
<%--                                        </a>--%>
<%--                                    </li>--%>
<%--                                </ul>--%>
<%--                            </div>--%>
<%--                            <div class="product-detail position-relative">--%>
<%--                                <a href="product-left-thumbnail.html">--%>
<%--                                    <h6 class="name">--%>
<%--                                        SnackAmor Combo Pack of Jowar Stick and Jowar Chips--%>
<%--                                    </h6>--%>
<%--                                </a>--%>

<%--                                <h6 class="sold weight text-content fw-normal">1 KG</h6>--%>

<%--                                <h6 class="price theme-color">$ 80.00</h6>--%>

<%--                                <div class="add-to-cart-btn-2 addtocart_btn">--%>
<%--                                    <button class="btn addcart-button btn buy-button"><i--%>
<%--                                            class="fa-solid fa-plus"></i></button>--%>
<%--                                    <div class="cart_qty qty-box-2 qty-box-3">--%>
<%--                                        <div class="input-group">--%>
<%--                                            <button type="button" class="qty-left-minus" data-type="minus"--%>
<%--                                                    data-field="">--%>
<%--                                                <i class="fa fa-minus" aria-hidden="true"></i>--%>
<%--                                            </button>--%>
<%--                                            <input class="form-control input-number qty-input" type="text"--%>
<%--                                                   name="quantity" value="0">--%>
<%--                                            <button type="button" class="qty-right-plus" data-type="plus"--%>
<%--                                                    data-field="">--%>
<%--                                                <i class="fa fa-plus" aria-hidden="true"></i>--%>
<%--                                            </button>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>

<%--                    <div>--%>
<%--                        <div class="product-box product-white-bg wow fadeIn">--%>
<%--                            <div class="product-image">--%>
<%--                                <a href="product-left-thumbnail.html">--%>
<%--                                    <img src="../assets/images/cake/product/5.png"--%>
<%--                                         class="img-fluid blur-up lazyload" alt="">--%>
<%--                                </a>--%>
<%--                                <ul class="product-option">--%>
<%--                                    <li data-bs-toggle="tooltip" data-bs-placement="top" title="View">--%>
<%--                                        <a href="javascript:void(0)" data-bs-toggle="modal" data-bs-target="#view">--%>
<%--                                            <i data-feather="eye"></i>--%>
<%--                                        </a>--%>
<%--                                    </li>--%>

<%--                                    <li data-bs-toggle="tooltip" data-bs-placement="top" title="Compare">--%>
<%--                                        <a href="compare.html">--%>
<%--                                            <i data-feather="refresh-cw"></i>--%>
<%--                                        </a>--%>
<%--                                    </li>--%>

<%--                                    <li data-bs-toggle="tooltip" data-bs-placement="top" title="Wishlist">--%>
<%--                                        <a href="wishlist.html" class="notifi-wishlist">--%>
<%--                                            <i data-feather="heart"></i>--%>
<%--                                        </a>--%>
<%--                                    </li>--%>
<%--                                </ul>--%>
<%--                            </div>--%>
<%--                            <div class="product-detail position-relative">--%>
<%--                                <a href="product-left-thumbnail.html">--%>
<%--                                    <h6 class="name">--%>
<%--                                        Yumitos Chilli Sprinkled Potato Chips 100 g--%>
<%--                                    </h6>--%>
<%--                                </a>--%>

<%--                                <h6 class="sold weight text-content fw-normal">1 KG</h6>--%>

<%--                                <h6 class="price theme-color">$ 80.00</h6>--%>

<%--                                <div class="add-to-cart-btn-2 addtocart_btn">--%>
<%--                                    <button class="btn addcart-button btn buy-button"><i--%>
<%--                                            class="fa-solid fa-plus"></i></button>--%>
<%--                                    <div class="cart_qty qty-box-2 qty-box-3">--%>
<%--                                        <div class="input-group">--%>
<%--                                            <button type="button" class="qty-left-minus" data-type="minus"--%>
<%--                                                    data-field="">--%>
<%--                                                <i class="fa fa-minus" aria-hidden="true"></i>--%>
<%--                                            </button>--%>
<%--                                            <input class="form-control input-number qty-input" type="text"--%>
<%--                                                   name="quantity" value="0">--%>
<%--                                            <button type="button" class="qty-right-plus" data-type="plus"--%>
<%--                                                    data-field="">--%>
<%--                                                <i class="fa fa-plus" aria-hidden="true"></i>--%>
<%--                                            </button>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>

<%--                    <div>--%>
<%--                        <div class="product-box product-white-bg wow fadeIn" data-wow-delay="0.1s">--%>
<%--                            <div class="product-image">--%>
<%--                                <a href="product-left-thumbnail.html">--%>
<%--                                    <img src="../assets/images/cake/product/6.png"--%>
<%--                                         class="img-fluid blur-up lazyload" alt="">--%>
<%--                                </a>--%>
<%--                                <ul class="product-option">--%>
<%--                                    <li data-bs-toggle="tooltip" data-bs-placement="top" title="View">--%>
<%--                                        <a href="javascript:void(0)" data-bs-toggle="modal" data-bs-target="#view">--%>
<%--                                            <i data-feather="eye"></i>--%>
<%--                                        </a>--%>
<%--                                    </li>--%>

<%--                                    <li data-bs-toggle="tooltip" data-bs-placement="top" title="Compare">--%>
<%--                                        <a href="compare.html">--%>
<%--                                            <i data-feather="refresh-cw"></i>--%>
<%--                                        </a>--%>
<%--                                    </li>--%>

<%--                                    <li data-bs-toggle="tooltip" data-bs-placement="top" title="Wishlist">--%>
<%--                                        <a href="wishlist.html" class="notifi-wishlist">--%>
<%--                                            <i data-feather="heart"></i>--%>
<%--                                        </a>--%>
<%--                                    </li>--%>
<%--                                </ul>--%>
<%--                            </div>--%>
<%--                            <div class="product-detail position-relative">--%>
<%--                                <a href="product-left-thumbnail.html">--%>
<%--                                    <h6 class="name">--%>
<%--                                        Fantasy Crunchy Choco Chip Cookies--%>
<%--                                    </h6>--%>
<%--                                </a>--%>

<%--                                <h6 class="sold weight text-content fw-normal">1 KG</h6>--%>

<%--                                <h6 class="price theme-color">$ 80.00</h6>--%>

<%--                                <div class="add-to-cart-btn-2 addtocart_btn">--%>
<%--                                    <button class="btn addcart-button btn buy-button"><i--%>
<%--                                            class="fa-solid fa-plus"></i></button>--%>
<%--                                    <div class="cart_qty qty-box-2 qty-box-3">--%>
<%--                                        <div class="input-group">--%>
<%--                                            <button type="button" class="qty-left-minus" data-type="minus"--%>
<%--                                                    data-field="">--%>
<%--                                                <i class="fa fa-minus" aria-hidden="true"></i>--%>
<%--                                            </button>--%>
<%--                                            <input class="form-control input-number qty-input" type="text"--%>
<%--                                                   name="quantity" value="0">--%>
<%--                                            <button type="button" class="qty-right-plus" data-type="plus"--%>
<%--                                                    data-field="">--%>
<%--                                                <i class="fa fa-plus" aria-hidden="true"></i>--%>
<%--                                            </button>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>

<%--                    <div>--%>
<%--                        <div class="product-box product-white-bg wow fadeIn">--%>
<%--                            <div class="product-image">--%>
<%--                                <a href="product-left-thumbnail.html">--%>
<%--                                    <img src="../assets/images/cake/product/7.png"--%>
<%--                                         class="img-fluid blur-up lazyload" alt="">--%>
<%--                                </a>--%>
<%--                                <ul class="product-option">--%>
<%--                                    <li data-bs-toggle="tooltip" data-bs-placement="top" title="View">--%>
<%--                                        <a href="javascript:void(0)" data-bs-toggle="modal" data-bs-target="#view">--%>
<%--                                            <i data-feather="eye"></i>--%>
<%--                                        </a>--%>
<%--                                    </li>--%>

<%--                                    <li data-bs-toggle="tooltip" data-bs-placement="top" title="Compare">--%>
<%--                                        <a href="compare.html">--%>
<%--                                            <i data-feather="refresh-cw"></i>--%>
<%--                                        </a>--%>
<%--                                    </li>--%>

<%--                                    <li data-bs-toggle="tooltip" data-bs-placement="top" title="Wishlist">--%>
<%--                                        <a href="wishlist.html" class="notifi-wishlist">--%>
<%--                                            <i data-feather="heart"></i>--%>
<%--                                        </a>--%>
<%--                                    </li>--%>
<%--                                </ul>--%>
<%--                            </div>--%>
<%--                            <div class="product-detail position-relative">--%>
<%--                                <a href="product-left-thumbnail.html">--%>
<%--                                    <h6 class="name">--%>
<%--                                        Fresh Bread and Pastry Flour 200 g--%>
<%--                                    </h6>--%>
<%--                                </a>--%>

<%--                                <h6 class="sold weight text-content fw-normal">1 KG</h6>--%>

<%--                                <h6 class="price theme-color">$ 80.00</h6>--%>

<%--                                <div class="add-to-cart-btn-2 addtocart_btn">--%>
<%--                                    <button class="btn addcart-button btn buy-button"><i--%>
<%--                                            class="fa-solid fa-plus"></i></button>--%>
<%--                                    <div class="cart_qty qty-box-2 qty-box-3">--%>
<%--                                        <div class="input-group">--%>
<%--                                            <button type="button" class="qty-left-minus" data-type="minus"--%>
<%--                                                    data-field="">--%>
<%--                                                <i class="fa fa-minus" aria-hidden="true"></i>--%>
<%--                                            </button>--%>
<%--                                            <input class="form-control input-number qty-input" type="text"--%>
<%--                                                   name="quantity" value="0">--%>
<%--                                            <button type="button" class="qty-right-plus" data-type="plus"--%>
<%--                                                    data-field="">--%>
<%--                                                <i class="fa fa-plus" aria-hidden="true"></i>--%>
<%--                                            </button>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>

<%--                    <div>--%>
<%--                        <div class="product-box product-white-bg wow fadeIn" data-wow-delay="0.1s">--%>
<%--                            <div class="product-image">--%>
<%--                                <a href="product-left-thumbnail.html">--%>
<%--                                    <img src="../assets/images/cake/product/8.png"--%>
<%--                                         class="img-fluid blur-up lazyload" alt="">--%>
<%--                                </a>--%>
<%--                                <ul class="product-option">--%>
<%--                                    <li data-bs-toggle="tooltip" data-bs-placement="top" title="View">--%>
<%--                                        <a href="javascript:void(0)" data-bs-toggle="modal" data-bs-target="#view">--%>
<%--                                            <i data-feather="eye"></i>--%>
<%--                                        </a>--%>
<%--                                    </li>--%>

<%--                                    <li data-bs-toggle="tooltip" data-bs-placement="top" title="Compare">--%>
<%--                                        <a href="compare.html">--%>
<%--                                            <i data-feather="refresh-cw"></i>--%>
<%--                                        </a>--%>
<%--                                    </li>--%>

<%--                                    <li data-bs-toggle="tooltip" data-bs-placement="top" title="Wishlist">--%>
<%--                                        <a href="wishlist.html" class="notifi-wishlist">--%>
<%--                                            <i data-feather="heart"></i>--%>
<%--                                        </a>--%>
<%--                                    </li>--%>
<%--                                </ul>--%>
<%--                            </div>--%>
<%--                            <div class="product-detail position-relative">--%>
<%--                                <a href="product-left-thumbnail.html">--%>
<%--                                    <h6 class="name">--%>
<%--                                        Milky Silicone Heart Chocolate Mould ( Pack of 1 )--%>
<%--                                    </h6>--%>
<%--                                </a>--%>

<%--                                <h6 class="sold weight text-content fw-normal">1 KG</h6>--%>

<%--                                <h6 class="price theme-color">$ 80.00</h6>--%>

<%--                                <div class="add-to-cart-btn-2 addtocart_btn">--%>
<%--                                    <button class="btn addcart-button btn buy-button"><i--%>
<%--                                            class="fa-solid fa-plus"></i></button>--%>
<%--                                    <div class="cart_qty qty-box-2 qty-box-3">--%>
<%--                                        <div class="input-group">--%>
<%--                                            <button type="button" class="qty-left-minus" data-type="minus"--%>
<%--                                                    data-field="">--%>
<%--                                                <i class="fa fa-minus" aria-hidden="true"></i>--%>
<%--                                            </button>--%>
<%--                                            <input class="form-control input-number qty-input" type="text"--%>
<%--                                                   name="quantity" value="0">--%>
<%--                                            <button type="button" class="qty-right-plus" data-type="plus"--%>
<%--                                                    data-field="">--%>
<%--                                                <i class="fa fa-plus" aria-hidden="true"></i>--%>
<%--                                            </button>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>

<%--                    <div>--%>
<%--                        <div class="product-box product-white-bg wow fadeIn">--%>
<%--                            <div class="product-image">--%>
<%--                                <a href="product-left-thumbnail.html">--%>
<%--                                    <img src="../assets/images/cake/product/9.png"--%>
<%--                                         class="img-fluid blur-up lazyload" alt="">--%>
<%--                                </a>--%>
<%--                                <ul class="product-option">--%>
<%--                                    <li data-bs-toggle="tooltip" data-bs-placement="top" title="View">--%>
<%--                                        <a href="javascript:void(0)" data-bs-toggle="modal" data-bs-target="#view">--%>
<%--                                            <i data-feather="eye"></i>--%>
<%--                                        </a>--%>
<%--                                    </li>--%>

<%--                                    <li data-bs-toggle="tooltip" data-bs-placement="top" title="Compare">--%>
<%--                                        <a href="compare.html">--%>
<%--                                            <i data-feather="refresh-cw"></i>--%>
<%--                                        </a>--%>
<%--                                    </li>--%>

<%--                                    <li data-bs-toggle="tooltip" data-bs-placement="top" title="Wishlist">--%>
<%--                                        <a href="wishlist.html" class="notifi-wishlist">--%>
<%--                                            <i data-feather="heart"></i>--%>
<%--                                        </a>--%>
<%--                                    </li>--%>
<%--                                </ul>--%>
<%--                            </div>--%>
<%--                            <div class="product-detail position-relative">--%>
<%--                                <a href="product-left-thumbnail.html">--%>
<%--                                    <h6 class="name">chocolate-chip-cookies 250 g</h6>--%>
<%--                                </a>--%>

<%--                                <h6 class="sold weight text-content fw-normal">1 KG</h6>--%>

<%--                                <h6 class="price theme-color">$ 80.00</h6>--%>

<%--                                <div class="add-to-cart-btn-2 addtocart_btn">--%>
<%--                                    <button class="btn addcart-button btn buy-button"><i--%>
<%--                                            class="fa-solid fa-plus"></i></button>--%>
<%--                                    <div class="cart_qty qty-box-2 qty-box-3">--%>
<%--                                        <div class="input-group">--%>
<%--                                            <button type="button" class="qty-left-minus" data-type="minus"--%>
<%--                                                    data-field="">--%>
<%--                                                <i class="fa fa-minus" aria-hidden="true"></i>--%>
<%--                                            </button>--%>
<%--                                            <input class="form-control input-number qty-input" type="text"--%>
<%--                                                   name="quantity" value="0">--%>
<%--                                            <button type="button" class="qty-right-plus" data-type="plus"--%>
<%--                                                    data-field="">--%>
<%--                                                <i class="fa fa-plus" aria-hidden="true"></i>--%>
<%--                                            </button>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>

<%--                    <div>--%>
<%--                        <div class="product-box product-white-bg wow fadeIn" data-wow-delay="0.1s">--%>
<%--                            <div class="product-image">--%>
<%--                                <a href="product-left-thumbnail.html">--%>
<%--                                    <img src="../assets/images/cake/product/10.png"--%>
<%--                                         class="img-fluid blur-up lazyload" alt="">--%>
<%--                                </a>--%>
<%--                                <ul class="product-option">--%>
<%--                                    <li data-bs-toggle="tooltip" data-bs-placement="top" title="View">--%>
<%--                                        <a href="javascript:void(0)" data-bs-toggle="modal" data-bs-target="#view">--%>
<%--                                            <i data-feather="eye"></i>--%>
<%--                                        </a>--%>
<%--                                    </li>--%>

<%--                                    <li data-bs-toggle="tooltip" data-bs-placement="top" title="Compare">--%>
<%--                                        <a href="compare.html">--%>
<%--                                            <i data-feather="refresh-cw"></i>--%>
<%--                                        </a>--%>
<%--                                    </li>--%>

<%--                                    <li data-bs-toggle="tooltip" data-bs-placement="top" title="Wishlist">--%>
<%--                                        <a href="wishlist.html" class="notifi-wishlist">--%>
<%--                                            <i data-feather="heart"></i>--%>
<%--                                        </a>--%>
<%--                                    </li>--%>
<%--                                </ul>--%>
<%--                            </div>--%>
<%--                            <div class="product-detail position-relative">--%>
<%--                                <a href="product-left-thumbnail.html">--%>
<%--                                    <h6 class="name">--%>
<%--                                        Cupcake Holder for Birthday and Wedding Party 100 g--%>
<%--                                    </h6>--%>
<%--                                </a>--%>

<%--                                <h6 class="sold weight text-content fw-normal">1 KG</h6>--%>

<%--                                <h6 class="price theme-color">$ 80.00</h6>--%>

<%--                                <div class="add-to-cart-btn-2 addtocart_btn">--%>
<%--                                    <button class="btn addcart-button btn buy-button"><i--%>
<%--                                            class="fa-solid fa-plus"></i></button>--%>
<%--                                    <div class="cart_qty qty-box-2 qty-box-3">--%>
<%--                                        <div class="input-group">--%>
<%--                                            <button type="button" class="qty-left-minus" data-type="minus"--%>
<%--                                                    data-field="">--%>
<%--                                                <i class="fa fa-minus" aria-hidden="true"></i>--%>
<%--                                            </button>--%>
<%--                                            <input class="form-control input-number qty-input" type="text"--%>
<%--                                                   name="quantity" value="0">--%>
<%--                                            <button type="button" class="qty-right-plus" data-type="plus"--%>
<%--                                                    data-field="">--%>
<%--                                                <i class="fa fa-plus" aria-hidden="true"></i>--%>
<%--                                            </button>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>

<%--                    <div>--%>
<%--                        <div class="product-box product-white-bg wow fadeIn">--%>
<%--                            <div class="product-image">--%>
<%--                                <a href="product-left-thumbnail.html">--%>
<%--                                    <img src="../assets/images/cake/product/5.png"--%>
<%--                                         class="img-fluid blur-up lazyload" alt="">--%>
<%--                                </a>--%>
<%--                                <ul class="product-option">--%>
<%--                                    <li data-bs-toggle="tooltip" data-bs-placement="top" title="View">--%>
<%--                                        <a href="javascript:void(0)" data-bs-toggle="modal" data-bs-target="#view">--%>
<%--                                            <i data-feather="eye"></i>--%>
<%--                                        </a>--%>
<%--                                    </li>--%>

<%--                                    <li data-bs-toggle="tooltip" data-bs-placement="top" title="Compare">--%>
<%--                                        <a href="compare.html">--%>
<%--                                            <i data-feather="refresh-cw"></i>--%>
<%--                                        </a>--%>
<%--                                    </li>--%>

<%--                                    <li data-bs-toggle="tooltip" data-bs-placement="top" title="Wishlist">--%>
<%--                                        <a href="wishlist.html" class="notifi-wishlist">--%>
<%--                                            <i data-feather="heart"></i>--%>
<%--                                        </a>--%>
<%--                                    </li>--%>
<%--                                </ul>--%>
<%--                            </div>--%>
<%--                            <div class="product-detail position-relative">--%>
<%--                                <a href="product-left-thumbnail.html">--%>
<%--                                    <h6 class="name">--%>
<%--                                        Yumitos Chilli Sprinkled Potato Chips 100 g--%>
<%--                                    </h6>--%>
<%--                                </a>--%>

<%--                                <h6 class="sold weight text-content fw-normal">1 KG</h6>--%>

<%--                                <h6 class="price theme-color">$ 80.00</h6>--%>

<%--                                <div class="add-to-cart-btn-2 addtocart_btn">--%>
<%--                                    <button class="btn addcart-button btn buy-button"><i--%>
<%--                                            class="fa-solid fa-plus"></i></button>--%>
<%--                                    <div class="cart_qty qty-box-2 qty-box-3">--%>
<%--                                        <div class="input-group">--%>
<%--                                            <button type="button" class="qty-left-minus" data-type="minus"--%>
<%--                                                    data-field="">--%>
<%--                                                <i class="fa fa-minus" aria-hidden="true"></i>--%>
<%--                                            </button>--%>
<%--                                            <input class="form-control input-number qty-input" type="text"--%>
<%--                                                   name="quantity" value="0">--%>
<%--                                            <button type="button" class="qty-right-plus" data-type="plus"--%>
<%--                                                    data-field="">--%>
<%--                                                <i class="fa fa-plus" aria-hidden="true"></i>--%>
<%--                                            </button>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>

<%--                    <div>--%>
<%--                        <div class="product-box product-white-bg wow fadeIn" data-wow-delay="0.1s">--%>
<%--                            <div class="product-image">--%>
<%--                                <a href="product-left-thumbnail.html">--%>
<%--                                    <img src="../assets/images/cake/product/6.png"--%>
<%--                                         class="img-fluid blur-up lazyload" alt="">--%>
<%--                                </a>--%>
<%--                                <ul class="product-option">--%>
<%--                                    <li data-bs-toggle="tooltip" data-bs-placement="top" title="View">--%>
<%--                                        <a href="javascript:void(0)" data-bs-toggle="modal" data-bs-target="#view">--%>
<%--                                            <i data-feather="eye"></i>--%>
<%--                                        </a>--%>
<%--                                    </li>--%>

<%--                                    <li data-bs-toggle="tooltip" data-bs-placement="top" title="Compare">--%>
<%--                                        <a href="compare.html">--%>
<%--                                            <i data-feather="refresh-cw"></i>--%>
<%--                                        </a>--%>
<%--                                    </li>--%>

<%--                                    <li data-bs-toggle="tooltip" data-bs-placement="top" title="Wishlist">--%>
<%--                                        <a href="wishlist.html" class="notifi-wishlist">--%>
<%--                                            <i data-feather="heart"></i>--%>
<%--                                        </a>--%>
<%--                                    </li>--%>
<%--                                </ul>--%>
<%--                            </div>--%>
<%--                            <div class="product-detail position-relative">--%>
<%--                                <a href="product-left-thumbnail.html">--%>
<%--                                    <h6 class="name">--%>
<%--                                        Fantasy Crunchy Choco Chip Cookies--%>
<%--                                    </h6>--%>
<%--                                </a>--%>

<%--                                <h6 class="sold weight text-content fw-normal">1 KG</h6>--%>

<%--                                <h6 class="price theme-color">$ 80.00</h6>--%>

<%--                                <div class="add-to-cart-btn-2 addtocart_btn">--%>
<%--                                    <button class="btn addcart-button btn buy-button"><i--%>
<%--                                            class="fa-solid fa-plus"></i></button>--%>
<%--                                    <div class="cart_qty qty-box-2 qty-box-3">--%>
<%--                                        <div class="input-group">--%>
<%--                                            <button type="button" class="qty-left-minus" data-type="minus"--%>
<%--                                                    data-field="">--%>
<%--                                                <i class="fa fa-minus" aria-hidden="true"></i>--%>
<%--                                            </button>--%>
<%--                                            <input class="form-control input-number qty-input" type="text"--%>
<%--                                                   name="quantity" value="0">--%>
<%--                                            <button type="button" class="qty-right-plus" data-type="plus"--%>
<%--                                                    data-field="">--%>
<%--                                                <i class="fa fa-plus" aria-hidden="true"></i>--%>
<%--                                            </button>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>

<%--                <div class="title d-block">--%>
<%--                    <h2 class="text-theme font-sm">Food Cupboard</h2>--%>
<%--                    <p>A virtual assistant collects the products from your list</p>--%>
<%--                </div>--%>

<%--                <div--%>
<%--                        class="row row-cols-xxl-6 row-cols-lg-5 row-cols-md-4 row-cols-sm-3 row-cols-2 g-sm-4 g-3 section-b-space">--%>
<%--                    <div>--%>
<%--                        <div class="product-box product-white-bg wow fadeIn">--%>
<%--                            <div class="product-image">--%>
<%--                                <a href="product-left-thumbnail.html">--%>
<%--                                    <img src="../assets/images/cake/product/1.png"--%>
<%--                                         class="img-fluid blur-up lazyload" alt="">--%>
<%--                                </a>--%>
<%--                                <ul class="product-option">--%>
<%--                                    <li data-bs-toggle="tooltip" data-bs-placement="top" title="View">--%>
<%--                                        <a href="javascript:void(0)" data-bs-toggle="modal" data-bs-target="#view">--%>
<%--                                            <i data-feather="eye"></i>--%>
<%--                                        </a>--%>
<%--                                    </li>--%>

<%--                                    <li data-bs-toggle="tooltip" data-bs-placement="top" title="Compare">--%>
<%--                                        <a href="compare.html">--%>
<%--                                            <i data-feather="refresh-cw"></i>--%>
<%--                                        </a>--%>
<%--                                    </li>--%>

<%--                                    <li data-bs-toggle="tooltip" data-bs-placement="top" title="Wishlist">--%>
<%--                                        <a href="wishlist.html" class="notifi-wishlist">--%>
<%--                                            <i data-feather="heart"></i>--%>
<%--                                        </a>--%>
<%--                                    </li>--%>
<%--                                </ul>--%>
<%--                            </div>--%>
<%--                            <div class="product-detail position-relative">--%>
<%--                                <a href="product-left-thumbnail.html">--%>
<%--                                    <h6 class="name">--%>
<%--                                        Muffets & Tuffets Whole Wheat Bread 400 g--%>
<%--                                    </h6>--%>
<%--                                </a>--%>

<%--                                <h6 class="sold weight text-content fw-normal">1 KG</h6>--%>

<%--                                <h6 class="price theme-color">$ 80.00</h6>--%>

<%--                                <div class="add-to-cart-btn-2 addtocart_btn">--%>
<%--                                    <button class="btn addcart-button btn buy-button"><i--%>
<%--                                            class="fa-solid fa-plus"></i></button>--%>
<%--                                    <div class="cart_qty qty-box-2 qty-box-3">--%>
<%--                                        <div class="input-group">--%>
<%--                                            <button type="button" class="qty-left-minus" data-type="minus"--%>
<%--                                                    data-field="">--%>
<%--                                                <i class="fa fa-minus" aria-hidden="true"></i>--%>
<%--                                            </button>--%>
<%--                                            <input class="form-control input-number qty-input" type="text"--%>
<%--                                                   name="quantity" value="0">--%>
<%--                                            <button type="button" class="qty-right-plus" data-type="plus"--%>
<%--                                                    data-field="">--%>
<%--                                                <i class="fa fa-plus" aria-hidden="true"></i>--%>
<%--                                            </button>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>

<%--                    <div>--%>
<%--                        <div class="product-box product-white-bg wow fadeIn" data-wow-delay="0.1s">--%>
<%--                            <div class="product-image">--%>
<%--                                <a href="product-left-thumbnail.html">--%>
<%--                                    <img src="../assets/images/cake/product/2.png"--%>
<%--                                         class="img-fluid blur-up lazyload" alt="">--%>
<%--                                </a>--%>
<%--                                <ul class="product-option">--%>
<%--                                    <li data-bs-toggle="tooltip" data-bs-placement="top" title="View">--%>
<%--                                        <a href="javascript:void(0)" data-bs-toggle="modal" data-bs-target="#view">--%>
<%--                                            <i data-feather="eye"></i>--%>
<%--                                        </a>--%>
<%--                                    </li>--%>

<%--                                    <li data-bs-toggle="tooltip" data-bs-placement="top" title="Compare">--%>
<%--                                        <a href="compare.html">--%>
<%--                                            <i data-feather="refresh-cw"></i>--%>
<%--                                        </a>--%>
<%--                                    </li>--%>

<%--                                    <li data-bs-toggle="tooltip" data-bs-placement="top" title="Wishlist">--%>
<%--                                        <a href="wishlist.html" class="notifi-wishlist">--%>
<%--                                            <i data-feather="heart"></i>--%>
<%--                                        </a>--%>
<%--                                    </li>--%>
<%--                                </ul>--%>
<%--                            </div>--%>
<%--                            <div class="product-detail position-relative">--%>
<%--                                <a href="product-left-thumbnail.html">--%>
<%--                                    <h6 class="name">--%>
<%--                                        Fresh Bread and Pastry Flour 200 g--%>
<%--                                    </h6>--%>
<%--                                </a>--%>

<%--                                <h6 class="sold weight text-content fw-normal">1 KG</h6>--%>

<%--                                <h6 class="price theme-color">$ 80.00</h6>--%>

<%--                                <div class="add-to-cart-btn-2 addtocart_btn">--%>
<%--                                    <button class="btn addcart-button btn buy-button"><i--%>
<%--                                            class="fa-solid fa-plus"></i></button>--%>
<%--                                    <div class="cart_qty qty-box-2 qty-box-3">--%>
<%--                                        <div class="input-group">--%>
<%--                                            <button type="button" class="qty-left-minus" data-type="minus"--%>
<%--                                                    data-field="">--%>
<%--                                                <i class="fa fa-minus" aria-hidden="true"></i>--%>
<%--                                            </button>--%>
<%--                                            <input class="form-control input-number qty-input" type="text"--%>
<%--                                                   name="quantity" value="0">--%>
<%--                                            <button type="button" class="qty-right-plus" data-type="plus"--%>
<%--                                                    data-field="">--%>
<%--                                                <i class="fa fa-plus" aria-hidden="true"></i>--%>
<%--                                            </button>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>

<%--                    <div>--%>
<%--                        <div class="product-box product-white-bg wow fadeIn">--%>
<%--                            <div class="product-image">--%>
<%--                                <a href="product-left-thumbnail.html">--%>
<%--                                    <img src="../assets/images/cake/product/3.png"--%>
<%--                                         class="img-fluid blur-up lazyload" alt="">--%>
<%--                                </a>--%>
<%--                                <ul class="product-option">--%>
<%--                                    <li data-bs-toggle="tooltip" data-bs-placement="top" title="View">--%>
<%--                                        <a href="javascript:void(0)" data-bs-toggle="modal" data-bs-target="#view">--%>
<%--                                            <i data-feather="eye"></i>--%>
<%--                                        </a>--%>
<%--                                    </li>--%>

<%--                                    <li data-bs-toggle="tooltip" data-bs-placement="top" title="Compare">--%>
<%--                                        <a href="compare.html">--%>
<%--                                            <i data-feather="refresh-cw"></i>--%>
<%--                                        </a>--%>
<%--                                    </li>--%>

<%--                                    <li data-bs-toggle="tooltip" data-bs-placement="top" title="Wishlist">--%>
<%--                                        <a href="wishlist.html" class="notifi-wishlist">--%>
<%--                                            <i data-feather="heart"></i>--%>
<%--                                        </a>--%>
<%--                                    </li>--%>
<%--                                </ul>--%>
<%--                            </div>--%>
<%--                            <div class="product-detail position-relative">--%>
<%--                                <a href="product-left-thumbnail.html">--%>
<%--                                    <h6 class="name">--%>
<%--                                        Peanut Butter Bite Premium Butter Cookies 600 g--%>
<%--                                    </h6>--%>
<%--                                </a>--%>

<%--                                <h6 class="sold weight text-content fw-normal">1 KG</h6>--%>

<%--                                <h6 class="price theme-color">$ 80.00</h6>--%>

<%--                                <div class="add-to-cart-btn-2 addtocart_btn">--%>
<%--                                    <button class="btn addcart-button btn buy-button"><i--%>
<%--                                            class="fa-solid fa-plus"></i></button>--%>
<%--                                    <div class="cart_qty qty-box-2 qty-box-3">--%>
<%--                                        <div class="input-group">--%>
<%--                                            <button type="button" class="qty-left-minus" data-type="minus"--%>
<%--                                                    data-field="">--%>
<%--                                                <i class="fa fa-minus" aria-hidden="true"></i>--%>
<%--                                            </button>--%>
<%--                                            <input class="form-control input-number qty-input" type="text"--%>
<%--                                                   name="quantity" value="0">--%>
<%--                                            <button type="button" class="qty-right-plus" data-type="plus"--%>
<%--                                                    data-field="">--%>
<%--                                                <i class="fa fa-plus" aria-hidden="true"></i>--%>
<%--                                            </button>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>

<%--                    <div>--%>

<%--                        <div class="product-box product-white-bg wow fadeIn" data-wow-delay="0.1s">--%>
<%--                            <div class="product-image">--%>
<%--                                <a href="product-left-thumbnail.html">--%>
<%--                                    <img src="../assets/images/cake/product/4.png"--%>
<%--                                         class="img-fluid blur-up lazyload" alt="">--%>
<%--                                </a>--%>
<%--                                <ul class="product-option">--%>
<%--                                    <li data-bs-toggle="tooltip" data-bs-placement="top" title="View">--%>
<%--                                        <a href="javascript:void(0)" data-bs-toggle="modal" data-bs-target="#view">--%>
<%--                                            <i data-feather="eye"></i>--%>
<%--                                        </a>--%>
<%--                                    </li>--%>

<%--                                    <li data-bs-toggle="tooltip" data-bs-placement="top" title="Compare">--%>
<%--                                        <a href="compare.html">--%>
<%--                                            <i data-feather="refresh-cw"></i>--%>
<%--                                        </a>--%>
<%--                                    </li>--%>

<%--                                    <li data-bs-toggle="tooltip" data-bs-placement="top" title="Wishlist">--%>
<%--                                        <a href="wishlist.html" class="notifi-wishlist">--%>
<%--                                            <i data-feather="heart"></i>--%>
<%--                                        </a>--%>
<%--                                    </li>--%>
<%--                                </ul>--%>
<%--                            </div>--%>
<%--                            <div class="product-detail position-relative">--%>
<%--                                <a href="product-left-thumbnail.html">--%>
<%--                                    <h6 class="name">--%>
<%--                                        SnackAmor Combo Pack of Jowar Stick and Jowar Chips--%>
<%--                                    </h6>--%>
<%--                                </a>--%>

<%--                                <h6 class="sold weight text-content fw-normal">1 KG</h6>--%>

<%--                                <h6 class="price theme-color">$ 80.00</h6>--%>

<%--                                <div class="add-to-cart-btn-2 addtocart_btn">--%>
<%--                                    <button class="btn addcart-button btn buy-button"><i--%>
<%--                                            class="fa-solid fa-plus"></i></button>--%>
<%--                                    <div class="cart_qty qty-box-2 qty-box-3">--%>
<%--                                        <div class="input-group">--%>
<%--                                            <button type="button" class="qty-left-minus" data-type="minus"--%>
<%--                                                    data-field="">--%>
<%--                                                <i class="fa fa-minus" aria-hidden="true"></i>--%>
<%--                                            </button>--%>
<%--                                            <input class="form-control input-number qty-input" type="text"--%>
<%--                                                   name="quantity" value="0">--%>
<%--                                            <button type="button" class="qty-right-plus" data-type="plus"--%>
<%--                                                    data-field="">--%>
<%--                                                <i class="fa fa-plus" aria-hidden="true"></i>--%>
<%--                                            </button>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>

<%--                    <div>--%>
<%--                        <div class="product-box product-white-bg wow fadeIn">--%>
<%--                            <div class="product-image">--%>
<%--                                <a href="product-left-thumbnail.html">--%>
<%--                                    <img src="../assets/images/cake/product/5.png"--%>
<%--                                         class="img-fluid blur-up lazyload" alt="">--%>
<%--                                </a>--%>
<%--                                <ul class="product-option">--%>
<%--                                    <li data-bs-toggle="tooltip" data-bs-placement="top" title="View">--%>
<%--                                        <a href="javascript:void(0)" data-bs-toggle="modal" data-bs-target="#view">--%>
<%--                                            <i data-feather="eye"></i>--%>
<%--                                        </a>--%>
<%--                                    </li>--%>

<%--                                    <li data-bs-toggle="tooltip" data-bs-placement="top" title="Compare">--%>
<%--                                        <a href="compare.html">--%>
<%--                                            <i data-feather="refresh-cw"></i>--%>
<%--                                        </a>--%>
<%--                                    </li>--%>

<%--                                    <li data-bs-toggle="tooltip" data-bs-placement="top" title="Wishlist">--%>
<%--                                        <a href="wishlist.html" class="notifi-wishlist">--%>
<%--                                            <i data-feather="heart"></i>--%>
<%--                                        </a>--%>
<%--                                    </li>--%>
<%--                                </ul>--%>
<%--                            </div>--%>
<%--                            <div class="product-detail position-relative">--%>
<%--                                <a href="product-left-thumbnail.html">--%>
<%--                                    <h6 class="name">--%>
<%--                                        Yumitos Chilli Sprinkled Potato Chips 100 g--%>
<%--                                    </h6>--%>
<%--                                </a>--%>

<%--                                <h6 class="sold weight text-content fw-normal">1 KG</h6>--%>

<%--                                <h6 class="price theme-color">$ 80.00</h6>--%>

<%--                                <div class="add-to-cart-btn-2 addtocart_btn">--%>
<%--                                    <button class="btn addcart-button btn buy-button"><i--%>
<%--                                            class="fa-solid fa-plus"></i></button>--%>
<%--                                    <div class="cart_qty qty-box-2 qty-box-3">--%>
<%--                                        <div class="input-group">--%>
<%--                                            <button type="button" class="qty-left-minus" data-type="minus"--%>
<%--                                                    data-field="">--%>
<%--                                                <i class="fa fa-minus" aria-hidden="true"></i>--%>
<%--                                            </button>--%>
<%--                                            <input class="form-control input-number qty-input" type="text"--%>
<%--                                                   name="quantity" value="0">--%>
<%--                                            <button type="button" class="qty-right-plus" data-type="plus"--%>
<%--                                                    data-field="">--%>
<%--                                                <i class="fa fa-plus" aria-hidden="true"></i>--%>
<%--                                            </button>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>

<%--                    <div>--%>
<%--                        <div class="product-box product-white-bg wow fadeIn" data-wow-delay="0.1s">--%>
<%--                            <div class="product-image">--%>
<%--                                <a href="product-left-thumbnail.html">--%>
<%--                                    <img src="../assets/images/cake/product/6.png"--%>
<%--                                         class="img-fluid blur-up lazyload" alt="">--%>
<%--                                </a>--%>
<%--                                <ul class="product-option">--%>
<%--                                    <li data-bs-toggle="tooltip" data-bs-placement="top" title="View">--%>
<%--                                        <a href="javascript:void(0)" data-bs-toggle="modal" data-bs-target="#view">--%>
<%--                                            <i data-feather="eye"></i>--%>
<%--                                        </a>--%>
<%--                                    </li>--%>

<%--                                    <li data-bs-toggle="tooltip" data-bs-placement="top" title="Compare">--%>
<%--                                        <a href="compare.html">--%>
<%--                                            <i data-feather="refresh-cw"></i>--%>
<%--                                        </a>--%>
<%--                                    </li>--%>

<%--                                    <li data-bs-toggle="tooltip" data-bs-placement="top" title="Wishlist">--%>
<%--                                        <a href="wishlist.html" class="notifi-wishlist">--%>
<%--                                            <i data-feather="heart"></i>--%>
<%--                                        </a>--%>
<%--                                    </li>--%>
<%--                                </ul>--%>
<%--                            </div>--%>
<%--                            <div class="product-detail position-relative">--%>
<%--                                <a href="product-left-thumbnail.html">--%>
<%--                                    <h6 class="name">--%>
<%--                                        Fantasy Crunchy Choco Chip Cookies--%>
<%--                                    </h6>--%>
<%--                                </a>--%>

<%--                                <h6 class="sold weight text-content fw-normal">1 KG</h6>--%>

<%--                                <h6 class="price theme-color">$ 80.00</h6>--%>

<%--                                <div class="add-to-cart-btn-2 addtocart_btn">--%>
<%--                                    <button class="btn addcart-button btn buy-button"><i--%>
<%--                                            class="fa-solid fa-plus"></i></button>--%>
<%--                                    <div class="cart_qty qty-box-2 qty-box-3">--%>
<%--                                        <div class="input-group">--%>
<%--                                            <button type="button" class="qty-left-minus" data-type="minus"--%>
<%--                                                    data-field="">--%>
<%--                                                <i class="fa fa-minus" aria-hidden="true"></i>--%>
<%--                                            </button>--%>
<%--                                            <input class="form-control input-number qty-input" type="text"--%>
<%--                                                   name="quantity" value="0">--%>
<%--                                            <button type="button" class="qty-right-plus" data-type="plus"--%>
<%--                                                    data-field="">--%>
<%--                                                <i class="fa fa-plus" aria-hidden="true"></i>--%>
<%--                                            </button>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>

<%--                    <div>--%>
<%--                        <div class="product-box product-white-bg wow fadeIn">--%>
<%--                            <div class="product-image">--%>
<%--                                <a href="product-left-thumbnail.html">--%>
<%--                                    <img src="../assets/images/cake/product/7.png"--%>
<%--                                         class="img-fluid blur-up lazyload" alt="">--%>
<%--                                </a>--%>
<%--                                <ul class="product-option">--%>
<%--                                    <li data-bs-toggle="tooltip" data-bs-placement="top" title="View">--%>
<%--                                        <a href="javascript:void(0)" data-bs-toggle="modal" data-bs-target="#view">--%>
<%--                                            <i data-feather="eye"></i>--%>
<%--                                        </a>--%>
<%--                                    </li>--%>

<%--                                    <li data-bs-toggle="tooltip" data-bs-placement="top" title="Compare">--%>
<%--                                        <a href="compare.html">--%>
<%--                                            <i data-feather="refresh-cw"></i>--%>
<%--                                        </a>--%>
<%--                                    </li>--%>

<%--                                    <li data-bs-toggle="tooltip" data-bs-placement="top" title="Wishlist">--%>
<%--                                        <a href="wishlist.html" class="notifi-wishlist">--%>
<%--                                            <i data-feather="heart"></i>--%>
<%--                                        </a>--%>
<%--                                    </li>--%>
<%--                                </ul>--%>
<%--                            </div>--%>
<%--                            <div class="product-detail position-relative">--%>
<%--                                <a href="product-left-thumbnail.html">--%>
<%--                                    <h6 class="name">--%>
<%--                                        Fresh Bread and Pastry Flour 200 g--%>
<%--                                    </h6>--%>
<%--                                </a>--%>

<%--                                <h6 class="sold weight text-content fw-normal">1 KG</h6>--%>

<%--                                <h6 class="price theme-color">$ 80.00</h6>--%>

<%--                                <div class="add-to-cart-btn-2 addtocart_btn">--%>
<%--                                    <button class="btn addcart-button btn buy-button"><i--%>
<%--                                            class="fa-solid fa-plus"></i></button>--%>
<%--                                    <div class="cart_qty qty-box-2 qty-box-3">--%>
<%--                                        <div class="input-group">--%>
<%--                                            <button type="button" class="qty-left-minus" data-type="minus"--%>
<%--                                                    data-field="">--%>
<%--                                                <i class="fa fa-minus" aria-hidden="true"></i>--%>
<%--                                            </button>--%>
<%--                                            <input class="form-control input-number qty-input" type="text"--%>
<%--                                                   name="quantity" value="0">--%>
<%--                                            <button type="button" class="qty-right-plus" data-type="plus"--%>
<%--                                                    data-field="">--%>
<%--                                                <i class="fa fa-plus" aria-hidden="true"></i>--%>
<%--                                            </button>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>

<%--                    <div>--%>
<%--                        <div class="product-box product-white-bg wow fadeIn" data-wow-delay="0.1s">--%>
<%--                            <div class="product-image">--%>
<%--                                <a href="product-left-thumbnail.html">--%>
<%--                                    <img src="../assets/images/cake/product/8.png"--%>
<%--                                         class="img-fluid blur-up lazyload" alt="">--%>
<%--                                </a>--%>
<%--                                <ul class="product-option">--%>
<%--                                    <li data-bs-toggle="tooltip" data-bs-placement="top" title="View">--%>
<%--                                        <a href="javascript:void(0)" data-bs-toggle="modal" data-bs-target="#view">--%>
<%--                                            <i data-feather="eye"></i>--%>
<%--                                        </a>--%>
<%--                                    </li>--%>

<%--                                    <li data-bs-toggle="tooltip" data-bs-placement="top" title="Compare">--%>
<%--                                        <a href="compare.html">--%>
<%--                                            <i data-feather="refresh-cw"></i>--%>
<%--                                        </a>--%>
<%--                                    </li>--%>

<%--                                    <li data-bs-toggle="tooltip" data-bs-placement="top" title="Wishlist">--%>
<%--                                        <a href="wishlist.html" class="notifi-wishlist">--%>
<%--                                            <i data-feather="heart"></i>--%>
<%--                                        </a>--%>
<%--                                    </li>--%>
<%--                                </ul>--%>
<%--                            </div>--%>
<%--                            <div class="product-detail position-relative">--%>
<%--                                <a href="product-left-thumbnail.html">--%>
<%--                                    <h6 class="name">--%>
<%--                                        Milky Silicone Heart Chocolate Mould ( Pack of 1 )--%>
<%--                                    </h6>--%>
<%--                                </a>--%>

<%--                                <h6 class="sold weight text-content fw-normal">1 KG</h6>--%>

<%--                                <h6 class="price theme-color">$ 80.00</h6>--%>

<%--                                <div class="add-to-cart-btn-2 addtocart_btn">--%>
<%--                                    <button class="btn addcart-button btn buy-button"><i--%>
<%--                                            class="fa-solid fa-plus"></i></button>--%>
<%--                                    <div class="cart_qty qty-box-2 qty-box-3">--%>
<%--                                        <div class="input-group">--%>
<%--                                            <button type="button" class="qty-left-minus" data-type="minus"--%>
<%--                                                    data-field="">--%>
<%--                                                <i class="fa fa-minus" aria-hidden="true"></i>--%>
<%--                                            </button>--%>
<%--                                            <input class="form-control input-number qty-input" type="text"--%>
<%--                                                   name="quantity" value="0">--%>
<%--                                            <button type="button" class="qty-right-plus" data-type="plus"--%>
<%--                                                    data-field="">--%>
<%--                                                <i class="fa fa-plus" aria-hidden="true"></i>--%>
<%--                                            </button>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>

<%--                    <div>--%>
<%--                        <div class="product-box product-white-bg wow fadeIn">--%>
<%--                            <div class="product-image">--%>
<%--                                <a href="product-left-thumbnail.html">--%>
<%--                                    <img src="../assets/images/cake/product/9.png"--%>
<%--                                         class="img-fluid blur-up lazyload" alt="">--%>
<%--                                </a>--%>
<%--                                <ul class="product-option">--%>
<%--                                    <li data-bs-toggle="tooltip" data-bs-placement="top" title="View">--%>
<%--                                        <a href="javascript:void(0)" data-bs-toggle="modal" data-bs-target="#view">--%>
<%--                                            <i data-feather="eye"></i>--%>
<%--                                        </a>--%>
<%--                                    </li>--%>

<%--                                    <li data-bs-toggle="tooltip" data-bs-placement="top" title="Compare">--%>
<%--                                        <a href="compare.html">--%>
<%--                                            <i data-feather="refresh-cw"></i>--%>
<%--                                        </a>--%>
<%--                                    </li>--%>

<%--                                    <li data-bs-toggle="tooltip" data-bs-placement="top" title="Wishlist">--%>
<%--                                        <a href="wishlist.html" class="notifi-wishlist">--%>
<%--                                            <i data-feather="heart"></i>--%>
<%--                                        </a>--%>
<%--                                    </li>--%>
<%--                                </ul>--%>
<%--                            </div>--%>
<%--                            <div class="product-detail position-relative">--%>
<%--                                <a href="product-left-thumbnail.html">--%>
<%--                                    <h6 class="name">chocolate-chip-cookies 250 g</h6>--%>
<%--                                </a>--%>

<%--                                <h6 class="sold weight text-content fw-normal">1 KG</h6>--%>

<%--                                <h6 class="price theme-color">$ 80.00</h6>--%>

<%--                                <div class="add-to-cart-btn-2 addtocart_btn">--%>
<%--                                    <button class="btn addcart-button btn buy-button"><i--%>
<%--                                            class="fa-solid fa-plus"></i></button>--%>
<%--                                    <div class="cart_qty qty-box-2 qty-box-3">--%>
<%--                                        <div class="input-group">--%>
<%--                                            <button type="button" class="qty-left-minus" data-type="minus"--%>
<%--                                                    data-field="">--%>
<%--                                                <i class="fa fa-minus" aria-hidden="true"></i>--%>
<%--                                            </button>--%>
<%--                                            <input class="form-control input-number qty-input" type="text"--%>
<%--                                                   name="quantity" value="0">--%>
<%--                                            <button type="button" class="qty-right-plus" data-type="plus"--%>
<%--                                                    data-field="">--%>
<%--                                                <i class="fa fa-plus" aria-hidden="true"></i>--%>
<%--                                            </button>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>

<%--                    <div>--%>
<%--                        <div class="product-box product-white-bg wow fadeIn" data-wow-delay="0.1s">--%>
<%--                            <div class="product-image">--%>
<%--                                <a href="product-left-thumbnail.html">--%>
<%--                                    <img src="../assets/images/cake/product/10.png"--%>
<%--                                         class="img-fluid blur-up lazyload" alt="">--%>
<%--                                </a>--%>
<%--                                <ul class="product-option">--%>
<%--                                    <li data-bs-toggle="tooltip" data-bs-placement="top" title="View">--%>
<%--                                        <a href="javascript:void(0)" data-bs-toggle="modal" data-bs-target="#view">--%>
<%--                                            <i data-feather="eye"></i>--%>
<%--                                        </a>--%>
<%--                                    </li>--%>

<%--                                    <li data-bs-toggle="tooltip" data-bs-placement="top" title="Compare">--%>
<%--                                        <a href="compare.html">--%>
<%--                                            <i data-feather="refresh-cw"></i>--%>
<%--                                        </a>--%>
<%--                                    </li>--%>

<%--                                    <li data-bs-toggle="tooltip" data-bs-placement="top" title="Wishlist">--%>
<%--                                        <a href="wishlist.html" class="notifi-wishlist">--%>
<%--                                            <i data-feather="heart"></i>--%>
<%--                                        </a>--%>
<%--                                    </li>--%>
<%--                                </ul>--%>
<%--                            </div>--%>
<%--                            <div class="product-detail position-relative">--%>
<%--                                <a href="product-left-thumbnail.html">--%>
<%--                                    <h6 class="name">--%>
<%--                                        Cupcake Holder for Birthday and Wedding Party 100 g--%>
<%--                                    </h6>--%>
<%--                                </a>--%>

<%--                                <h6 class="sold weight text-content fw-normal">1 KG</h6>--%>

<%--                                <h6 class="price theme-color">$ 80.00</h6>--%>

<%--                                <div class="add-to-cart-btn-2 addtocart_btn">--%>
<%--                                    <button class="btn addcart-button btn buy-button"><i--%>
<%--                                            class="fa-solid fa-plus"></i></button>--%>
<%--                                    <div class="cart_qty qty-box-2 qty-box-3">--%>
<%--                                        <div class="input-group">--%>
<%--                                            <button type="button" class="qty-left-minus" data-type="minus"--%>
<%--                                                    data-field="">--%>
<%--                                                <i class="fa fa-minus" aria-hidden="true"></i>--%>
<%--                                            </button>--%>
<%--                                            <input class="form-control input-number qty-input" type="text"--%>
<%--                                                   name="quantity" value="0">--%>
<%--                                            <button type="button" class="qty-right-plus" data-type="plus"--%>
<%--                                                    data-field="">--%>
<%--                                                <i class="fa fa-plus" aria-hidden="true"></i>--%>
<%--                                            </button>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>

<%--                    <div>--%>
<%--                        <div class="product-box product-white-bg wow fadeIn">--%>
<%--                            <div class="product-image">--%>
<%--                                <a href="product-left-thumbnail.html">--%>
<%--                                    <img src="../assets/images/cake/product/5.png"--%>
<%--                                         class="img-fluid blur-up lazyload" alt="">--%>
<%--                                </a>--%>
<%--                                <ul class="product-option">--%>
<%--                                    <li data-bs-toggle="tooltip" data-bs-placement="top" title="View">--%>
<%--                                        <a href="javascript:void(0)" data-bs-toggle="modal" data-bs-target="#view">--%>
<%--                                            <i data-feather="eye"></i>--%>
<%--                                        </a>--%>
<%--                                    </li>--%>

<%--                                    <li data-bs-toggle="tooltip" data-bs-placement="top" title="Compare">--%>
<%--                                        <a href="compare.html">--%>
<%--                                            <i data-feather="refresh-cw"></i>--%>
<%--                                        </a>--%>
<%--                                    </li>--%>

<%--                                    <li data-bs-toggle="tooltip" data-bs-placement="top" title="Wishlist">--%>
<%--                                        <a href="wishlist.html" class="notifi-wishlist">--%>
<%--                                            <i data-feather="heart"></i>--%>
<%--                                        </a>--%>
<%--                                    </li>--%>
<%--                                </ul>--%>
<%--                            </div>--%>
<%--                            <div class="product-detail position-relative">--%>
<%--                                <a href="product-left-thumbnail.html">--%>
<%--                                    <h6 class="name">--%>
<%--                                        Yumitos Chilli Sprinkled Potato Chips 100 g--%>
<%--                                    </h6>--%>
<%--                                </a>--%>

<%--                                <h6 class="sold weight text-content fw-normal">1 KG</h6>--%>

<%--                                <h6 class="price theme-color">$ 80.00</h6>--%>

<%--                                <div class="add-to-cart-btn-2 addtocart_btn">--%>
<%--                                    <button class="btn addcart-button btn buy-button"><i--%>
<%--                                            class="fa-solid fa-plus"></i></button>--%>
<%--                                    <div class="cart_qty qty-box-2 qty-box-3">--%>
<%--                                        <div class="input-group">--%>
<%--                                            <button type="button" class="qty-left-minus" data-type="minus"--%>
<%--                                                    data-field="">--%>
<%--                                                <i class="fa fa-minus" aria-hidden="true"></i>--%>
<%--                                            </button>--%>
<%--                                            <input class="form-control input-number qty-input" type="text"--%>
<%--                                                   name="quantity" value="0">--%>
<%--                                            <button type="button" class="qty-right-plus" data-type="plus"--%>
<%--                                                    data-field="">--%>
<%--                                                <i class="fa fa-plus" aria-hidden="true"></i>--%>
<%--                                            </button>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>

<%--                    <div>--%>
<%--                        <div class="product-box product-white-bg wow fadeIn" data-wow-delay="0.1s">--%>
<%--                            <div class="product-image">--%>
<%--                                <a href="product-left-thumbnail.html">--%>
<%--                                    <img src="../assets/images/cake/product/6.png"--%>
<%--                                         class="img-fluid blur-up lazyload" alt="">--%>
<%--                                </a>--%>
<%--                                <ul class="product-option">--%>
<%--                                    <li data-bs-toggle="tooltip" data-bs-placement="top" title="View">--%>
<%--                                        <a href="javascript:void(0)" data-bs-toggle="modal" data-bs-target="#view">--%>
<%--                                            <i data-feather="eye"></i>--%>
<%--                                        </a>--%>
<%--                                    </li>--%>

<%--                                    <li data-bs-toggle="tooltip" data-bs-placement="top" title="Compare">--%>
<%--                                        <a href="compare.html">--%>
<%--                                            <i data-feather="refresh-cw"></i>--%>
<%--                                        </a>--%>
<%--                                    </li>--%>

<%--                                    <li data-bs-toggle="tooltip" data-bs-placement="top" title="Wishlist">--%>
<%--                                        <a href="wishlist.html" class="notifi-wishlist">--%>
<%--                                            <i data-feather="heart"></i>--%>
<%--                                        </a>--%>
<%--                                    </li>--%>
<%--                                </ul>--%>
<%--                            </div>--%>
<%--                            <div class="product-detail position-relative">--%>
<%--                                <a href="product-left-thumbnail.html">--%>
<%--                                    <h6 class="name">--%>
<%--                                        Fantasy Crunchy Choco Chip Cookies--%>
<%--                                    </h6>--%>
<%--                                </a>--%>

<%--                                <h6 class="sold weight text-content fw-normal">1 KG</h6>--%>

<%--                                <h6 class="price theme-color">$ 80.00</h6>--%>

<%--                                <div class="add-to-cart-btn-2 addtocart_btn">--%>
<%--                                    <button class="btn addcart-button btn buy-button"><i--%>
<%--                                            class="fa-solid fa-plus"></i></button>--%>
<%--                                    <div class="cart_qty qty-box-2 qty-box-3">--%>
<%--                                        <div class="input-group">--%>
<%--                                            <button type="button" class="qty-left-minus" data-type="minus"--%>
<%--                                                    data-field="">--%>
<%--                                                <i class="fa fa-minus" aria-hidden="true"></i>--%>
<%--                                            </button>--%>
<%--                                            <input class="form-control input-number qty-input" type="text"--%>
<%--                                                   name="quantity" value="0">--%>
<%--                                            <button type="button" class="qty-right-plus" data-type="plus"--%>
<%--                                                    data-field="">--%>
<%--                                                <i class="fa fa-plus" aria-hidden="true"></i>--%>
<%--                                            </button>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
        </div>
    </div>
</section>
<!-- Product Section End -->
