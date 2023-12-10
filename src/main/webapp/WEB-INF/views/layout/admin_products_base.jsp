<%@ taglib uri="http://callidora.lk/jsp/template-inheritance" prefix="layout" %>
<%@page import="java.util.Map"%>
<%@page import="com.ox5un5h1n3.web.trendarena.util.Helper"%>
<%@page import="java.util.List"%>
<%@page import="com.ox5un5h1n3.web.trendarena.util.HibernateUtil"%>
<%@page import="com.ox5un5h1n3.web.trendarena.dao.*"%>
<%@page import="com.ox5un5h1n3.web.trendarena.entity.*"%>
<%@ page import="java.io.File" %>


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

    ProductDao productDao = new ProductDao(HibernateUtil.getSessionFactory());

    List<Product> product= productDao.getAllProducts();

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


    <!-- Page Body Start-->
    <div class="page-body-wrapper">
        <!-- Page Sidebar Start-->
        <div class="sidebar-wrapper">
            <div id="sidebarEffect"></div>
            <div>
                <div class="logo-wrapper logo-wrapper-center">
                    <a href="${BASE_URL}admin" data-bs-original-title="" title="">
                        <img class="img-fluid for-white"x src="${BASE_URL}assets/admin/images/logo/full-white.png" alt="logo">
                    </a>
                    <div class="back-btn">
                        <i class="fa fa-angle-left"></i>
                    </div>
                    <div class="toggle-sidebar">
                        <i class="ri-apps-line status_toggle middle sidebar-toggle"></i>
                    </div>
                </div>
                <div class="logo-icon-wrapper">
                    <a href="${BASE_URL}admin">
                        <img class="img-fluid main-logo main-white" src="${BASE_URL}assets/admin/images/logo/logo.png" alt="logo">
                        <img class="img-fluid main-logo main-dark" src="${BASE_URL}assets/admin/images/logo/logo-white.png"
                             alt="logo">
                    </a>
                </div>
                <nav class="sidebar-main">
                    <div class="left-arrow" id="left-arrow">
                        <i data-feather="arrow-left"></i>
                    </div>

                    <div id="sidebar-menu">
                        <ul class="sidebar-links" id="simple-bar">
                            <li class="back-btn"></li>

                            <li class="sidebar-list">
                                <a class="sidebar-link sidebar-title link-nav" href="${BASE_URL}admin">
                                    <i class="ri-home-line"></i>
                                    <span>Dashboard</span>
                                </a>
                            </li>

                            <li class="sidebar-list">
                                <a class="linear-icon-link sidebar-link sidebar-title" href="javascript:void(0)">
                                    <i class="ri-store-3-line"></i>
                                    <span>Product</span>
                                </a>
                                <ul class="sidebar-submenu">
                                    <li>
                                        <a href="${BASE_URL}admin/products">Products</a>
                                    </li>

                                    <li>
                                        <a href="${BASE_URL}admin/add-new-product">Add New Products</a>
                                    </li>
                                </ul>
                            </li>

                            <li class="sidebar-list">
                                <a class="linear-icon-link sidebar-link sidebar-title" href="javascript:void(0)">
                                    <i class="ri-list-check-2"></i>
                                    <span>Category</span>
                                </a>
                                <ul class="sidebar-submenu">
                                    <li>
                                        <a href="category.html">Category List</a>
                                    </li>

                                    <li>
                                        <a href="add-new-category.html">Add New Category</a>
                                    </li>
                                </ul>
                            </li>

                            <%--                            <li class="sidebar-list">--%>
                            <%--                                <a class="linear-icon-link sidebar-link sidebar-title" href="javascript:void(0)">--%>
                            <%--                                    <i class="ri-list-settings-line"></i>--%>
                            <%--                                    <span>Attributes</span>--%>
                            <%--                                </a>--%>
                            <%--                                <ul class="sidebar-submenu">--%>
                            <%--                                    <li>--%>
                            <%--                                        <a href="attributes.html">Attributes</a>--%>
                            <%--                                    </li>--%>

                            <%--                                    <li>--%>
                            <%--                                        <a href="add-new-attributes.html">Add Attributes</a>--%>
                            <%--                                    </li>--%>
                            <%--                                </ul>--%>
                            <%--                            </li>--%>

                            <li class="sidebar-list">
                                <a class="sidebar-link sidebar-title" href="javascript:void(0)">
                                    <i class="ri-user-3-line"></i>
                                    <span>Users</span>
                                </a>
                                <ul class="sidebar-submenu">
                                    <li>
                                        <a href="all-users.html">All users</a>
                                    </li>
                                    <li>
                                        <a href="add-new-user.html">Add new user</a>
                                    </li>
                                </ul>
                            </li>

                            <li class="sidebar-list">
                                <a class="sidebar-link sidebar-title" href="javascript:void(0)">
                                    <i class="ri-user-3-line"></i>
                                    <span>Roles</span>
                                </a>
                                <ul class="sidebar-submenu">
                                    <li>
                                        <a href="role.html">All roles</a>
                                    </li>
                                    <li>
                                        <a href="create-role.html">Create Role</a>
                                    </li>
                                </ul>
                            </li>

                            <%--                            <li class="sidebar-list">--%>
                            <%--                                <a class="sidebar-link sidebar-title link-nav" href="media.html">--%>
                            <%--                                    <i class="ri-price-tag-3-line"></i>--%>
                            <%--                                    <span>Media</span>--%>
                            <%--                                </a>--%>
                            <%--                            </li>--%>

                            <li class="sidebar-list">
                                <a class="sidebar-link sidebar-title" href="javascript:void(0)">
                                    <i class="ri-archive-line"></i>
                                    <span>Orders</span>
                                </a>
                                <ul class="sidebar-submenu">
                                    <li>
                                        <a href="order-list.html">Order List</a>
                                    </li>
                                    <li>
                                        <a href="order-detail.html">Order Detail</a>
                                    </li>
                                    <li>
                                        <a href="order-tracking.html">Order Tracking</a>
                                    </li>
                                </ul>
                            </li>



                            <li class="sidebar-list">
                                <a class="linear-icon-link sidebar-link sidebar-title" href="javascript:void(0)">
                                    <i class="ri-settings-line"></i>
                                    <span>Settings</span>
                                </a>
                                <ul class="sidebar-submenu">
                                    <li>
                                        <a href="profile-setting.html">Profile Setting</a>
                                    </li>
                                </ul>
                            </li>

                            <li class="sidebar-list">
                                <a class="sidebar-link sidebar-title link-nav" href="reports.html">
                                    <i class="ri-file-chart-line"></i>
                                    <span>Reports</span>
                                </a>
                            </li>

                            <%--                            <li class="sidebar-list">--%>
                            <%--                                <a class="sidebar-link sidebar-title link-nav" href="list-page.html">--%>
                            <%--                                    <i class="ri-list-check"></i>--%>
                            <%--                                    <span>List Page</span>--%>
                            <%--                                </a>--%>
                            <%--                            </li>--%>
                        </ul>
                    </div>

                    <div class="right-arrow" id="right-arrow">
                        <i data-feather="arrow-right"></i>
                    </div>
                </nav>
            </div>
        </div>
        <!-- Page Sidebar Ends-->

        <!-- Container-fluid start-->
        <div class="page-body">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="card card-table">
                            <div class="card-body">
                                <div class="title-header option-title d-sm-flex d-block">
                                    <h5>Products List</h5>
                                    <div class="right-options">
                                        <ul>
                                            <li>
                                                <a class="btn btn-solid" href="${BASE_URL}admin/add-new-product">Add Product</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>



                                <div>
                                    <div class="table-responsive">
                                        <table class="table all-package theme-table table-product" id="table_id">
                                            <thead>
                                            <tr>
                                                <th>Product Image</th>
                                                <th>Product Name</th>
                                                <th>Category</th>
                                                <th>Description</th>
                                                <th>Price</th>
