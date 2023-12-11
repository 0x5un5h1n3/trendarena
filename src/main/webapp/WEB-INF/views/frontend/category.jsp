<%@ page import="com.ox5un5h1n3.web.trendarena.entity.User" %>
<%@ page import="com.ox5un5h1n3.web.trendarena.entity.Category" %>
<%@ page import="com.ox5un5h1n3.web.trendarena.dao.CategoryDao" %>
<%@ page import="com.ox5un5h1n3.web.trendarena.util.HibernateUtil" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>
<%@ page import="com.ox5un5h1n3.web.trendarena.util.Helper" %>
<%
    User user = (User) session.getAttribute("userLogged");
    if (user == null) {
        response.sendRedirect(request.getContextPath() + "/login");
        return;
    } else {
        if (user.getUserType().toString().equals("USER")) {
            response.sendRedirect(request.getContextPath() + "/login");
            return;
        }
    }
%>

<%
    CategoryDao cdao = new CategoryDao(HibernateUtil.getSessionFactory());
    List<Category> categories = cdao.getCategories();

    Map<String, Long> m = Helper.getCounts(HibernateUtil.getSessionFactory());
%>

<!DOCTYPE html>
<html lang="en" dir="ltr">

<jsp:include page="../frontend/include/admin_header.jsp"/>

<body>
<!-- tap on top start -->
<div class="tap-top">
    <span class="lnr lnr-chevron-up"></span>
</div>
<!-- tap on tap end -->

<!-- page-wrapper start -->
<div class="page-wrapper compact-wrapper" id="pageWrapper">
    <jsp:include page="../frontend/include/admin_page_header.jsp"/>


    <!-- Page Body Start -->
    <div class="page-body-wrapper">
        <!-- Page Sidebar Start-->
        <jsp:include page="../frontend/include/admin_sidebar.jsp"/>
        <!-- Page Sidebar Ends-->

        <!-- Container-fluid starts-->
        <div class="page-body">
            <!-- All User Table Start -->
            <div class="container-fluid">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="card card-table">
                            <div class="card-body">
                                <div class="title-header option-title">
                                    <h5>All Category</h5>
                                    <form class="d-inline-flex">
                                        <a href=${BASE_URL}add-new-category"
                                           class="align-items-center btn btn-theme d-flex">
                                            <i data-feather="plus-square"></i>Add New
                                        </a>
                                    </form>
                                </div>

                                <div class="table-responsive category-table">
                                    <div>
                                        <table class="table all-package theme-table" id="table_id">
                                            <thead>
                                            <tr>
                                                <th>Title</th>
                                                <th>Description</th>
                                                <th>Option</th>
                                            </tr>
                                            </thead>

                                            <tbody>

                                            <%
                                                for (Category c : categories) {

                                            %>
                                            <tr>
                                                <td><%= c.getCategoryTitle() %>
                                                </td>
                                                <td><%= c.getCategoryDescriptioin() %>
                                                </td>


                                                <td>
                                                    <ul>

                                                        <li>
                                                            <a href="javascript:void(0)" data-bs-toggle="modal"
                                                               data-bs-target="#exampleModalToggle">
                                                                <a href="<%= request.getContextPath() %>/admin/delete-category/<%= c.getCategoryId() %>"><i
                                                                        class="ri-delete-bin-line"></i></a>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </td>
                                            </tr>

                                            <!-- Delete Modal Box Start -->
                                            <div class="modal fade theme-modal remove-coupon" id="exampleModalToggle"
                                                 aria-hidden="true" tabindex="-1">
                                                <div class="modal-dialog modal-dialog-centered">
                                                    <div class="modal-content">
                                                        <div class="modal-header d-block text-center">
                                                            <h5 class="modal-title w-100" id="exampleModalLabel22">Are
                                                                You Sure ?</h5>
                                                            <button type="button" class="btn-close"
                                                                    data-bs-dismiss="modal" aria-label="Close">
                                                                <i class="fas fa-times"></i>
                                                            </button>
                                                        </div>
                                                        <div class="modal-body">
                                                            <div class="remove-box">
                                                                <p>Are you sure you want to proceed with deleting this
                                                                    product?<br>
                                                                    This action cannot be undone.</p>
                                                            </div>
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button"
                                                                    class="btn btn-animation btn-md fw-bold"
                                                                    data-bs-dismiss="modal">No
                                                            </button>
                                                            <button type="button"
                                                                    class="btn btn-animation btn-md fw-bold"
                                                                    data-bs-target="#exampleModalToggle2"
                                                                    data-bs-toggle="modal" data-bs-dismiss="modal">Yes
                                                            </button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="modal fade theme-modal remove-coupon" id="exampleModalToggle2"
                                                 aria-hidden="true" tabindex="-1">
                                                <div class="modal-dialog modal-dialog-centered">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h5 class="modal-title text-center"
                                                                id="exampleModalLabel12">Done!</h5>
                                                            <button type="button" class="btn-close"
                                                                    data-bs-dismiss="modal" aria-label="Close">
                                                                <i class="fas fa-times"></i>
                                                            </button>
                                                        </div>
                                                        <div class="modal-body">
                                                            <div class="remove-box text-center">
                                                                <div class="wrapper">
                                                                    <svg class="checkmark"
                                                                         xmlns="http://www.w3.org/2000/svg"
                                                                         viewBox="0 0 52 52">
                                                                        <circle class="checkmark__circle" cx="26"
                                                                                cy="26" r="25" fill="none"/>
                                                                        <path class="checkmark__check" fill="none"
                                                                              d="M14.1 27.2l7.1 7.2 16.7-16.8"/>
                                                                    </svg>
                                                                </div>
                                                                <h4 class="text-content">It's Removed.</h4>
                                                            </div>
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button class="btn btn-primary" data-bs-toggle="modal"
                                                                    data-bs-dismiss="modal">Close
                                                            </button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Delete Modal Box End -->


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

            <!-- All Category Table Ends-->

            <jsp:include page="../frontend/include/admin_footer.jsp"/>
        </div>
        <!-- Container-fluid end -->
    </div>
    <!-- Page Body End -->
    <jsp:include page="../frontend/include/admin_logout_modal.jsp"/>

    <jsp:include page="../frontend/include/admin_script_imports.jsp"/>


</body>

</html>