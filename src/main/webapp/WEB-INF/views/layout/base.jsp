<%@ taglib uri="http://callidora.lk/jsp/template-inheritance" prefix="layout"%>

<!doctype html>
<html lang="en">

<jsp:include page="../frontend/include/header.jsp"/>


<body class="theme-color-5">

<!-- Loader Start -->
<%--<div class="fullpage-loader">--%>
<%--    <span></span>--%>
<%--    <span></span>--%>
<%--    <span></span>--%>
<%--    <span></span>--%>
<%--    <span></span>--%>
<%--    <span></span>--%>
<%--</div>--%>
<%--<!-- Loader End -->--%>





<layout:block name="contents"></layout:block>

<jsp:include page="../frontend/include/footer.jsp"/>




<!-- Tap to top start -->
<div class="theme-option">
    <div class="back-to-top">
        <a id="back-to-top" href="#">
            <i class="fas fa-chevron-up"></i>
        </a>
    </div>
</div>
<!-- Tap to top end -->

<!-- Bg overlay Start -->
<div class="bg-overlay"></div>
<!-- Bg overlay End -->

<!-- latest jquery-->
<script src="${BASE_URL}assets/js/jquery-3.6.0.min.js"></script>

<!-- jquery ui-->
<script src="${BASE_URL}assets/js/jquery-ui.min.js"></script>

<!-- Bootstrap js-->
<script src="${BASE_URL}assets/js/bootstrap/bootstrap.bundle.min.js"></script>
<script src="${BASE_URL}assets/js/bootstrap/bootstrap-notify.min.js"></script>
<script src="${BASE_URL}assets/js/bootstrap/popper.min.js"></script>

<!-- feather icon js-->
<script src="${BASE_URL}assets/js/feather/feather.min.js"></script>
<script src="${BASE_URL}assets/js/feather/feather-icon.js"></script>

<!-- Lazyload Js -->
<script src="${BASE_URL}assets/js/lazysizes.min.js"></script>

<!-- Slick js-->
<script src="${BASE_URL}assets/js/slick/slick.js"></script>
<script src="${BASE_URL}assets/js/slick/slick-animation.min.js"></script>
<script src="${BASE_URL}assets/js/slick/custom_slick.js"></script>

<!-- Auto Height Js -->
<script src="${BASE_URL}assets/js/auto-height.js"></script>

<!-- WOW js -->
<script src="${BASE_URL}assets/js/wow.min.js"></script>
<script src="${BASE_URL}assets/js/custom-wow.js"></script>

<!-- script js -->
<script src="${BASE_URL}assets/js/script.js"></script>

<!-- main js -->
<script src="${BASE_URL}assets/js/main.js"></script>

<layout:block name="script"></layout:block>
</body>

</html>