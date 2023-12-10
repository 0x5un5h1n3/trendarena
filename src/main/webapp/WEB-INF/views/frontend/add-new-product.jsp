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
        <div class="sidebar-wrapper">
            <div id="sidebarEffect"></div>
            <div>
                <div class="logo-wrapper logo-wrapper-center">
                    <a href="index.html" data-bs-original-title="" title="">
                        <img class="img-fluid for-white" src="${BASE_URL}assets/admin/images/logo/full-white.png"
                             alt="logo">
                    </a>
                    <div class="back-btn">
                        <i class="fa fa-angle-left"></i>
                    </div>
                    <div class="toggle-sidebar">
                        <i class="ri-apps-line status_toggle middle sidebar-toggle"></i>
                    </div>
                </div>
                <div class="logo-icon-wrapper">
                    <a href="index.html">
                        <img class="img-fluid main-logo main-white"
                             src="${BASE_URL}assets/admin/images/logo/1-white.png" alt="logo">
                        <img class="img-fluid main-logo main-dark"
                             src="${BASE_URL}assets/admin/images/logo/logo-white.png"
                             alt="logo">
                    </a>
                </div>
                <nav class="sidebar-main">
                    <div class="left-arrow" id="left-arrow">
                        <i data-feather="arrow-left"></i>
                    </div>

                    <jsp:include page="../frontend/include/admin_sidebar.jsp"/>

                    <div class="right-arrow" id="right-arrow">
                        <i data-feather="arrow-right"></i>
                    </div>
                </nav>
            </div>
        </div>
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
                                            <h5>Product Information</h5>
                                        </div>

                                        <form class="theme-form theme-form-2 mega-form"
                                              enctype="multipart/form-data">
                                            <div class="mb-4 row align-items-center">
                                                <label class="form-label-title col-sm-3 mb-0">Name</label>
                                                <div class="col-sm-9">
                                                    <input type="text" class="form-control"
                                                           placeholder="Product name" name="pName" id="pName" required />
                                                </div>
                                            </div>

                                            <div class="mb-4 row align-items-center">
                                                <label class="col-sm-3 col-form-label form-label-title">Description</label>
                                                <div class="col-sm-9">
                                                    <textarea style="height: 150px;" class="form-control"
                                                              placeholder="Product description" name="pDesc" id="pDesc" required></textarea>
                                                </div>
                                            </div>

                                            <div class="mb-4 row align-items-center">
                                                <label class="col-sm-3 col-form-label form-label-title">Price</label>
                                                <div class="col-sm-9">
                                                    <input class="form-control" type="number" placeholder="Product Price" name="pPrice" id="pPrice" required />
                                                </div>
                                            </div>

                                            <div class="mb-4 row align-items-center">
                                                <label class="col-sm-3 col-form-label form-label-title">Discount</label>
                                                <div class="col-sm-9">
                                                    <input type="number" class="form-control"
                                                           placeholder="Product discount" name="pDiscount" id="pDiscount" required />
                                                </div>
                                            </div>

                                            <div class="mb-4 row align-items-center">
                                                <label class="col-sm-3 col-form-label form-label-title">Quantity</label>
                                                <div class="col-sm-9">
                                                    <input type="number" class="form-control"
                                                           placeholder="Product quantity" name="pQuantity" id="pQuantity" required />
                                                </div>
                                            </div>


                                            <div class="mb-4 row align-items-center">
                                                <label
                                                        class="col-sm-3 col-form-label form-label-title">Category</label>
                                                <div class="col-sm-9">
                                                    <select class="js-example-basic-single w-100" name="catId" class="form-control" id="pCategory">

                                                            <%
                                                                for (Category c : list) {
                                                            %>
                                                            <option value="<%=c.getCategoryId()%>"><%=c.getCategoryTitle()%></option>
                                                            <%
                                                                }
                                                            %>
                                                        </select>
                                                </div>
                                            </div>

                                            <div class="row align-items-center">
                                                <label class="col-sm-3 col-form-label form-label-title">Image</label>
                                                <div class="col-sm-9">
                                                    <input class="form-control form-choose" type="file" id="pPic" name="pPic" required />
                                                </div>
                                            </div>

                                            <div class="row align-items-center">
                                                <div class="mt-4 ">
                                                    <a class="btn btn-solid add-new-product" type="submit">Add Product</a>
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
        document.getElementsByClassName('add-new-product').item(0).addEventListener('click', function () {
            let pName = document.getElementById('pName').value;
            let pDesc = document.getElementById('pDesc').value;
            let pPrice = document.getElementById('pPrice').value;
            let pDiscount = document.getElementById('pDiscount').value;
            let pQuantity = document.getElementById('pQuantity').value;
            let pCategory = document.getElementById('pCategory').value;

            let fileInput = document.getElementById('pPic');
            let pPic = fileInput.files[0];

            let formData = new FormData();
            formData.append('pName', pName);
            formData.append('pDesc', pDesc);
            formData.append('pPrice', pPrice);
            formData.append('pDiscount', pDiscount);
            formData.append('pQuantity', pQuantity);
            formData.append('pCategory', pCategory);
            formData.append('pPic', pPic);

            if(pName.trim() === '' ||
                pDesc.trim() === '' ||
                pCategory.trim() === '') {
                alert("Please fill in all fields.");
                return;
            }



            fetch(`${BASE_URL}admin/add-new-product`, {
                method: 'post',
                body: formData
            })
                .then(response => response.text())
                .then((text) => {
                    if (text === "Product Added Successfully!") {
                        alert("Product Added Successfully!");
                        document.location.href="${BASE_URL}admin/products"
                    } else {
                        alert(text);
                    }
                });
        });

    </script>

<jsp:include page="../frontend/include/admin_script_imports.jsp"/>


</body>

</html>