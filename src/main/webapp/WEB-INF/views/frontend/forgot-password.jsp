<!DOCTYPE html>
<html lang="en">

<jsp:include page="../frontend/include/other-header.jsp"/>

<body class="theme-color-5 bg-gradient-color">


<!-- Forgot password section start -->
<section class="log-in-section section-b-space forgot-section">
    <div class="container-fluid-lg w-100">
        <div class="row">
            <div class="col-xxl-6 col-xl-5 col-lg-6 d-lg-block d-none ms-auto">
                <div class="image-contain">
                    <img src="${BASE_URL}assets/images/inner-page/forgot.png" class="img-fluid" alt="">
                </div>
            </div>

            <div class="col-xxl-4 col-xl-5 col-lg-6 col-sm-8 mx-auto">
                <div class="d-flex align-items-center justify-content-center h-100">
                    <div class="log-in-box">
                        <div class="log-in-title">
                            <h3>Welcome To TrendArena</h3>
                            <h4>Forgot your password</h4>
                        </div>

                        <div class="input-box">
                            <form class="row g-4">
                                <div class="col-12">
                                    <div class="form-floating theme-form-floating log-in-form">
                                        <input type="email" class="form-control" id="email"
                                               placeholder="Email Address">
                                        <label for="email">Email Address</label>
                                    </div>
                                </div>

                                <div class="col-12">
                                    <button class="btn btn-animation w-100" type="submit">Forgot
                                        Password</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Forgot password section end -->



<jsp:include page="../frontend/include/other-footer.jsp"/>





<!-- Bg overlay Start -->
<div class="bg-overlay"></div>
<!-- Bg overlay End -->

<jsp:include page="../frontend/include/script_imports.jsp"/>
</body>

</html>