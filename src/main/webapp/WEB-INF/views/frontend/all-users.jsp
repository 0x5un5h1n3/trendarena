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
  UserDao udao = new UserDao(HibernateUtil.getSessionFactory());
  List<User> users = udao.getAllUser();

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

    <!-- Container-fluid starts-->
    <div class="page-body">
      <!-- All User Table Start -->
      <div class="container-fluid">
        <div class="row">
          <div class="col-sm-12">
            <div class="card card-table">
              <div class="card-body">
                <div class="title-header option-title">
                  <h5>All Users</h5>
                  <form class="d-inline-flex">
                    <a href="${BASE_URL}admin/add-new-user" class="align-items-center btn btn-theme d-flex">
                      <i data-feather="plus"></i>Add New
                    </a>
                  </form>
                </div>

                <div class="table-responsive table-product">
                  <table class="table all-package theme-table" id="table_id">
                    <thead>



                    <tr>
                      <th>Name</th>
                      <th>User Type</th>
                      <th>Phone</th>
                      <th>Email</th>
                      <th>Option</th>
                    </tr>
                    </thead>

                    <tbody>
                    <%
                      for (User u : users) {
                    %>
                    <tr>

                      <td><%= u.getName() %></td>
                      <td><%= u.getUserType() %></td>
                      <td><%= u.getPhone() %></td>
                      <td><%= u.getEmail() %></td>

                      <td>
                        <ul>

                          <li>
                            <a href="<%= request.getContextPath() %>/admin/update-user/<%= u.getId() %>">
                              <i class="ri-pencil-line"></i>
                            </a>
                          </li>

                          <li>
                            <a href="<%= request.getContextPath() %>/admin/delete-user/<%= u.getId() %>" >
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
      <!-- All User Table Ends-->

      <div class="container-fluid">
        <jsp:include page="../frontend/include/admin_footer.jsp"/>
      </div>
    </div>
    <!-- Container-fluid end -->


  </div>
  <!-- Page Body End -->
</div>
<!-- page-wrapper End-->



<jsp:include page="../frontend/include/admin_logout_modal.jsp"/>




<jsp:include page="../frontend/include/admin_script_imports.jsp"/>
</body>

</html>

</html>