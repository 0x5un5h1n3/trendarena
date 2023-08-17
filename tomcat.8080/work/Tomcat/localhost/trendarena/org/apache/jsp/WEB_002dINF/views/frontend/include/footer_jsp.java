/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/10.1.7
 * Generated at: 2023-08-17 11:25:55 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views.frontend.include;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.jsp.*;

public final class footer_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<footer class=\"footer\">\n");
      out.write("    <div class=\"container\">\n");
      out.write("        <div class=\"row\">\n");
      out.write("            <div class=\"col-md-6 col-lg-4 col-sm-6 mb-5 mb-lg-0 text-center text-sm-left mr-auto\">\n");
      out.write("                <div class=\"footer-widget\">\n");
      out.write("                    <h4 class=\"mb-4\"><img src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${BASE_URL}", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("assets/images/logo.png\" alt=\"Logo.\" class=\"img-fluid\"></h4>\n");
      out.write("                    <p class=\"lead\">Discover the joy of shopping effortlessly, anytime and anywhere.</p>\n");
      out.write("\n");
      out.write("                    <div class=\"\">\n");
      out.write("                        <p class=\"mb-0\"><strong>Location : </strong>North South , Planet Earth</p>\n");
      out.write("                        <p><strong>Support Email : </strong> support@email.com</p>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"col-md-6 col-lg-2 col-sm-6 mb-5 mb-lg-0 text-center text-sm-left\">\n");
      out.write("                <div class=\"footer-widget\">\n");
      out.write("                    <h4 class=\"mb-4\">Category</h4>\n");
      out.write("                    <ul class=\"pl-0 list-unstyled mb-0\">\n");
      out.write("                        <li><a href=\"shop.html\">Men's Fashion</a></li>\n");
      out.write("                        <li><a href=\"shop.html\">Women's Fashion</a></li>\n");
      out.write("                        <li><a href=\"shop.html\">Kids Fashion</a></li>\n");
      out.write("                        <li><a href=\"shop.html\">Accessories</a></li>\n");
      out.write("                        <li><a href=\"shop.html\">Shoe Collection</a></li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"col-md-6 col-lg-2 col-sm-6 mb-5 mb-lg-0 text-center text-sm-left\">\n");
      out.write("                <div class=\"footer-widget\">\n");
      out.write("                    <h4 class=\"mb-4\">Useful Link</h4>\n");
      out.write("                    <ul class=\"pl-0 list-unstyled mb-0\">\n");
      out.write("                        <li><a href=\"about.html\">News &amp; Tips</a></li>\n");
      out.write("                        <li><a href=\"about.html\">About Us</a></li>\n");
      out.write("                        <li><a href=\"address.html\">Support</a></li>\n");
      out.write("                        <li><a href=\"shop.html\">Our Shop</a></li>\n");
      out.write("                        <li><a href=\"contact.html\">Contact Us</a></li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"col-md-6 col-lg-3 col-sm-6 text-center text-sm-left\">\n");
      out.write("                <div class=\"footer-widget\">\n");
      out.write("                    <h4 class=\"mb-4\">Opening Hours</h4>\n");
      out.write("                    <ul class=\"pl-0 list-unstyled mb-5\">\n");
      out.write("                        <li class=\"d-lg-flex justify-content-between\">Monday-Friday <span>8.00-20.00</span></li>\n");
      out.write("                        <li class=\"d-lg-flex justify-content-between\">Saturday <span>10.00-20.00</span></li>\n");
      out.write("                        <li class=\"d-lg-flex justify-content-between\">Sunday <span>12-20.00</span></li>\n");
      out.write("                    </ul>\n");
      out.write("\n");
      out.write("                    <h5>Call Now : +1(123) 456-7890</h5>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</footer>\n");
      out.write("\n");
      out.write("\n");
      out.write("<div class=\"footer-btm py-4 \">\n");
      out.write("    <div class=\"container\">\n");
      out.write("        <div class=\"row \">\n");
      out.write("            <div class=\"col-lg-6\">\n");
      out.write("                <a class=\"copyright mb-0 \">&copy; <a href=\"#\">TrendArena.</a> All rigths reserved.</p>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"col-lg-6\">\n");
      out.write("                <ul class=\"list-inline mb-0 footer-btm-links text-lg-right mt-2 mt-lg-0\">\n");
      out.write("                    <li class=\"list-inline-item\"><a href=\"404.html\">Privacy Policy</a></li>\n");
      out.write("                    <li class=\"list-inline-item\"><a href=\"404.html\">Terms &amp; Conditions</a></li>\n");
      out.write("                    <li class=\"list-inline-item\"><a href=\"404.html\">Cookie Policy</a></li>\n");
      out.write("                    <li class=\"list-inline-item\"><a href=\"404.html\">Terms of Sale</a></li>\n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</div>");
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
