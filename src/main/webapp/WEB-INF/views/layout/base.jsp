<%@ taglib uri="http://callidora.lk/jsp/template-inheritance" prefix="layout"%>

<!doctype html>
<html lang="en">

<jsp:include page="../frontend/include/header.jsp"/>

<body id="body">



<div class="main-slider slider">
    <div class="slider-item " style="background-image:url('${BASE_URL}assets/images/slider/slideshow1-2.jpg')">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-12 offset-lg-6 offset-md-6">
                    <div class="slider-caption">
                        <span class="lead">Winter Collection Sale </span>
                        <h1 class="mt-2 mb-5"><span class="text-color">70% off </span>to everything</h1>
                        <a href="shop.html" class="btn btn-main">Shop Now</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="slider-item" style="background-image:url('${BASE_URL}assets/images/slider/slideshow1-3.jpg')">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-12 offset-lg-6 offset-md-6">
                    <div class="slider-caption">
                        <span class="lead">up to 70% off</span>
                        <h1 class="mt-2 mb-5"><span class="text-color">Classic</span> Style</h1>
                        <a href="shop.html" class="btn btn-main">Shop Now</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="slider-item" style="background-image:url('${BASE_URL}assets/images/slider/slideshow1-1.jpg'); background-position:50%;background-repeat:no-repeat;">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-12 offset-lg-6 offset-md-6">
                    <div class="slider-caption">
                        <span class="lead">Trendy dress</span>
                        <h1 class="mt-2 mb-5"><span class="text-color">Winter </span>Collection</h1>
                        <a href="shop.html" class="btn btn-main">Shop Now</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<layout:block name="contents"></layout:block>

<jsp:include page="../frontend/include/footer.jsp"/>



<!--
Essential Scripts
=====================================-->

<!-- Main jQuery -->
<script src="${BASE_URL}assets/plugins/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 4.3.1 -->
<script src="${BASE_URL}assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<!-- Count Down Js -->
<script src="${BASE_URL}assets/plugins/SyoTimer/jquery.syotimer.min.js"></script>
<script src="${BASE_URL}assets/plugins/bootstrap-slider/bootstrap-slider.min.js"></script>
<!-- Slick Slider -->
<script src="${BASE_URL}assets/plugins/slick-carousel/slick/slick.min.js"></script>
<!-- rating star -->
<script src="${BASE_URL}assets/plugins/rating/rating.js"></script>
<!-- Instagram Feed Js -->
<script src="${BASE_URL}assets/plugins/instafeed-js/instafeed.min.js"></script>
<!-- toastr -->
<script src="${BASE_URL}assets/plugins/toastr/toastr.min.js"></script>
<!-- Google Mapl -->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCC72vZw-6tGqFyRhhg5CkF2fqfILn2Tsw"></script>
<script src="${BASE_URL}assets/plugins/google-map/gmap.js"></script>

<!-- Main Js File -->
<script src="${BASE_URL}assets/js/script.js"></script>

</body>
</html>