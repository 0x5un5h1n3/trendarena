/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/10.1.7
 * Generated at: 2023-12-23 02:09:09 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views.frontend;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.jsp.*;

public final class contact_002dus_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../frontend/include/other-header.jsp", out, false);
      out.write("\n");
      out.write("\n");
      out.write("<body class=\"theme-color-5 bg-gradient-color\">\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!-- Contact Box Section Start -->\n");
      out.write("<section class=\"contact-box-section\">\n");
      out.write("    <div class=\"container-fluid-lg\">\n");
      out.write("        <div class=\"row g-lg-5 g-3\">\n");
      out.write("            <div class=\"col-lg-6\">\n");
      out.write("                <div class=\"left-sidebar-box\">\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-xl-12\">\n");
      out.write("                            <div class=\"contact-image\">\n");
      out.write("                                <img src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${BASE_URL}", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("assets/images/inner-page/contact-us.png\"\n");
      out.write("                                     class=\"img-fluid blur-up lazyloaded\" alt=\"\">\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-xl-12\">\n");
      out.write("                            <div class=\"contact-title\">\n");
      out.write("                                <h3>Get In Touch</h3>\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                            <div class=\"contact-detail\">\n");
      out.write("                                <div class=\"row g-4\">\n");
      out.write("                                    <div class=\"col-xxl-6 col-lg-12 col-sm-6\">\n");
      out.write("                                        <div class=\"contact-detail-box\">\n");
      out.write("                                            <div class=\"contact-icon\">\n");
      out.write("                                                <i class=\"fa-solid fa-phone\"></i>\n");
      out.write("                                            </div>\n");
      out.write("                                            <div class=\"contact-detail-title\">\n");
      out.write("                                                <h4>Phone</h4>\n");
      out.write("                                            </div>\n");
      out.write("\n");
      out.write("                                            <div class=\"contact-detail-contain\">\n");
      out.write("                                                <p>(+1) 234 567 890</p>\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("\n");
      out.write("                                    <div class=\"col-xxl-6 col-lg-12 col-sm-6\">\n");
      out.write("                                        <div class=\"contact-detail-box\">\n");
      out.write("                                            <div class=\"contact-icon\">\n");
      out.write("                                                <i class=\"fa-solid fa-envelope\"></i>\n");
      out.write("                                            </div>\n");
      out.write("                                            <div class=\"contact-detail-title\">\n");
      out.write("                                                <h4>Email</h4>\n");
      out.write("                                            </div>\n");
      out.write("\n");
      out.write("                                            <div class=\"contact-detail-contain\">\n");
      out.write("                                                <p>support@trendarena.com</p>\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("\n");
      out.write("                                    <div class=\"col-xxl-6 col-lg-12 col-sm-6\">\n");
      out.write("                                        <div class=\"contact-detail-box\">\n");
      out.write("                                            <div class=\"contact-icon\">\n");
      out.write("                                                <i class=\"fa-solid fa-location-dot\"></i>\n");
      out.write("                                            </div>\n");
      out.write("                                            <div class=\"contact-detail-title\">\n");
      out.write("                                                <h4>Nevada Office</h4>\n");
      out.write("                                            </div>\n");
      out.write("\n");
      out.write("                                            <div class=\"contact-detail-contain\">\n");
      out.write("                                                <p>Rachel, Nevada, United States</p>\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("\n");
      out.write("                                    <div class=\"col-xxl-6 col-lg-12 col-sm-6\">\n");
      out.write("                                        <div class=\"contact-detail-box\">\n");
      out.write("                                            <div class=\"contact-icon\">\n");
      out.write("                                                <i class=\"fa-solid fa-building\"></i>\n");
      out.write("                                            </div>\n");
      out.write("                                            <div class=\"contact-detail-title\">\n");
      out.write("                                                <h4>Las Vegas Office</h4>\n");
      out.write("                                            </div>\n");
      out.write("\n");
      out.write("                                            <div class=\"contact-detail-contain\">\n");
      out.write("                                                <p>Area 51 Apparel 123 Extraterrestrial Avenue Rachel, Nevada</p>\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"col-lg-6\">\n");
      out.write("                <div class=\"title d-xxl-none d-block\">\n");
      out.write("                    <h2>Contact Us</h2>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"right-sidebar-box\">\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-xxl-6 col-lg-12 col-sm-6\">\n");
      out.write("                            <div class=\"mb-md-4 mb-3 custom-form\">\n");
      out.write("                                <label for=\"exampleFormControlInput\" class=\"form-label\">First Name</label>\n");
      out.write("                                <div class=\"custom-input\">\n");
      out.write("                                    <input type=\"text\" class=\"form-control\" id=\"exampleFormControlInput\"\n");
      out.write("                                           placeholder=\"Enter First Name\">\n");
      out.write("                                    <i class=\"fa-solid fa-user\"></i>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <div class=\"col-xxl-6 col-lg-12 col-sm-6\">\n");
      out.write("                            <div class=\"mb-md-4 mb-3 custom-form\">\n");
      out.write("                                <label for=\"exampleFormControlInput1\" class=\"form-label\">Last Name</label>\n");
      out.write("                                <div class=\"custom-input\">\n");
      out.write("                                    <input type=\"text\" class=\"form-control\" id=\"exampleFormControlInput1\"\n");
      out.write("                                           placeholder=\"Enter Last Name\">\n");
      out.write("                                    <i class=\"fa-solid fa-user\"></i>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <div class=\"col-xxl-6 col-lg-12 col-sm-6\">\n");
      out.write("                            <div class=\"mb-md-4 mb-3 custom-form\">\n");
      out.write("                                <label for=\"exampleFormControlInput2\" class=\"form-label\">Email Address</label>\n");
      out.write("                                <div class=\"custom-input\">\n");
      out.write("                                    <input type=\"email\" class=\"form-control\" id=\"exampleFormControlInput2\"\n");
      out.write("                                           placeholder=\"Enter Email Address\">\n");
      out.write("                                    <i class=\"fa-solid fa-envelope\"></i>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <div class=\"col-xxl-6 col-lg-12 col-sm-6\">\n");
      out.write("                            <div class=\"mb-md-4 mb-3 custom-form\">\n");
      out.write("                                <label for=\"exampleFormControlInput3\" class=\"form-label\">Phone Number</label>\n");
      out.write("                                <div class=\"custom-input\">\n");
      out.write("                                    <input type=\"tel\" class=\"form-control\" id=\"exampleFormControlInput3\"\n");
      out.write("                                           placeholder=\"Enter Your Phone Number\" maxlength=\"10\" oninput=\"if (this.value.length > this.maxLength) this.value =\n");
      out.write("                                            this.value.slice(0, this.maxLength);\">\n");
      out.write("                                    <i class=\"fa-solid fa-mobile-screen-button\"></i>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <div class=\"col-12\">\n");
      out.write("                            <div class=\"mb-md-4 mb-3 custom-form\">\n");
      out.write("                                <label for=\"exampleFormControlTextarea\" class=\"form-label\">Message</label>\n");
      out.write("                                <div class=\"custom-textarea\">\n");
      out.write("                                        <textarea class=\"form-control\" id=\"exampleFormControlTextarea\"\n");
      out.write("                                                  placeholder=\"Enter Your Message\" rows=\"6\"></textarea>\n");
      out.write("                                    <i class=\"fa-solid fa-message\"></i>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <button class=\"btn btn-animation btn-md fw-bold ms-auto\">Send Message</button>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</section>\n");
      out.write("<!-- Contact Box Section End -->\n");
      out.write("\n");
      out.write("<!-- Map Section Start -->\n");
      out.write("<section class=\"map-section\">\n");
      out.write("    <div class=\"container-fluid p-0\">\n");
      out.write("        <div class=\"map-box\">\n");
      out.write("            <iframe\n");
      out.write("                    src=https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d744787.4551385689!2d-115.88780455150102!3d36.86770569839847!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x80b81baaba3e8c81%3A0x970427e38e6237ae!2sArea%2051%2C%20NV%2C%20USA!5e1!3m2!1sen!2sin!4v1702722644638!5m2!1sen!2sin\"\n");
      out.write("                    style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"\n");
      out.write("                    referrerpolicy=\"no-referrer-when-downgrade\"></iframe>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</section>\n");
      out.write("<!-- Map Section End -->\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../frontend/include/other-footer.jsp", out, false);
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!-- Bg overlay Start -->\n");
      out.write("<div class=\"bg-overlay\"></div>\n");
      out.write("<!-- Bg overlay End -->\n");
      out.write("\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../frontend/include/script_imports.jsp", out, false);
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
}
