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

          <%--                            <li class="sidebar-list">--%>
          <%--                                <a class="linear-icon-link sidebar-link sidebar-title" href="javascript:void(0)">--%>
          <%--                                    <i class="ri-focus-3-line"></i>--%>
          <%--                                    <span>Localization</span>--%>
          <%--                                </a>--%>
          <%--                                <ul class="sidebar-submenu">--%>
          <%--                                    <li>--%>
          <%--                                        <a href="translation.html">Translation</a>--%>
          <%--                                    </li>--%>

          <%--                                    <li>--%>
          <%--                                        <a href="currency-rates.html">Currency Rates</a>--%>
          <%--                                    </li>--%>
          <%--                                </ul>--%>
          <%--                            </li>--%>

          <%--                            <li class="sidebar-list">--%>
          <%--                                <a class="linear-icon-link sidebar-link sidebar-title" href="javascript:void(0)">--%>
          <%--                                    <i class="ri-price-tag-3-line"></i>--%>
          <%--                                    <span>Coupons</span>--%>
          <%--                                </a>--%>
          <%--                                <ul class="sidebar-submenu">--%>
          <%--                                    <li>--%>
          <%--                                        <a href="coupon-list.html">Coupon List</a>--%>
          <%--                                    </li>--%>

          <%--                                    <li>--%>
          <%--                                        <a href="create-coupon.html">Create Coupon</a>--%>
          <%--                                    </li>--%>
          <%--                                </ul>--%>
          <%--                            </li>--%>

          <%--                            <li class="sidebar-list">--%>
          <%--                                <a class="sidebar-link sidebar-title link-nav" href="taxes.html">--%>
          <%--                                    <i class="ri-price-tag-3-line"></i>--%>
          <%--                                    <span>Tax</span>--%>
          <%--                                </a>--%>
          <%--                            </li>--%>

          <%--                            <li class="sidebar-list">--%>
          <%--                                <a class="sidebar-link sidebar-title link-nav" href="product-review.html">--%>
          <%--                                    <i class="ri-star-line"></i>--%>
          <%--                                    <span>Product Review</span>--%>
          <%--                                </a>--%>
          <%--                            </li>--%>

          <%--                            <li class="sidebar-list">--%>
          <%--                                <a class="sidebar-link sidebar-title link-nav" href="support-ticket.html">--%>
          <%--                                    <i class="ri-phone-line"></i>--%>
          <%--                                    <span>Support Ticket</span>--%>
          <%--                                </a>--%>
          <%--                            </li>--%>

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