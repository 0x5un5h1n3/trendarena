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
                                            <h5>Update User Information</h5>
                                        </div>

                                        <%
                                            User u = (User) request.getAttribute("user");
                                        %>

                                        <form action="${pageContext.request.contextPath}/admin/update-product/"
                                              method="POST"
                                              class="theme-form theme-form-2 mega-form"
                                              enctype="multipart/form-data">
                                            <div class="mb-4 row align-items-center">
                                                <div class="col-sm-9">
                                                    <input type="hidden" class="form-control"
                                                           placeholder="User id" name="uId" id="uId" required
                                                           value="<%= u.getId() %>"/>
                                                </div>
                                            </div>
                                            <div class="mb-4 row align-items-center">
                                                <label class="form-label-title col-sm-3 mb-0">Name</label>
                                                <div class="col-sm-9">
                                                    <input type="text" class="form-control"
                                                           placeholder="User name" name="updated_uName"
                                                           id="updated_uName" required value="<%= u.getName() %>"/>
                                                </div>
                                            </div>

                                            <div class="mb-4 row align-items-center">
                                                <label class="col-sm-3 col-form-label form-label-title">Email</label>
                                                <div class="col-sm-9">
                                                    <input type="text" class="form-control"
                                                           placeholder="User email" name="updated_uEmail"
                                                           id="updated_uEmail" required value="<%= u.getEmail() %>"/>
                                                </div>
                                            </div>

                                            <div class="mb-4 row align-items-center">
                                                <label class="col-sm-3 col-form-label form-label-title">Phone</label>
                                                <div class="col-sm-9">
                                                    <input class="form-control" type="number"
                                                           placeholder="User Phone" name="updated_uPhone"
                                                           id="updated_uPhone" required value="<%= u.getPhone() %>"/>
                                                </div>
                                            </div>

                                            <div class="mb-4 row align-items-center">
                                                <label class="col-sm-3 col-form-label form-label-title">Address</label>
                                                <div class="col-sm-9">
                                                    <textarea style="height: 150px;" class="form-control"
                                                              placeholder="User address" name="updated_uAddress"
                                                              id="updated_uAddress" required><%= u.getAddress() %></textarea>
                                                </div>
                                            </div>

                                            <div class="mb-4 row align-items-center">
                                                <label class="col-sm-3 col-form-label form-label-title">City</label>
                                                <div class="col-sm-9">
                                                    <input type="text" class="form-control"
                                                           placeholder="User name" name="updated_uCity"
                                                           id="updated_uCity" required value="<%= u.getCity() %>"/>
                                                </div>
                                            </div>

                                            <div class="mb-4 row align-items-center">
                                                <label class="col-sm-3 col-form-label form-label-title">Postal Code</label>
                                                <div class="col-sm-9">
                                                    <input type="text" class="form-control"
                                                           placeholder="User name" name="updated_uPostalCode"
                                                           id="updated_uPostalCode" required value="<%= u.getPost_code() %>"/>
                                                </div>
                                            </div>


                                            <div class="mb-4 row align-items-center">
                                                <label
                                                        class="col-sm-3 col-form-label form-label-title">User Type</label>
                                                <div class="col-sm-9">
                                                    <select class="js-example-basic-single w-100" name="catId"
                                                            class="form-control" id="updated_uUserType">

                                                        <%
                                                            String selected = "";
                                                            String otherUserType = "";
                                                                if (u.getUserType().toString().equals("USER")) {
                                                                    selected = "USER";
                                                                }else if (u.getUserType().toString().equals("ADMIN")) {
                                                                    selected = "ADMIN";
                                                                }

                                                                if(selected.equals("ADMIN")){
                                                                    otherUserType = "USER";
                                                                } else if(selected.equals("USER")){
                                                                    otherUserType = "ADMIN";
                                                                }
                                                        %>
                                                        <option value="<%= u.getUserType() %>" <%= selected %>><%= u.getUserType() %></option>
                                                        <option value="<%= otherUserType %>"><%= otherUserType %></option>
                                                    </select>
                                                </div>
                                            </div>



                                            <div class="row align-items-center">
                                                <div class="mt-4 ">
                                                    <a class="btn btn-solid update-user" type="submit">Update
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

    document.getElementsByClassName('update-user').item(0).addEventListener('click', function () {
        let uId = document.getElementById('uId').value;
        let updated_uName = document.getElementById('updated_uName').value;
        let updated_uEmail = document.getElementById('updated_uEmail').value;
        let updated_uPhone = document.getElementById('updated_uPhone').value;
        let updated_uAddress = document.getElementById('updated_uAddress').value;
        let updated_uCity = document.getElementById('updated_uCity').value;
        let updated_uPostalCode = document.getElementById('updated_uPostalCode').value;
        let updated_uUserType = document.getElementById('updated_uUserType').value;


        let formData = new FormData();
        formData.append('updated_uName', updated_uName);
        formData.append('updated_uEmail', updated_uEmail);
        formData.append('updated_uPhone', updated_uPhone);
        formData.append('updated_uAddress', updated_uAddress);
        formData.append('updated_uCity', updated_uCity);
        formData.append('updated_uPostalCode', updated_uPostalCode);
        formData.append('updated_uUserType', updated_uUserType);


        if (updated_uName.trim() === '' ||
            updated_uEmail.trim() === '' ||
            updated_uPhone.trim() === '' ||
            updated_uAddress.trim() === '' ||
            updated_uCity.trim() === '' ||
            updated_uPostalCode.trim() === '') {
            alert("Please fill in all fields.");
            return;
        }


        fetch(`${BASE_URL}admin/update-user/` + pId, {
            method: 'POST',
            body: formData
        })
            .then(response => response.text())
            .then((text) => {
                if (text === "User Updated Successfully!") {
                    alert("User Updated Successfully!");
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