<%--                                                <th>Status</th>--%>
                                                <th>Option</th>
                                            </tr>
                                            </thead>

                                            <tbody>

                                            <%
                                                for (Product p : product) {

                                                    String directoryPath = request.getServletContext().getRealPath("img") + File.separator + "products";
                                            %>
                                            <tr>
                                                <td>
                                                    <div class="table-image">
                                                        <img src="../img/products/<%= p.getpPhoto()%>" class="img-fluid"
                                                             alt="">
                                                    </div>
                                                </td>

                                                <td><%= p.getpName() %></td>

                                                <td><%= p.getCategory().getCategoryTitle() %></td>
                                                <td><%= p.getpDesc().substring(0, 14) %>...</td>


<%--                                                <td>FIX THIS</td>--%>

                                                <td class="td-price">$<%= p.getpPrice() %></td>

<%--                                                <td class="status-danger">--%>
<%--                                                    <span>Pending</span>--%>
<%--                                                </td>--%>

                                                <td>
                                                    <ul>
<%--                                                        <li>--%>
<%--                                                            <a href="order-detail.html">--%>
<%--                                                                <i class="ri-eye-line"></i>--%>
<%--                                                            </a>--%>
<%--                                                        </li>--%>

                                                        <li>
                                                            <a id="editicon" href="<%= request.getContextPath() %>/admin/update-product/<%= p.getPid() %>">
<%--                                                            <a href="javascript:void(0)">--%>
                                                                <i class="ri-pencil-line"></i>
                                                            </a>
                                                        </li>

                                                        <li>
                                                            <a href="javascript:void(0)" data-bs-toggle="modal"
                                                               data-bs-target="#exampleModalToggle">
                                                                <i class="ri-delete-bin-line"></i>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </td>
                                            </tr>
                                            <%
                                                }
                                            %>


                                            </tbody>
                                        </table>
                                    </div>
                                </div>


                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Container-fluid Ends-->



            <jsp:include page="../frontend/include/admin_footer.jsp"/>

        </div>
        <!-- Container-fluid Ends-->

        <!-- index body start -->
