/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/10.1.7
 * Generated at: 2023-12-13 05:41:32 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views.frontend.include;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.jsp.*;

public final class other_002dfooter_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports,
                 org.apache.jasper.runtime.JspSourceDirectives {

  private static final jakarta.servlet.jsp.JspFactory _jspxFactory =
          jakarta.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

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

      out.write("<!-- Footer Section Start -->\n");
      out.write("<footer class=\"section-t-space footer-section-2 footer-color-3\">\n");
      out.write("    <div class=\"container-fluid-lg\">\n");
      out.write("        <div class=\"main-footer\">\n");
      out.write("            <div class=\"row g-md-4 gy-sm-5\">\n");
      out.write("                <div class=\"col-xxl-3 col-xl-4 col-sm-6\">\n");
      out.write("                    <a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${BASE_URL}", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\" class=\"foot-logo theme-logo\">\n");
      out.write("                        <img src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${BASE_URL}", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("assets/images/logo/logo-white.png\" class=\"img-fluid blur-up lazyload\" alt=\"\">\n");
      out.write("                    </a>\n");
      out.write("                    <p class=\"information-text information-text-2\">Discover the joy of shopping effortlessly,\n");
      out.write("                        anytime and anywhere.</p>\n");
      out.write("                    <ul class=\"social-icon\">\n");
      out.write("                        <li class=\"light-bg\">\n");
      out.write("                            <a href=\"https://www.facebook.com/\" class=\"footer-link-color\">\n");
      out.write("                                <i class=\"fab fa-facebook-f\"></i>\n");
      out.write("                            </a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"light-bg\">\n");
      out.write("                            <a href=\"https://accounts.google.com/signin/v2/identifier?flowName=GlifWebSignIn&flowEntry=ServiceLogin\"\n");
      out.write("                               class=\"footer-link-color\">\n");
      out.write("                                <i class=\"fab fa-google\"></i>\n");
      out.write("                            </a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"light-bg\">\n");
      out.write("                            <a href=\"https://twitter.com/i/flow/login\" class=\"footer-link-color\">\n");
      out.write("                                <i class=\"fab fa-twitter\"></i>\n");
      out.write("                            </a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"light-bg\">\n");
      out.write("                            <a href=\"https://www.instagram.com/\" class=\"footer-link-color\">\n");
      out.write("                                <i class=\"fab fa-instagram\"></i>\n");
      out.write("                            </a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"light-bg\">\n");
      out.write("                            <a href=\"https://in.pinterest.com/\" class=\"footer-link-color\">\n");
      out.write("                                <i class=\"fab fa-pinterest-p\"></i>\n");
      out.write("                            </a>\n");
      out.write("                        </li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"col-xxl-2 col-xl-4 col-sm-6\">\n");
      out.write("                    <div class=\"footer-title\">\n");
      out.write("                        <h4 class=\"text-white\">About TrendArena</h4>\n");
      out.write("                    </div>\n");
      out.write("                    <ul class=\"footer-list footer-contact footer-list-light\">\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"about-us.html\" class=\"light-text\">About Us</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"contact-us.html\" class=\"light-text\">Contact Us</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"term_condition.html\" class=\"light-text\">Terms & Coditions</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"careers.html\" class=\"light-text\">Careers</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"blog-list.html\" class=\"light-text\">Latest Blog</a>\n");
      out.write("                        </li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"col-xxl-2 col-xl-4 col-sm-6\">\n");
      out.write("                    <div class=\"footer-title\">\n");
      out.write("                        <h4 class=\"text-white\">Useful Link</h4>\n");
      out.write("                    </div>\n");
      out.write("                    <ul class=\"footer-list footer-list-light footer-contact\">\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"order-success.html\" class=\"light-text\">Your Order</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"user-dashboard.html\" class=\"light-text\">Your Account</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"order-tracking.html\" class=\"light-text\">Track Orders</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"wishlist.html\" class=\"light-text\">Your Wishlist</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"faq.html\" class=\"light-text\">FAQs</a>\n");
      out.write("                        </li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"col-xxl-2 col-xl-4 col-sm-6\">\n");
      out.write("                    <div class=\"footer-title\">\n");
      out.write("                        <h4 class=\"text-white\">Categories</h4>\n");
      out.write("                    </div>\n");
      out.write("                    <ul class=\"footer-list footer-list-light footer-contact\">\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"vegetables-demo.html\" class=\"light-text\">Fresh Vegetables</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"spice-demo.html\" class=\"light-text\">Hot Spice</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"bags-demo.html\" class=\"light-text\">Brand New Bags</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"bakery-demo.html\" class=\"light-text\">New Bakery</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"grocery-demo.html\" class=\"light-text\">New Grocery</a>\n");
      out.write("                        </li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"col-xxl-3 col-xl-4 col-sm-6\">\n");
      out.write("                    <div class=\"footer-title\">\n");
      out.write("                        <h4 class=\"text-white\">Store information</h4>\n");
      out.write("                    </div>\n");
      out.write("                    <ul class=\"footer-address footer-contact\">\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"javascript:void(0)\" class=\"light-text\">\n");
      out.write("                                <div class=\"inform-box flex-start-box\">\n");
      out.write("                                    <i data-feather=\"map-pin\"></i>\n");
      out.write("                                    <p>TrendArena Store, Planet Earth 345 - 659</p>\n");
      out.write("                                </div>\n");
      out.write("                            </a>\n");
      out.write("                        </li>\n");
      out.write("\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"javascript:void(0)\" class=\"light-text\">\n");
      out.write("                                <div class=\"inform-box\">\n");
      out.write("                                    <i data-feather=\"phone\"></i>\n");
      out.write("                                    <p>Call us: 123-456-7890</p>\n");
      out.write("                                </div>\n");
      out.write("                            </a>\n");
      out.write("                        </li>\n");
      out.write("\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"javascript:void(0)\" class=\"light-text\">\n");
      out.write("                                <div class=\"inform-box\">\n");
      out.write("                                    <i data-feather=\"mail\"></i>\n");
      out.write("                                    <p>Email Us: Support@TrendArena.com</p>\n");
      out.write("                                </div>\n");
      out.write("                            </a>\n");
      out.write("                        </li>\n");
      out.write("\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"javascript:void(0)\" class=\"light-text\">\n");
      out.write("                                <div class=\"inform-box\">\n");
      out.write("                                    <i data-feather=\"printer\"></i>\n");
      out.write("                                    <p>Fax: 123456</p>\n");
      out.write("                                </div>\n");
      out.write("                            </a>\n");
      out.write("                        </li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <div class=\"sub-footer sub-footer-lite section-b-space section-t-space\">\n");
      out.write("            <div class=\"left-footer\">\n");
      out.write("                <p>&copy;TrendArena. All rigths reserved.</p>\n");
      out.write("            </div>\n");
      out.write("\n");
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
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</footer>\n");
      out.write("<!-- Footer Section End -->");
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
}