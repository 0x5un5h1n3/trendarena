<%@ taglib uri="http://callidora.lk/jsp/template-inheritance" prefix="layout" %>

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
    <!-- Page Header Start-->
    <div class="page-header">
        <div class="header-wrapper m-0">
            <div class="header-logo-wrapper p-0">
                <div class="logo-wrapper">
                    <a href="index.html">
                        <img class="img-fluid main-logo" src="${BASE_URL}assets/admin/images/logo/1.png" alt="logo">
                        <img class="img-fluid white-logo" src="${BASE_URL}assets/admin/images/logo/1-white.png"
                             alt="logo">
                    </a>
                </div>
                <div class="toggle-sidebar">
                    <i class="status_toggle middle sidebar-toggle" data-feather="align-center"></i>
                    <a href="index.html">
                        <img src="${BASE_URL}assets/admin/images/logo/1.png" class="img-fluid" alt="">
                    </a>
                </div>
            </div>

            <form class="form-inline search-full" action="javascript:void(0)" method="get">
                <div class="form-group w-100">
                    <div class="Typeahead Typeahead--twitterUsers">
                        <div class="u-posRelative">
                            <input class="demo-input Typeahead-input form-control-plaintext w-100" type="text"
                                   placeholder="Search TrendArena .." name="q" title="" autofocus>
                            <i class="close-search" data-feather="x"></i>
                            <div class="spinner-border Typeahead-spinner" role="status">
                                <span class="sr-only">Loading...</span>
                            </div>
                        </div>
                        <div class="Typeahead-menu"></div>
                    </div>
                </div>
            </form>
            <div class="nav-right col-6 pull-right right-header p-0">
                <ul class="nav-menus">
                    <li>
                            <span class="header-search">
                                <i class="ri-search-line"></i>
                            </span>
                    </li>
                    <li class="onhover-dropdown">
                        <div class="notification-box">
                            <i class="ri-notification-line"></i>
                            <span class="badge rounded-pill badge-theme">4</span>
                        </div>
                        <ul class="notification-dropdown onhover-show-div">
                            <li>
                                <i class="ri-notification-line"></i>
                                <h6 class="f-18 mb-0">Notitications</h6>
                            </li>
                            <li>
                                <p>
                                    <i class="fa fa-circle me-2 font-primary"></i>Delivery processing <span
                                        class="pull-right">10 min.</span>
                                </p>
                            </li>
                            <li>
                                <p>
                                    <i class="fa fa-circle me-2 font-success"></i>Order Complete<span
                                        class="pull-right">1 hr</span>
                                </p>
                            </li>
                            <li>
                                <p>
                                    <i class="fa fa-circle me-2 font-info"></i>Tickets Generated<span
                                        class="pull-right">3 hr</span>
                                </p>
                            </li>
                            <li>
                                <p>
                                    <i class="fa fa-circle me-2 font-danger"></i>Delivery Complete<span
                                        class="pull-right">6 hr</span>
                                </p>
                            </li>
                            <li>
                                <a class="btn btn-primary" href="javascript:void(0)">Check all notification</a>
                            </li>
                        </ul>
                    </li>

                    <li>
                        <div class="mode">
                            <i class="ri-moon-line"></i>
                        </div>
                    </li>
                    <li class="profile-nav onhover-dropdown pe-0 me-0">
                        <div class="media profile-media">
                            <img class="user-profile rounded-circle" src="${BASE_URL}assets/admin/images/users/4.jpg" alt="">
                            <div class="user-name-hide media-body">
                                <span>John Doe</span>
                                <p class="mb-0 font-roboto">Admin<i class="middle ri-arrow-down-s-line"></i></p>
                            </div>
                        </div>
                        <ul class="profile-dropdown onhover-show-div">
                            <li>
                                <a href="all-users.html">
                                    <i data-feather="users"></i>
                                    <span>Users</span>
                                </a>
                            </li>
                            <li>
                                <a href="order-list.html">
                                    <i data-feather="archive"></i>
                                    <span>Orders</span>
                                </a>
                            </li>
                            <li>
                                <a href="support-ticket.html">
                                    <i data-feather="phone"></i>
                                    <span>Spports Tickets</span>
                                </a>
                            </li>
                            <li>
                                <a href="profile-setting.html">
                                    <i data-feather="settings"></i>
                                    <span>Settings</span>
                                </a>
                            </li>
                            <li>
                                <a data-bs-toggle="modal" data-bs-target="#staticBackdrop"
                                   href="javascript:void(0)">
                                    <i data-feather="log-out"></i>
                                    <span>Log out</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <!-- Page Header Ends-->


<layout:block name="contents"></layout:block>

<jsp:include page="../frontend/include/admin_footer.jsp"/>

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
                    <button type="button" class="btn  btn--yes btn-primary">Yes</button>
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
<script src="${BASE_URL}assets/admin/js/notify/bootstrap-notify.min.js"></script>
<script src="${BASE_URL}assets/admin/js/notify/index.js"></script>

<!-- Apexchar js -->
<script src="${BASE_URL}assets/admin/js/chart/apex-chart/apex-chart1.js"></script>
<script src="${BASE_URL}assets/admin/js/chart/apex-chart/moment.min.js"></script>
<script src="${BASE_URL}assets/admin/js/chart/apex-chart/apex-chart.js"></script>
<script src="${BASE_URL}assets/admin/js/chart/apex-chart/stock-prices.js"></script>
<script src="${BASE_URL}assets/admin/js/chart/apex-chart/chart-custom1.js"></script>


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