<!-- index body end -->

</div>
<!-- Page Body End -->
</div>
<!-- page-wrapper End-->



<jsp:include page="../frontend/include/admin_logout_modal.jsp"/>

<!-- Delete Modal Box Start -->
<div class="modal fade theme-modal remove-coupon" id="exampleModalToggle" aria-hidden="true" tabindex="-1">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header d-block text-center">
                <h5 class="modal-title w-100" id="exampleModalLabel22">Are You Sure ?</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                    <i class="fas fa-times"></i>
                </button>
            </div>
            <div class="modal-body">
                <div class="remove-box">
                    <p>The permission for the use/group, preview is inherited from the object, object will create a
                        new permission for this object</p>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-animation btn-md fw-bold" data-bs-dismiss="modal">No</button>
                <button type="button" class="btn btn-animation btn-md fw-bold" data-bs-target="#exampleModalToggle2"
                        data-bs-toggle="modal" data-bs-dismiss="modal">Yes</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade theme-modal remove-coupon" id="exampleModalToggle2" aria-hidden="true" tabindex="-1">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title text-center" id="exampleModalLabel12">Done!</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                    <i class="fas fa-times"></i>
                </button>
            </div>
            <div class="modal-body">
                <div class="remove-box text-center">
                    <div class="wrapper">
                        <svg class="checkmark" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 52 52">
                            <circle class="checkmark__circle" cx="26" cy="26" r="25" fill="none" />
                            <path class="checkmark__check" fill="none" d="M14.1 27.2l7.1 7.2 16.7-16.8" />
                        </svg>
                    </div>
                    <h4 class="text-content">It's Removed.</h4>
                </div>
            </div>
            <div class="modal-footer">
                <button class="btn btn-primary" data-bs-toggle="modal" data-bs-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>
<!-- Delete Modal Box End -->


<jsp:include page="../frontend/include/admin_script_imports.jsp"/>
</body>

</html>

</html>