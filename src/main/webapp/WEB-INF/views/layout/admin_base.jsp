<%@ taglib uri="http://callidora.lk/jsp/template-inheritance" prefix="layout" %>
<%@page import="java.util.Map"%>
<%@page import="com.ox5un5h1n3.web.trendarena.util.Helper"%>
<%@page import="java.util.List"%>
<%@page import="com.ox5un5h1n3.web.trendarena.util.HibernateUtil"%>
<%@page import="com.ox5un5h1n3.web.trendarena.dao.*"%>
<%@page import="com.ox5un5h1n3.web.trendarena.entity.*"%>



<%
    User user = (User) session.getAttribute("userLogged");
    if (user == null) {
        response.sendRedirect(request.getContextPath()+"/login");
        return;
    } else {
        if (user.getUserType().toString().equals("USER")) {
            response.sendRedirect(request.getContextPath()+"/login");
            return;
        }
    }
%>

<%
    CategoryDao cdao = new CategoryDao(HibernateUtil.getSessionFactory());
    List<Category> list = cdao.getCategories();

    Map<String, Long> m= Helper.getCounts(HibernateUtil.getSessionFactory());
%>




<!doctype html>
<html lang="en">

<jsp:include page="../frontend/include/admin_header.jsp"/>

<body>
<!-- tap on top start -->
<div class="tap-top">
    <span class="lnr lnr-chevron-up"></span>
</div>
<!-- tap on tap end -->

<!-- page-wrapper Start-->
<div class="page-wrapper compact-wrapper" id="pageWrapper">




<jsp:include page="../frontend/include/admin_page_header.jsp"/>
<jsp:include page="../frontend/include/admin_footer.jsp"/>
    <!-- Page Body Start-->
    <div class="page-body-wrapper">
<jsp:include page="../frontend/include/admin_sidebar.jsp"/>


        <!-- index body start -->
        <div class="page-body">
            <!-- Container-fluid start-->
            <div class="container-fluid">
                <div class="row">
                    <!-- chart caard section start -->
<%--                    <div class="col-sm-6 col-xxl-3 col-lg-6">--%>
<%--                        <div class="main-tiles border-5 border-0  card-hover card o-hidden">--%>
<%--                            <div class="custome-1-bg b-r-4 card-body">--%>
<%--                                <div class="media align-items-center static-top-widget">--%>
<%--                                    <div class="media-body p-0">--%>
<%--                                        <span class="m-0">Total Revenue</span>--%>
<%--                                        <h4 class="mb-0 counter">$6659--%>
<%--                                            <span class="badge badge-light-primary grow">--%>
<%--                                                    <i data-feather="trending-up"></i>8.5%</span>--%>
<%--                                        </h4>--%>
<%--                                    </div>--%>
<%--                                    <div class="align-self-center text-center">--%>
<%--                                        <i class="ri-database-2-line"></i>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>

                    <div class="col-sm-6 col-xxl-3 col-lg-6">
                        <div class="main-tiles border-5 card-hover border-0 card o-hidden">
                            <div class="custome-2-bg b-r-4 card-body">
                                <div class="media static-top-widget">
                                    <div class="media-body p-0">
                                        <span class="m-0">Total Categories</span>
                                        <h4 class="mb-0 counter"><%= list.size() %>
                                            <span class="badge badge-light-danger grow">
                                                    <i data-feather="trending-down"></i>8.5%</span>
                                        </h4>
                                    </div>
                                    <div class="align-self-center text-center">
                                        <i class="ri-shopping-bag-3-line"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-6 col-xxl-3 col-lg-6">
                        <div class="main-tiles border-5 card-hover border-0  card o-hidden">
                            <div class="custome-3-bg b-r-4 card-body">
                                <div class="media static-top-widget">
                                    <div class="media-body p-0">
                                        <span class="m-0">Total Products</span>
                                        <h4 class="mb-0 counter"><%=m.get("productCount") %>
                                            <a href="${BASE_URL}admin/add-new-product" class="badge badge-light-secondary grow">
                                                ADD NEW</a>
                                        </h4>
                                    </div>

                                    <div class="align-self-center text-center">
                                        <i class="ri-chat-3-line"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-6 col-xxl-3 col-lg-6">
                        <div class="main-tiles border-5 card-hover border-0 card o-hidden">
                            <div class="custome-4-bg b-r-4 card-body">
                                <div class="media static-top-widget">
                                    <div class="media-body p-0">
                                        <span class="m-0">Total Customers</span>
                                        <h4 class="mb-0 counter"><%=m.get("userCount") %>
                                            <span class="badge badge-light-success grow">
                                                    <i data-feather="trending-down"></i>8.5%</span>
                                        </h4>
                                    </div>

                                    <div class="align-self-center text-center">
                                        <i class="ri-user-add-line"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Container-fluid Ends-->
