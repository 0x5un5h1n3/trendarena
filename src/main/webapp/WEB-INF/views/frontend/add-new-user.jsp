<%@ page import="com.ox5un5h1n3.web.trendarena.entity.User" %>
<%@ page import="com.ox5un5h1n3.web.trendarena.entity.Category" %>
<%@ page import="com.ox5un5h1n3.web.trendarena.dao.CategoryDao" %>
<%@ page import="com.ox5un5h1n3.web.trendarena.util.HibernateUtil" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>
<%@ page import="com.ox5un5h1n3.web.trendarena.util.Helper" %>
<%@ page import="com.ox5un5h1n3.web.trendarena.entity.Product" %>
<%@ page import="com.ox5un5h1n3.web.trendarena.entity.UserType" %>
<%@ page import="com.ox5un5h1n3.web.trendarena.dao.UserDao" %>
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

            <!-- New Product Add Start -->
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12">
                        <div class="row">
                            <div class="col-sm-8 m-auto">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="card-header-2">
                                            <h5>User Information</h5>
                                        </div>

                                        <form action="${pageContext.request.contextPath}/admin/update-product/"
                                              method="POST"
                                              class="theme-form theme-form-2 mega-form"
                                              enctype="multipart/form-data">
                                            <div class="mb-4 row align-items-center">
                                                <div class="col-sm-9">
                                                    <input type="hidden" class="form-control"
                                                           placeholder="User id" name="uId" id="uId" required
                                                           value=""/>
                                                </div>
                                            </div>
                                            <div class="mb-4 row align-items-center">
                                                <label class="form-label-title col-sm-3 mb-0">Name</label>
                                                <div class="col-sm-9">
                                                    <input type="text" class="form-control"
                                                           placeholder="User name" name="uName"
                                                           id="uName" required value=""/>
                                                </div>
                                            </div>

                                            <div class="mb-4 row align-items-center">
                                                <label class="col-sm-3 col-form-label form-label-title">Email</label>
                                                <div class="col-sm-9">
                                                    <input type="text" class="form-control"
                                                           placeholder="User email" name="uEmail"
                                                           id="uEmail" required value=""/>
                                                </div>
                                            </div>

                                            <div class="mb-4 row align-items-center">
                                                <label class="col-sm-3 col-form-label form-label-title">Phone</label>
                                                <div class="col-sm-9">
                                                    <input class="form-control" type="number"
                                                           placeholder="User Phone" name="uPhone"
                                                           id="uPhone" required value=""/>
                                                </div>
                                            </div>

                                            <div class="mb-4 row align-items-center">
                                                <label class="col-sm-3 col-form-label form-label-title">Address</label>
                                                <div class="col-sm-9">
                                                    <textarea style="height: 150px;" class="form-control"
                                                              placeholder="User address" name="uAddress"
                                                              id="uAddress" required></textarea>
                                                </div>
                                            </div>

                                            <div class="mb-4 row align-items-center">
                                                <label class="col-sm-3 col-form-label form-label-title">City</label>
                                                <div class="col-sm-9">
                                                    <input type="text" class="form-control"
                                                           placeholder="User city" name="uCity"
                                                           id="uCity" required value=""/>
                                                </div>
                                            </div>

                                            <div class="mb-4 row align-items-center">
                                                <label class="col-sm-3 col-form-label form-label-title">Postal Code</label>
                                                <div class="col-sm-9">
                                                    <input type="text" class="form-control"
                                                           placeholder="User postal code" name="uPostalCode"
                                                           id="uPostalCode" required value=""/>
                                                </div>
                                            </div>


                                            <div class="mb-4 row align-items-center">
                                                <label
                                                        class="col-sm-3 col-form-label form-label-title">User Type</label>
                                                <div class="col-sm-9">
                                                    <select class="js-example-basic-single w-100" name="catId"
                                                            class="form-control" id="uUserType">

                                                        <option value="USER">USER</option>
                                                        <option value="ADMIN">ADMIN</option>
                                                    </select>
                                                </div>
                                            </div>

                                            <div class="mb-4 row align-items-center">
                                                <label class="col-sm-3 col-form-label form-label-title">Password</label>
                                                <div class="col-sm-9">
                                                    <input type="password" class="form-control"
                                                           placeholder="User password" name="uPassword"
                                                           id="uPassword" required value=""/>
                                                </div>
                                            </div>

                                            <div class="mb-4 row align-items-center">
                                                <label class="col-sm-3 col-form-label form-label-title">Repeat Password</label>
                                                <div class="col-sm-9">
                                                    <input type="password" class="form-control"
                                                           placeholder="Repeat user password" name="uRePassword"
                                                           id="uRePassword" required value=""/>
                                                </div>
                                            </div>


                                            <div class="row align-items-center">
                                                <div class="mt-4 ">
                                                    <a class="btn btn-solid add-new-user" type="submit">Add
                                                        User</a>
                                                </div>
                                            </div>

                                        </form>
                                    </div>
                                </div>


                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- New Product Add End -->

            <jsp:include page="../frontend/include/admin_footer.jsp"/>
        </div>
        <!-- Container-fluid End -->
    </div>
    <!-- Page Body End -->
</div>
<!-- page-wrapper End -->

<jsp:include page="../frontend/include/admin_logout_modal.jsp"/>

<script type="text/javascript">

    document.getElementsByClassName('add-new-user').item(0).addEventListener('click', function () {
        let uId = document.getElementById('uId').value;
        let uName = document.getElementById('uName').value;
        let uEmail = document.getElementById('uEmail').value;
        let uPhone = document.getElementById('uPhone').value;
        let uAddress = document.getElementById('uAddress').value;
        let uCity = document.getElementById('uCity').value;
        let uPostalCode = document.getElementById('uPostalCode').value;
        let uUserType = document.getElementById('uUserType').value;
        let uPassword = document.getElementById('uPassword').value;
        let uRePassword = document.getElementById('uRePassword').value;


        let formData = new FormData();
        formData.append('uName', uName);
        formData.append('uEmail', uEmail);
        formData.append('uPhone', uPhone);
        formData.append('uAddress', uAddress);
        formData.append('uCity', uCity);
        formData.append('uPostalCode', uPostalCode);
        formData.append('uUserType', uUserType);
        formData.append('uPassword', uPassword);


        if (uName.trim() === '' ||
            uEmail.trim() === '' ||
            uPhone.trim() === '' ||
            uAddress.trim() === '' ||
            uCity.trim() === '' ||
            uPostalCode.trim() === '' ||
            uPassword.trim() === '' ||
            uRePassword.trim() === '') {
            alert("Please fill in all fields.");
            return;
        }

        // Password length validation
        if (uPassword.length <= 4) {
            alert("Password must be longer than 4 characters");
            return;
        }

        // // Password match validation
        // if (!uPassword.equals(uRePassword)) {
        //     alert("Password does not match");
        //     return;
        // }

        // Email validation
        if (!isValidEmail(uEmail)) {
            alert("Invalid email address");
            return;
        }

        function isValidEmail(uEmail) {
            const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            return emailRegex.test(uEmail);
        }


        fetch(`${BASE_URL}admin/add-new-user/`, {
            method: 'POST',
            body: formData
        })
            .then(response => response.text())
            .then((text) => {
                if (text === "User Saved Successfully!") {
                    alert("User Saved Successfully!");
                    document.location.href = "${BASE_URL}admin/all-users";
                } else {
                    alert(text);
                }
            });
    });

</script>

<jsp:include page="../frontend/include/admin_script_imports.jsp"/>


</body>

</html>