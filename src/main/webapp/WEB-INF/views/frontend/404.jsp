<!DOCTYPE html>
<html lang="en">


<jsp:include page="../frontend/include/other-header.jsp"/>

<body class="theme-color-5 bg-gradient-color">



<!-- 404 Section Start -->
<section class="section-404 section-lg-space">
    <div class="container-fluid-lg">
        <div class="row">
            <div class="col-12">
                <div class="image-404">
                    <img src="${BASE_URL}assets//images/inner-page/404.png" class="img-fluid blur-up lazyload" alt="">
                </div>
            </div>

            <div class="col-12">
                <div class="contain-404">
                    <h3 class="text-content">The page you are looking for could not be found. The link to this
                        address may be outdated or we may have moved the since you last bookmarked it.</h3>
                    <button onclick="location.href = '${BASE_URL}';"
                            class="btn btn-md text-white theme-bg-color mt-4 mx-auto">Back To Home Screen</button>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- 404 Section End -->



<jsp:include page="../frontend/include/other-footer.jsp"/>





<!-- Bg overlay Start -->
<div class="bg-overlay"></div>
<!-- Bg overlay End -->

<jsp:include page="../frontend/include/script_imports.jsp"/>
</body>

</html>