</div>
<!-- index body end -->

</div>
<!-- Page Body End -->
</div>
<!-- page-wrapper End-->



<!-- Modal Start -->
<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
     aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog  modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-body">
                <h5 class="modal-title" id="staticBackdropLabel">Logging Out</h5>
                <p>Are you sure you want to log out?</p>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                <div class="button-box">

                    <button type="button" class="btn btn--no" data-bs-dismiss="modal">No</button>
                    <a href="${BASE_URL}logout"><button type="button" class="btn  btn--yes btn-primary">Yes</button></a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Modal End -->


<!-- latest js -->
<script src="${BASE_URL}assets/admin/js/jquery-3.6.0.min.js"></script>

<!-- Bootstrap js -->
<script src="${BASE_URL}assets/admin/js/bootstrap/bootstrap.bundle.min.js"></script>

<!-- feather icon js -->
<script src="${BASE_URL}assets/admin/js/icons/feather-icon/feather.min.js"></script>
<script src="${BASE_URL}assets/admin/js/icons/feather-icon/feather-icon.js"></script>

<!-- scrollbar simplebar js -->
<script src="${BASE_URL}assets/admin/js/scrollbar/simplebar.js"></script>
<script src="${BASE_URL}assets/admin/js/scrollbar/custom.js"></script>

<!-- Sidebar jquery -->
<script src="${BASE_URL}assets/admin/js/config.js"></script>

<!-- tooltip init js -->
<script src="${BASE_URL}assets/admin/js/tooltip-init.js"></script>

<!-- Plugins JS -->
<script src="${BASE_URL}assets/admin/js/sidebar-menu.js"></script>
<%--<script src="${BASE_URL}assets/admin/js/notify/bootstrap-notify.min.js"></script>--%>
<script src="${BASE_URL}assets/admin/js/notify/index.js"></script>

<!-- Apexchar js -->
<%--<script src="${BASE_URL}assets/admin/js/chart/apex-chart/apex-chart1.js"></script>--%>
<%--<script src="${BASE_URL}assets/admin/js/chart/apex-chart/moment.min.js"></script>--%>
<%--<script src="${BASE_URL}assets/admin/js/chart/apex-chart/apex-chart.js"></script>--%>
<%--<script src="${BASE_URL}assets/admin/js/chart/apex-chart/stock-prices.js"></script>--%>
<%--<script src="${BASE_URL}assets/admin/js/chart/apex-chart/chart-custom1.js"></script>--%>


<!-- slick slider js -->
<script src="${BASE_URL}assets/admin/js/slick.min.js"></script>
<script src="${BASE_URL}assets/admin/js/custom-slick.js"></script>

<!-- customizer js -->
<script src="${BASE_URL}assets/admin/js/customizer.js"></script>

<!-- ratio js -->
<script src="${BASE_URL}assets/admin/js/ratio.js"></script>

<!-- sidebar effect -->
<script src="${BASE_URL}assets/admin/js/sidebareffect.js"></script>

<!-- Theme js -->
<script src="${BASE_URL}assets/admin/js/script.js"></script>
</body>

</html>

</html>