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
    List<Category> list = cdao.getCategories();

    Map<String, Long> m= Helper.getCounts(HibernateUtil.getSessionFactory());
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

    <!-- Page Body start -->
    <div class="page-body-wrapper">
        <!-- Page Sidebar Start-->
        <jsp:include page="../frontend/include/admin_sidebar.jsp"/>
        <!-- Page Sidebar Ends-->

        <div class="page-body">


            <!-- Settings Section Start -->
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-12">
                            <div class="row">
                                <div class="col-sm-12">
                                    <!-- Details Start -->
                                    <div class="card">
                                        <div class="card-body">
                                            <div class="title-header option-title">
                                                <h5>Profile Setting</h5>
                                            </div>
                                            <form class="theme-form theme-form-2 mega-form">
                                                <div class="row">
                                                    <div class="mb-4 row align-items-center">
                                                        <label class="form-label-title col-sm-2 mb-0">First Name</label>
                                                        <div class="col-sm-10">
                                                            <input class="form-control" type="text"
                                                                   placeholder="Enter Your First Name">
                                                        </div>
                                                    </div>

                                                    <div class="mb-4 row align-items-center">
                                                        <label class="form-label-title col-sm-2 mb-0">Last Name</label>
                                                        <div class="col-sm-10">
                                                            <input class="form-control" type="text"
                                                                   placeholder="Enter Your Last Name">
                                                        </div>
                                                    </div>

                                                    <div class="mb-4 row align-items-center">
                                                        <label class="form-label-title col-sm-2 mb-0">Your Phone
                                                            Number</label>
                                                        <div class="col-sm-10">
                                                            <input class="form-control" type="number"
                                                                   placeholder="Enter Your Number">
                                                        </div>
                                                    </div>

                                                    <div class="mb-4 row align-items-center">
                                                        <label class="form-label-title col-sm-2 mb-0">Enter Email
                                                            Address</label>
                                                        <div class="col-sm-10">
                                                            <input class="form-control" type="email"
                                                                   placeholder="Enter Your Email Address">
                                                        </div>
                                                    </div>

                                                    <div class="mb-4 row align-items-center">
                                                        <label class="form-label-title col-sm-2 mb-0">Password</label>
                                                        <div class="col-sm-10">
                                                            <input class="form-control" type="password"
                                                                   placeholder="Enter Your Password">
                                                        </div>
                                                    </div>

                                                    <div class="mb-4 row align-items-center">
                                                        <label class="form-label-title col-sm-2 mb-0">Confirm
                                                            Password</label>
                                                        <div class="col-sm-10">
                                                            <input class="form-control" type="password"
                                                                   placeholder="Enter Your Confirm Passowrd">
                                                        </div>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                    <!-- Details End -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            <!-- Settings Section End -->

            <jsp:include page="../frontend/include/admin_footer.jsp"/>
        </div>
        <!-- Container-fluid End -->
    </div>
    <!-- Page Body End -->
</div>
<!-- page-wrapper End -->

<jsp:include page="../frontend/include/admin_logout_modal.jsp"/>

    <script type="text/javascript">
        document.getElementsByClassName('add-new-category').item(0).addEventListener('click', function () {
            let cTitle = document.getElementById('cTitle').value;
            let cDesc = document.getElementById('cDesc').value;


            let formData = new FormData();
            formData.append('cTitle', cTitle);
            formData.append('cDesc', cDesc);

            if(cTitle.trim() === '' ||
                cDesc.trim() === '') {
                alert("Please fill in all fields.");
                return;
            }



            fetch(`${BASE_URL}admin/add-new-category`, {
                method: 'post',
                body: formData
            })
                .then(response => response.text())
                .then((text) => {
                    if (text === "Category Saved Successfully!") {
                        alert("Category Saved Successfully!");
                        document.location.href="${BASE_URL}admin/category"
                    } else {
                        alert(text);
                    }
                });
        });

    </script>

<jsp:include page="../frontend/include/admin_script_imports.jsp"/>


</body>

</html>