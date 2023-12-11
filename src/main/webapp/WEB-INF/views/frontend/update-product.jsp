<%@ page import="com.ox5un5h1n3.web.trendarena.entity.User" %>
<%@ page import="com.ox5un5h1n3.web.trendarena.entity.Category" %>
<%@ page import="com.ox5un5h1n3.web.trendarena.dao.CategoryDao" %>
<%@ page import="com.ox5un5h1n3.web.trendarena.util.HibernateUtil" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>
<%@ page import="com.ox5un5h1n3.web.trendarena.util.Helper" %>
<%@ page import="com.ox5un5h1n3.web.trendarena.entity.Product" %>
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
                                            <h5>Update Product Information</h5>
                                        </div>

                                        <%
                                            Product p = (Product) request.getAttribute("product");
                                            String imagePath = application.getContextPath() + "/img/products/" + p.getpPhoto();
                                        %>

                                        <form action="${pageContext.request.contextPath}/admin/update-product/"
                                              method="POST"
                                              class="theme-form theme-form-2 mega-form"
                                              enctype="multipart/form-data">
                                            <div class="mb-4 row align-items-center">
                                                <div class="col-sm-9">
                                                    <input type="hidden" class="form-control"
                                                           placeholder="Product id" name="pId" id="pId" required
                                                           value="<%= p.getPid() %>"/>
                                                </div>
                                            </div>
                                            <div class="mb-4 row align-items-center">
                                                <label class="form-label-title col-sm-3 mb-0">Name</label>
                                                <div class="col-sm-9">
                                                    <input type="text" class="form-control"
                                                           placeholder="Product name" name="updated_pName"
                                                           id="updated_pName" required value="<%= p.getpName() %>"/>
                                                </div>
                                            </div>

                                            <div class="mb-4 row align-items-center">
                                                <label class="col-sm-3 col-form-label form-label-title">Description</label>
                                                <div class="col-sm-9">
                                                    <textarea style="height: 150px;" class="form-control"
                                                              placeholder="Product description" name="updated_pDesc"
                                                              id="updated_pDesc" required><%= p.getpDesc() %></textarea>
                                                </div>
                                            </div>

                                            <div class="mb-4 row align-items-center">
                                                <label class="col-sm-3 col-form-label form-label-title">Price</label>
                                                <div class="col-sm-9">
                                                    <input class="form-control" type="number"
                                                           placeholder="Product Price" name="updated_pPrice"
                                                           id="updated_pPrice" required value="<%= p.getpPrice() %>"/>
                                                </div>
                                            </div>

                                            <div class="mb-4 row align-items-center">
                                                <label class="col-sm-3 col-form-label form-label-title">Discount</label>
                                                <div class="col-sm-9">
                                                    <input type="number" class="form-control"
                                                           placeholder="Product discount" name="updated_pDiscount"
                                                           id="updated_pDiscount" required
                                                           value="<%= p.getpDiscount() %>"/>
                                                </div>
                                            </div>

                                            <div class="mb-4 row align-items-center">
                                                <label class="col-sm-3 col-form-label form-label-title">Quantity</label>
                                                <div class="col-sm-9">
                                                    <input type="number" class="form-control"
                                                           placeholder="Product quantity" name="updated_pQuantity"
                                                           id="updated_pQuantity" required
                                                           value="<%= p.getpQuantity() %>"/>
                                                </div>
                                            </div>


                                            <div class="mb-4 row align-items-center">
                                                <label
                                                        class="col-sm-3 col-form-label form-label-title">Category</label>
                                                <div class="col-sm-9">
                                                    <select class="js-example-basic-single w-100" name="catId"
                                                            class="form-control" id="updated_pCategory">

                                                        <%--                                                        <option selected><%= p.getCategory().getCategoryTitle()%></option>--%>
                                                        <%
                                                            for (Category c : list) {
                                                                String selected = "";
                                                                if (p.getCategory().getCategoryTitle().equals(c.getCategoryTitle())) {
                                                                    selected = "selected";
                                                                }
                                                        %>
                                                        <option value="<%= c.getCategoryId() %>" <%= selected %>><%= c.getCategoryTitle() %>
                                                        </option>
                                                        <%
                                                            }
                                                        %>
                                                    </select>
                                                </div>
                                            </div>

                                            <div class="row align-items-center">
                                                <label class="col-sm-3 col-form-label form-label-title">Image</label>
                                                <div class="col-sm-9">
                                                    <div class="align-center">
                                                        <img src="<%= imagePath %>" alt="<%= imagePath %>"
                                                             style="width: 70%;"/>
                                                    </div>


                                                    <input class="form-control form-choose" type="file"
                                                           id="updated_pPic" name="updated_pPic" required/>


                                                </div>
                                            </div>

                                            <div class="row align-items-center">
                                                <div class="mt-4 ">
                                                    <a class="btn btn-solid update-product" type="submit">Update
                                                        Product</a>
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

    document.getElementsByClassName('update-product').item(0).addEventListener('click', function () {
        let pId = document.getElementById('pId').value;
        let updated_pName = document.getElementById('updated_pName').value;
        let updated_pDesc = document.getElementById('updated_pDesc').value;
        let updated_pPrice = document.getElementById('updated_pPrice').value;
        let updated_pDiscount = document.getElementById('updated_pDiscount').value;
        let updated_pQuantity = document.getElementById('updated_pQuantity').value;
        let updated_pCategory = document.getElementById('updated_pCategory').value;


        let fileInput = document.getElementById('updated_pPic');
        let updated_pPic = fileInput.files[0];

        let formData = new FormData();
        formData.append('updated_pName', updated_pName);
        formData.append('updated_pDesc', updated_pDesc);
        formData.append('updated_pPrice', updated_pPrice);
        formData.append('updated_pDiscount', updated_pDiscount);
        formData.append('updated_pQuantity', updated_pQuantity);
        formData.append('updated_pCategory', updated_pCategory);
        // formData.append('updated_pPic', updated_pPic);

        if (updated_pName.trim() === '' ||
            updated_pDesc.trim() === '' ||
            updated_pCategory.trim() === '') {
            alert("Please fill in all fields.");
            return;
        }

// Append the image file to formData only if a file is selected
        if (fileInput.files.length > 0) {
            formData.append('updated_pPic', updated_pPic);
        }

        fetch(`${BASE_URL}admin/update-product/` + pId, {
            method: 'POST',
            body: formData
        })
            .then(response => response.text())
            .then((text) => {
                if (text === "Product Updated Successfully!") {
                    alert("Product Updated Successfully!");
                    document.location.href = "${BASE_URL}admin/products";
                } else {
                    alert(text);
                }
            });
    });

</script>

<jsp:include page="../frontend/include/admin_script_imports.jsp"/>


</body>

</html>