<%@ page import="com.ox5un5h1n3.web.trendarena.entity.User" %><%
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


<!-- Page Header Start-->
<div class="page-header">
  <div class="header-wrapper m-0">
    <div class="header-logo-wrapper p-0">
      <div class="logo-wrapper">
        <a href="${BASE_URL}admin">
          <img class="img-fluid main-logo" src="${BASE_URL}assets/admin/images/logo/1.png" alt="logo">
          <img class="img-fluid white-logo" src="${BASE_URL}assets/admin/images/logo/1-white.png"
               alt="logo">
        </a>
      </div>
      <div class="toggle-sidebar">
        <i class="status_toggle middle sidebar-toggle" data-feather="align-center"></i>
        <a href="${BASE_URL}admin">
          <img src="${BASE_URL}assets/admin/images/logo/1.png" class="img-fluid" alt="">
        </a>
      </div>
    </div>

    <div class="nav-right col-6 pull-right right-header p-0">
      <ul class="nav-menus">
        <li>
                            <span class="header-search">
                                <i class="ri-search-line"></i>
                            </span>
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
              <span><%=user.getUserType().toString().equals("admin")?"admin":user.getName() %></span>

              <p class="mb-0 font-roboto">Admin<i class="middle ri-arrow-down-s-line"></i></p>
            </div>
          </div>
          <ul class="profile-dropdown onhover-show-div">
            <li>
              <a href="${BASE_URL}admin/all-users">
                <i data-feather="users"></i>
                <span>Users</span>
              </a>
            </li>
            <li>
              <a href="${BASE_URL}admin/order-list">
                <i data-feather="archive"></i>
                <span>Orders</span>
              </a>
            </li>
            <li>
              <a href="${BASE_URL}admin/profile-setting">
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