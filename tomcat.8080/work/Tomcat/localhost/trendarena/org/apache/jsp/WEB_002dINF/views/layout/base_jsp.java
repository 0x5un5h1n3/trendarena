/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/10.1.7
 * Generated at: 2023-12-06 06:31:11 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views.layout;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.jsp.*;

public final class base_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports,
                 org.apache.jasper.runtime.JspSourceDirectives {

  private static final jakarta.servlet.jsp.JspFactory _jspxFactory =
          jakarta.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("file:/Users/user/.m2/repository/lk/callidora/jsp/jsp-template-inheritance/1.0.1/jsp-template-inheritance-1.0.1.jar", Long.valueOf(1692255386866L));
    _jspx_dependants.put("jar:file:/Users/user/.m2/repository/lk/callidora/jsp/jsp-template-inheritance/1.0.1/jsp-template-inheritance-1.0.1.jar!/META-INF/jsp-inheritance.tld", Long.valueOf(1692219220000L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("jakarta.servlet");
    _jspx_imports_packages.add("jakarta.servlet.http");
    _jspx_imports_packages.add("jakarta.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile jakarta.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public boolean getErrorOnELNotFound() {
    return false;
  }

  public jakarta.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final jakarta.servlet.http.HttpServletRequest request, final jakarta.servlet.http.HttpServletResponse response)
      throws java.io.IOException, jakarta.servlet.ServletException {

    if (!jakarta.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET, POST or HEAD. Jasper also permits OPTIONS");
        return;
      }
    }

    final jakarta.servlet.jsp.PageContext pageContext;
    jakarta.servlet.http.HttpSession session = null;
    final jakarta.servlet.ServletContext application;
    final jakarta.servlet.ServletConfig config;
    jakarta.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    jakarta.servlet.jsp.JspWriter _jspx_out = null;
    jakarta.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\n");
      out.write("\n");
      out.write("<!doctype html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../frontend/include/header.jsp", out, false);
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<body class=\"theme-color-5\">\n");
      out.write("\n");
      out.write("<!-- Loader Start -->\n");
      out.write('\n');
      out.write('\n');
      out.write('\n');
      out.write('\n');
      out.write('\n');
      out.write('\n');
      out.write('\n');
      out.write('\n');
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      if (_jspx_meth_layout_005fblock_005f0(_jspx_page_context))
        return;
      out.write('\n');
      out.write('\n');
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../frontend/include/footer.jsp", out, false);
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!-- Quick View Modal Box Start -->\n");
      out.write("<div class=\"modal fade theme-modal view-modal\" id=\"view\" tabindex=\"-1\" aria-labelledby=\"exampleModalLabel\"\n");
      out.write("     aria-hidden=\"true\">\n");
      out.write("    <div class=\"modal-dialog modal-dialog-centered modal-xl modal-fullscreen-sm-down\">\n");
      out.write("        <div class=\"modal-content\">\n");
      out.write("            <div class=\"modal-header p-0\">\n");
      out.write("                <button type=\"button\" class=\"btn-close\" data-bs-dismiss=\"modal\" aria-label=\"Close\">\n");
      out.write("                    <i class=\"fa-solid fa-xmark\"></i>\n");
      out.write("                </button>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"modal-body\">\n");
      out.write("                <div class=\"row g-sm-4 g-2\">\n");
      out.write("                    <div class=\"col-lg-6\">\n");
      out.write("                        <div class=\"slider-image\">\n");
      out.write("                            <img src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${BASE_URL}", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("assets/images/product/category/1.jpg\" class=\"img-fluid blur-up lazyload\"\n");
      out.write("                                 alt=\"\">\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"col-lg-6\">\n");
      out.write("                        <div class=\"right-sidebar-modal\">\n");
      out.write("                            <h4 class=\"title-name\">Peanut Butter Bite Premium Butter Cookies 600 g</h4>\n");
      out.write("                            <h4 class=\"price\">$36.99</h4>\n");
      out.write("                            <div class=\"product-rating\">\n");
      out.write("                                <ul class=\"rating\">\n");
      out.write("                                    <li>\n");
      out.write("                                        <i data-feather=\"star\" class=\"fill\"></i>\n");
      out.write("                                    </li>\n");
      out.write("                                    <li>\n");
      out.write("                                        <i data-feather=\"star\" class=\"fill\"></i>\n");
      out.write("                                    </li>\n");
      out.write("                                    <li>\n");
      out.write("                                        <i data-feather=\"star\" class=\"fill\"></i>\n");
      out.write("                                    </li>\n");
      out.write("                                    <li>\n");
      out.write("                                        <i data-feather=\"star\" class=\"fill\"></i>\n");
      out.write("                                    </li>\n");
      out.write("                                    <li>\n");
      out.write("                                        <i data-feather=\"star\"></i>\n");
      out.write("                                    </li>\n");
      out.write("                                </ul>\n");
      out.write("                                <span class=\"ms-2\">8 Reviews</span>\n");
      out.write("                                <span class=\"ms-2 text-danger\">6 sold in last 16 hours</span>\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                            <div class=\"product-detail\">\n");
      out.write("                                <h4>Product Details :</h4>\n");
      out.write("                                <p>Candy canes sugar plum tart cotton candy chupa chups sugar plum chocolate I\n");
      out.write("                                    love.\n");
      out.write("                                    Caramels marshmallow icing dessert candy canes I love soufflÃ© I love toffee.\n");
      out.write("                                    Marshmallow pie sweet sweet roll sesame snaps tiramisu jelly bear claw.\n");
      out.write("                                    Bonbon\n");
      out.write("                                    muffin I love carrot cake sugar plum dessert bonbon.</p>\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                            <ul class=\"brand-list\">\n");
      out.write("                                <li>\n");
      out.write("                                    <div class=\"brand-box\">\n");
      out.write("                                        <h5>Brand Name:</h5>\n");
      out.write("                                        <h6>Black Forest</h6>\n");
      out.write("                                    </div>\n");
      out.write("                                </li>\n");
      out.write("\n");
      out.write("                                <li>\n");
      out.write("                                    <div class=\"brand-box\">\n");
      out.write("                                        <h5>Product Code:</h5>\n");
      out.write("                                        <h6>W0690034</h6>\n");
      out.write("                                    </div>\n");
      out.write("                                </li>\n");
      out.write("\n");
      out.write("                                <li>\n");
      out.write("                                    <div class=\"brand-box\">\n");
      out.write("                                        <h5>Product Type:</h5>\n");
      out.write("                                        <h6>White Cream Cake</h6>\n");
      out.write("                                    </div>\n");
      out.write("                                </li>\n");
      out.write("                            </ul>\n");
      out.write("\n");
      out.write("                            <div class=\"select-size\">\n");
      out.write("                                <h4>Cake Size :</h4>\n");
      out.write("                                <select class=\"form-select select-form-size\">\n");
      out.write("                                    <option selected>Select Size</option>\n");
      out.write("                                    <option value=\"1.2\">1/2 KG</option>\n");
      out.write("                                    <option value=\"0\">1 KG</option>\n");
      out.write("                                    <option value=\"1.5\">1/5 KG</option>\n");
      out.write("                                    <option value=\"red\">Red Roses</option>\n");
      out.write("                                    <option value=\"pink\">With Pink Roses</option>\n");
      out.write("                                </select>\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                            <div class=\"modal-button\">\n");
      out.write("                                <button onclick=\"location.href = 'cart.html';\"\n");
      out.write("                                        class=\"btn btn-md add-cart-button icon\">Add\n");
      out.write("                                    To Cart</button>\n");
      out.write("                                <button onclick=\"location.href = 'product-left.html';\"\n");
      out.write("                                        class=\"btn theme-bg-color view-button icon text-white fw-bold btn-md\">\n");
      out.write("                                    View More Details</button>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("<!-- Quick View Modal Box End -->\n");
      out.write("\n");
      out.write("<!-- Location Modal Start -->\n");
      out.write("<div class=\"modal location-modal fade theme-modal\" id=\"locationModal\" tabindex=\"-1\"\n");
      out.write("     aria-labelledby=\"exampleModalLabel\" aria-hidden=\"true\">\n");
      out.write("    <div class=\"modal-dialog modal-dialog-centered modal-fullscreen-sm-down\">\n");
      out.write("        <div class=\"modal-content\">\n");
      out.write("            <div class=\"modal-header\">\n");
      out.write("                <h5 class=\"modal-title\" id=\"exampleModalLabel\">Choose your Delivery Location</h5>\n");
      out.write("                <p class=\"mt-1 text-content\">Enter your address and we will specify the offer for your area.</p>\n");
      out.write("                <button type=\"button\" class=\"btn-close\" data-bs-dismiss=\"modal\" aria-label=\"Close\">\n");
      out.write("                    <i class=\"fa-solid fa-xmark\"></i>\n");
      out.write("                </button>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"modal-body\">\n");
      out.write("                <div class=\"location-list\">\n");
      out.write("                    <div class=\"search-input\">\n");
      out.write("                        <input type=\"search\" class=\"form-control\" placeholder=\"Search Your Area\">\n");
      out.write("                        <i class=\"fa-solid fa-magnifying-glass\"></i>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"disabled-box\">\n");
      out.write("                        <h6>Select a Location</h6>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <ul class=\"location-select custom-height\">\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"javascript:void(0)\">\n");
      out.write("                                <h6>Alabama</h6>\n");
      out.write("                                <span>Min: $130</span>\n");
      out.write("                            </a>\n");
      out.write("                        </li>\n");
      out.write("\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"javascript:void(0)\">\n");
      out.write("                                <h6>Arizona</h6>\n");
      out.write("                                <span>Min: $150</span>\n");
      out.write("                            </a>\n");
      out.write("                        </li>\n");
      out.write("\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"javascript:void(0)\">\n");
      out.write("                                <h6>California</h6>\n");
      out.write("                                <span>Min: $110</span>\n");
      out.write("                            </a>\n");
      out.write("                        </li>\n");
      out.write("\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"javascript:void(0)\">\n");
      out.write("                                <h6>Colorado</h6>\n");
      out.write("                                <span>Min: $140</span>\n");
      out.write("                            </a>\n");
      out.write("                        </li>\n");
      out.write("\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"javascript:void(0)\">\n");
      out.write("                                <h6>Florida</h6>\n");
      out.write("                                <span>Min: $160</span>\n");
      out.write("                            </a>\n");
      out.write("                        </li>\n");
      out.write("\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"javascript:void(0)\">\n");
      out.write("                                <h6>Georgia</h6>\n");
      out.write("                                <span>Min: $120</span>\n");
      out.write("                            </a>\n");
      out.write("                        </li>\n");
      out.write("\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"javascript:void(0)\">\n");
      out.write("                                <h6>Kansas</h6>\n");
      out.write("                                <span>Min: $170</span>\n");
      out.write("                            </a>\n");
      out.write("                        </li>\n");
      out.write("\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"javascript:void(0)\">\n");
      out.write("                                <h6>Minnesota</h6>\n");
      out.write("                                <span>Min: $120</span>\n");
      out.write("                            </a>\n");
      out.write("                        </li>\n");
      out.write("\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"javascript:void(0)\">\n");
      out.write("                                <h6>New York</h6>\n");
      out.write("                                <span>Min: $110</span>\n");
      out.write("                            </a>\n");
      out.write("                        </li>\n");
      out.write("\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"javascript:void(0)\">\n");
      out.write("                                <h6>Washington</h6>\n");
      out.write("                                <span>Min: $130</span>\n");
      out.write("                            </a>\n");
      out.write("                        </li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("<!-- Location Modal End -->\n");
      out.write("\n");
      out.write("<!-- Cookie Bar Box Start -->\n");
      out.write('\n');
      out.write('\n');
      out.write('\n');
      out.write('\n');
      out.write('\n');
      out.write('\n');
      out.write('\n');
      out.write('\n');
      out.write('\n');
      out.write('\n');
      out.write('\n');
      out.write('\n');
      out.write('\n');
      out.write('\n');
      out.write('\n');
      out.write('\n');
      out.write("\n");
      out.write("<!-- Cookie Bar Box End -->\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!-- Tap to top start -->\n");
      out.write("<div class=\"theme-option\">\n");
      out.write("    <div class=\"back-to-top\">\n");
      out.write("        <a id=\"back-to-top\" href=\"#\">\n");
      out.write("            <i class=\"fas fa-chevron-up\"></i>\n");
      out.write("        </a>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("<!-- Tap to top end -->\n");
      out.write("\n");
      out.write("<!-- Bg overlay Start -->\n");
      out.write("<div class=\"bg-overlay\"></div>\n");
      out.write("<!-- Bg overlay End -->\n");
      out.write("\n");
      out.write("<!-- latest jquery-->\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${BASE_URL}", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("assets/js/jquery-3.6.0.min.js\"></script>\n");
      out.write("\n");
      out.write("<!-- jquery ui-->\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${BASE_URL}", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("assets/js/jquery-ui.min.js\"></script>\n");
      out.write("\n");
      out.write("<!-- Bootstrap js-->\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${BASE_URL}", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("assets/js/bootstrap/bootstrap.bundle.min.js\"></script>\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${BASE_URL}", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("assets/js/bootstrap/bootstrap-notify.min.js\"></script>\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${BASE_URL}", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("assets/js/bootstrap/popper.min.js\"></script>\n");
      out.write("\n");
      out.write("<!-- feather icon js-->\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${BASE_URL}", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("assets/js/feather/feather.min.js\"></script>\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${BASE_URL}", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("assets/js/feather/feather-icon.js\"></script>\n");
      out.write("\n");
      out.write("<!-- Lazyload Js -->\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${BASE_URL}", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("assets/js/lazysizes.min.js\"></script>\n");
      out.write("\n");
      out.write("<!-- Slick js-->\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${BASE_URL}", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("assets/js/slick/slick.js\"></script>\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${BASE_URL}", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("assets/js/slick/slick-animation.min.js\"></script>\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${BASE_URL}", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("assets/js/slick/custom_slick.js\"></script>\n");
      out.write("\n");
      out.write("<!-- Auto Height Js -->\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${BASE_URL}", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("assets/js/auto-height.js\"></script>\n");
      out.write("\n");
      out.write("<!-- WOW js -->\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${BASE_URL}", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("assets/js/wow.min.js\"></script>\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${BASE_URL}", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("assets/js/custom-wow.js\"></script>\n");
      out.write("\n");
      out.write("<!-- script js -->\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${BASE_URL}", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("assets/js/script.js\"></script>\n");
      out.write("\n");
      out.write("<!-- main js -->\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${BASE_URL}", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("assets/js/main.js\"></script>\n");
      out.write("\n");
      if (_jspx_meth_layout_005fblock_005f1(_jspx_page_context))
        return;
      out.write("\n");
      out.write("</body>\n");
      out.write("\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof jakarta.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }

  private boolean _jspx_meth_layout_005fblock_005f0(jakarta.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    jakarta.servlet.jsp.PageContext pageContext = _jspx_page_context;
    //  layout:block
    lk.callidora.jsp.inheritance.BlockTag _jspx_th_layout_005fblock_005f0 = new lk.callidora.jsp.inheritance.BlockTag();
    _jsp_getInstanceManager().newInstance(_jspx_th_layout_005fblock_005f0);
    try {
      _jspx_th_layout_005fblock_005f0.setJspContext(_jspx_page_context);
      // /WEB-INF/views/layout/base.jsp(26,0) name = name type = null reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_layout_005fblock_005f0.setName("contents");
      _jspx_th_layout_005fblock_005f0.doTag();
    } finally {
      _jsp_getInstanceManager().destroyInstance(_jspx_th_layout_005fblock_005f0);
    }
    return false;
  }

  private boolean _jspx_meth_layout_005fblock_005f1(jakarta.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    jakarta.servlet.jsp.PageContext pageContext = _jspx_page_context;
    //  layout:block
    lk.callidora.jsp.inheritance.BlockTag _jspx_th_layout_005fblock_005f1 = new lk.callidora.jsp.inheritance.BlockTag();
    _jsp_getInstanceManager().newInstance(_jspx_th_layout_005fblock_005f1);
    try {
      _jspx_th_layout_005fblock_005f1.setJspContext(_jspx_page_context);
      // /WEB-INF/views/layout/base.jsp(313,0) name = name type = null reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_layout_005fblock_005f1.setName("script");
      _jspx_th_layout_005fblock_005f1.doTag();
    } finally {
      _jsp_getInstanceManager().destroyInstance(_jspx_th_layout_005fblock_005f1);
    }
    return false;
  }
}
