<%--<%@ taglib uri="http://callidora.lk/jsp/template-inheritance" prefix="layout" %>--%>
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
    <jsp:include page="../frontend/include/admin_sidebar.jsp"/>
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

                        <%
                          String desc = p.getpDesc();
                          if(p.getpDesc().length() > 14) {
                            desc= p.getpDesc().substring(0, 14)+ "...";
                          }
                        %>

                        <td><%= desc %></td>
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
                              <a id="editicon"
                                 href="<%= request.getContextPath() %>/admin/update-product/<%= p.getPid() %>">
                                <%--                                                            <a href="javascript:void(0)">--%>
                                <i class="ri-pencil-line"></i>
                              </a>
                            </li>

                            <li>
                              <a data-bs-toggle="modal"
                                 data-bs-target="#deleteModalToggle">
                                <i class="ri-delete-bin-line"></i>
                              </a>
                            </li>

                            <!-- Delete Modal Box Start -->
                            <div class="modal fade theme-modal remove-coupon" id="deleteModalToggle" aria-hidden="true" tabindex="-1">
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
                                      <p>Are you sure you want to proceed with deleting this product?<br>
                                        This action cannot be undone.</p>
                                    </div>
                                  </div>
                                  <div class="modal-footer">
                                    <button type="button" class="btn btn-animation btn-md fw-bold" data-bs-dismiss="modal">No</button>
                                    <a href="<%= request.getContextPath() %>/admin/delete-product/<%= p.getPid() %>"><button type="button" class="btn btn-animation btn-md fw-bold" data-bs-target="#exampleModalToggle2"
                                                                                                                             data-bs-toggle="modal" data-bs-dismiss="modal">Yes</button></a>
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




<jsp:include page="../frontend/include/admin_script_imports.jsp"/>
</body>

</html>

</html>