/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/10.1.7
 * Generated at: 2023-12-22 10:56:34 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views.frontend;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.jsp.*;
import com.ox5un5h1n3.web.trendarena.dao.ProductDao;
import com.ox5un5h1n3.web.trendarena.util.HibernateUtil;
import com.ox5un5h1n3.web.trendarena.entity.Product;
import java.util.List;
import com.ox5un5h1n3.web.trendarena.dao.CategoryDao;
import com.ox5un5h1n3.web.trendarena.entity.Category;
import com.ox5un5h1n3.web.trendarena.util.Helper;
import com.ox5un5h1n3.web.trendarena.entity.User;

public final class checkout_jsp extends org.apache.jasper.runtime.HttpJspBase
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
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("com.ox5un5h1n3.web.trendarena.entity.Category");
    _jspx_imports_classes.add("com.ox5un5h1n3.web.trendarena.entity.User");
    _jspx_imports_classes.add("com.ox5un5h1n3.web.trendarena.entity.Product");
    _jspx_imports_classes.add("java.util.List");
    _jspx_imports_classes.add("com.ox5un5h1n3.web.trendarena.dao.CategoryDao");
    _jspx_imports_classes.add("com.ox5un5h1n3.web.trendarena.util.Helper");
    _jspx_imports_classes.add("com.ox5un5h1n3.web.trendarena.util.HibernateUtil");
    _jspx_imports_classes.add("com.ox5un5h1n3.web.trendarena.dao.ProductDao");
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");

    User user = (User) session.getAttribute("userLogged");
    if (user == null) {
        response.sendRedirect(request.getContextPath()+"/login");
        return;
    } else {
        if (user.getUserType().toString().equals("ADMIN")) {
            response.sendRedirect(request.getContextPath()+"/login");
            return;
        }
    }

      out.write('\n');
      out.write('\n');

    String cat=request.getParameter("category");

    ProductDao dao = new ProductDao(HibernateUtil.getSessionFactory());
    List<Product> list=null;

    if(cat==null ||cat.trim().equals("all")) {
        list =dao.getAllProducts();
    }
    else{
        int cid=Integer.parseInt(cat.trim());
        list=dao.getAllProductsById(cid);
    }

    CategoryDao cdao = new CategoryDao(HibernateUtil.getSessionFactory());
    List<Category> clist = cdao.getCategories();

      out.write('\n');
      out.write('\n');
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../frontend/include/product-header.jsp", out, false);
      out.write("\n");
      out.write("\n");
      out.write("<body class=\"theme-color-5 bg-gradient-color\">\n");
      out.write("\n");
      out.write("<!-- Checkout section Start -->\n");
      out.write("<section class=\"checkout-section-2 section-b-space\">\n");
      out.write("    <div class=\"container-fluid-lg\">\n");
      out.write("        <div class=\"row g-sm-4 g-3\">\n");
      out.write("            <div class=\"col-lg-8\">\n");
      out.write("                <div class=\"left-sidebar-checkout\">\n");
      out.write("                    <div class=\"checkout-detail-box\">\n");
      out.write("                        <ul>\n");
      out.write("                            <li>\n");
      out.write("                                <div class=\"checkout-icon\">\n");
      out.write("                                    <lord-icon target=\".nav-item\" src=\"https://cdn.lordicon.com/ggihhudh.json\"\n");
      out.write("                                               trigger=\"loop-on-hover\"\n");
      out.write("                                               colors=\"primary:#121331,secondary:#646e78,tertiary:#0baf9a\"\n");
      out.write("                                               class=\"lord-icon\">\n");
      out.write("                                    </lord-icon>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"checkout-box\">\n");
      out.write("                                    <div class=\"checkout-title\">\n");
      out.write("                                        <h4>Delivery Address</h4>\n");
      out.write("                                    </div>\n");
      out.write("\n");
      out.write("                                    <div class=\"checkout-detail\">\n");
      out.write("                                        <div class=\"row g-4\">\n");
      out.write("                                            <div class=\"col-xxl-6 col-lg-12 col-md-6\">\n");
      out.write("                                                <div class=\"delivery-address-box\">\n");
      out.write("                                                    <div>\n");
      out.write("                                                        <div class=\"form-check\">\n");
      out.write("                                                            <input class=\"form-check-input\" type=\"radio\" name=\"jack\"\n");
      out.write("                                                                   id=\"flexRadioDefault1\">\n");
      out.write("                                                        </div>\n");
      out.write("\n");
      out.write("                                                        <div class=\"label\">\n");
      out.write("                                                            <label>Home</label>\n");
      out.write("                                                        </div>\n");
      out.write("\n");
      out.write("                                                        <ul class=\"delivery-address-detail\">\n");
      out.write("                                                            <li>\n");
      out.write("                                                                <h4 class=\"fw-500\">My Name</h4>\n");
      out.write("                                                            </li>\n");
      out.write("\n");
      out.write("                                                            <li>\n");
      out.write("                                                                <p class=\"text-content\"><span\n");
      out.write("                                                                        class=\"text-title\">Address\n");
      out.write("                                                                            : </span>8424 Area 51, USA</p>\n");
      out.write("                                                            </li>\n");
      out.write("\n");
      out.write("                                                            <li>\n");
      out.write("                                                                <h6 class=\"text-content\"><span\n");
      out.write("                                                                        class=\"text-title\">Post Code\n");
      out.write("                                                                            :</span> 1234</h6>\n");
      out.write("                                                            </li>\n");
      out.write("\n");
      out.write("                                                            <li>\n");
      out.write("                                                                <h6 class=\"text-content mb-0\"><span\n");
      out.write("                                                                        class=\"text-title\">Phone\n");
      out.write("                                                                            :</span> + 123 456 7890</h6>\n");
      out.write("                                                            </li>\n");
      out.write("                                                        </ul>\n");
      out.write("                                                    </div>\n");
      out.write("                                                </div>\n");
      out.write("                                            </div>\n");
      out.write("\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </li>\n");
      out.write("\n");
      out.write("                            <li>\n");
      out.write("                                <div class=\"checkout-icon\">\n");
      out.write("                                    <lord-icon target=\".nav-item\" src=\"https://cdn.lordicon.com/oaflahpk.json\"\n");
      out.write("                                               trigger=\"loop-on-hover\" colors=\"primary:#0baf9a\" class=\"lord-icon\">\n");
      out.write("                                    </lord-icon>\n");
      out.write("                                </div>\n");
      out.write("                            </li>\n");
      out.write("\n");
      out.write("                            <li>\n");
      out.write("                                <div class=\"checkout-icon\">\n");
      out.write("                                    <lord-icon target=\".nav-item\" src=\"https://cdn.lordicon.com/qmcsqnle.json\"\n");
      out.write("                                               trigger=\"loop-on-hover\" colors=\"primary:#0baf9a,secondary:#0baf9a\"\n");
      out.write("                                               class=\"lord-icon\">\n");
      out.write("                                    </lord-icon>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"checkout-box\">\n");
      out.write("                                    <div class=\"checkout-title\">\n");
      out.write("                                        <h4>Payment Option</h4>\n");
      out.write("                                    </div>\n");
      out.write("\n");
      out.write("                                    <div class=\"checkout-detail\">\n");
      out.write("                                        <div class=\"accordion accordion-flush custom-accordion\"\n");
      out.write("                                             id=\"accordionFlushExample\">\n");
      out.write("                                            <div class=\"accordion-item\">\n");
      out.write("                                                <div class=\"accordion-header\" id=\"flush-headingFour\">\n");
      out.write("                                                    <div class=\"accordion-button collapsed\"\n");
      out.write("                                                         data-bs-toggle=\"collapse\"\n");
      out.write("                                                         data-bs-target=\"#flush-collapseFour\">\n");
      out.write("                                                        <div class=\"custom-form-check form-check mb-0\">\n");
      out.write("                                                            <label class=\"form-check-label\" for=\"cash\"><input\n");
      out.write("                                                                    class=\"form-check-input mt-0\" type=\"radio\"\n");
      out.write("                                                                    name=\"flexRadioDefault\" id=\"cash\" checked> Cash\n");
      out.write("                                                                On Delivery</label>\n");
      out.write("                                                        </div>\n");
      out.write("                                                    </div>\n");
      out.write("                                                </div>\n");
      out.write("                                                <div id=\"flush-collapseFour\"\n");
      out.write("                                                     class=\"accordion-collapse collapse show\"\n");
      out.write("                                                     data-bs-parent=\"#accordionFlushExample\">\n");
      out.write("                                                    <div class=\"accordion-body\">\n");
      out.write("                                                        <p class=\"cod-review\">Payment method where goods are delivered\n");
      out.write("                                                            before payment is made, usually upon receipt of the product.\n");
      out.write("                                                        </p>\n");
      out.write("                                                    </div>\n");
      out.write("                                                </div>\n");
      out.write("                                            </div>\n");
      out.write("\n");
      out.write("                                            <div class=\"accordion-item\">\n");
      out.write("                                                <div class=\"accordion-header\" id=\"flush-headingOne\">\n");
      out.write("                                                    <div class=\"accordion-button collapsed\"\n");
      out.write("                                                         data-bs-toggle=\"collapse\"\n");
      out.write("                                                         data-bs-target=\"#flush-collapseOne\">\n");
      out.write("                                                        <div class=\"custom-form-check form-check mb-0\">\n");
      out.write("                                                            <label class=\"form-check-label\" for=\"credit\"><input\n");
      out.write("                                                                    class=\"form-check-input mt-0\" type=\"radio\"\n");
      out.write("                                                                    name=\"flexRadioDefault\" id=\"credit\">\n");
      out.write("                                                                Credit or Debit Card</label>\n");
      out.write("                                                        </div>\n");
      out.write("                                                    </div>\n");
      out.write("                                                </div>\n");
      out.write("                                                <div id=\"flush-collapseOne\" class=\"accordion-collapse collapse\"\n");
      out.write("                                                     data-bs-parent=\"#accordionFlushExample\">\n");
      out.write("                                                    <div class=\"accordion-body\">\n");
      out.write("                                                        <div class=\"row g-2\">\n");
      out.write("                                                            <div class=\"col-12\">\n");
      out.write("                                                                <div class=\"payment-method\">\n");
      out.write("                                                                    <div\n");
      out.write("                                                                            class=\"form-floating mb-lg-3 mb-2 theme-form-floating\">\n");
      out.write("                                                                        <input type=\"text\" class=\"form-control\"\n");
      out.write("                                                                               id=\"credit2\"\n");
      out.write("                                                                               placeholder=\"Enter Credit & Debit Card Number\">\n");
      out.write("                                                                        <label for=\"credit2\">Enter Credit & Debit\n");
      out.write("                                                                            Card Number</label>\n");
      out.write("                                                                    </div>\n");
      out.write("                                                                </div>\n");
      out.write("                                                            </div>\n");
      out.write("\n");
      out.write("                                                            <div class=\"col-xxl-4\">\n");
      out.write("                                                                <div\n");
      out.write("                                                                        class=\"form-floating mb-lg-3 mb-2 theme-form-floating\">\n");
      out.write("                                                                    <input type=\"text\" class=\"form-control\"\n");
      out.write("                                                                           id=\"expiry\" placeholder=\"Enter Expiry Date\">\n");
      out.write("                                                                    <label for=\"expiry\">Expiry Date</label>\n");
      out.write("                                                                </div>\n");
      out.write("                                                            </div>\n");
      out.write("\n");
      out.write("                                                            <div class=\"col-xxl-4\">\n");
      out.write("                                                                <div\n");
      out.write("                                                                        class=\"form-floating mb-lg-3 mb-2 theme-form-floating\">\n");
      out.write("                                                                    <input type=\"text\" class=\"form-control\" id=\"cvv\"\n");
      out.write("                                                                           placeholder=\"Enter CVV Number\">\n");
      out.write("                                                                    <label for=\"cvv\">CVV Number</label>\n");
      out.write("                                                                </div>\n");
      out.write("                                                            </div>\n");
      out.write("\n");
      out.write("                                                            <div class=\"col-xxl-4\">\n");
      out.write("                                                                <div\n");
      out.write("                                                                        class=\"form-floating mb-lg-3 mb-2 theme-form-floating\">\n");
      out.write("                                                                    <input type=\"password\" class=\"form-control\"\n");
      out.write("                                                                           id=\"password\" placeholder=\"Enter Password\">\n");
      out.write("                                                                    <label for=\"password\">Password</label>\n");
      out.write("                                                                </div>\n");
      out.write("                                                            </div>\n");
      out.write("\n");
      out.write("                                                            <div class=\"button-group mt-0\">\n");
      out.write("                                                                <ul>\n");
      out.write("                                                                    <li>\n");
      out.write("                                                                        <button\n");
      out.write("                                                                                class=\"btn btn-light shopping-button\">Cancel</button>\n");
      out.write("                                                                    </li>\n");
      out.write("\n");
      out.write("                                                                    <li>\n");
      out.write("                                                                        <button class=\"btn btn-animation\">Use This\n");
      out.write("                                                                            Card</button>\n");
      out.write("                                                                    </li>\n");
      out.write("                                                                </ul>\n");
      out.write("                                                            </div>\n");
      out.write("                                                        </div>\n");
      out.write("                                                    </div>\n");
      out.write("                                                </div>\n");
      out.write("                                            </div>\n");
      out.write("\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"col-lg-4\">\n");
      out.write("                <div class=\"right-side-summery-box\">\n");
      out.write("                    <div class=\"summery-box-2\">\n");
      out.write("                        <div class=\"summery-header\">\n");
      out.write("                            <h3>Order Summery</h3>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <ul class=\"summery-contain\">\n");
      out.write("                            <li>\n");
      out.write("                                <img src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${BASE_URL}", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("assets/images//1.png\"\n");
      out.write("                                     class=\"img-fluid blur-up lazyloaded checkout-image\" alt=\"\">\n");
      out.write("                                <h4>Item Name<span>X 1</span></h4>\n");
      out.write("                                <h4 class=\"price\">$32.34</h4>\n");
      out.write("                            </li>\n");
      out.write("\n");
      out.write("                        </ul>\n");
      out.write("\n");
      out.write("                        <ul class=\"summery-total\">\n");
      out.write("                            <li>\n");
      out.write("                                <h4>Subtotal</h4>\n");
      out.write("                                <h4 class=\"price\">$111.81</h4>\n");
      out.write("                            </li>\n");
      out.write("\n");
      out.write("                            <li>\n");
      out.write("                                <h4>Shipping</h4>\n");
      out.write("                                <h4 class=\"price\">$8.90</h4>\n");
      out.write("                            </li>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                            <li class=\"list-total\">\n");
      out.write("                                <h4>Total (USD)</h4>\n");
      out.write("                                <h4 class=\"price\">$19.28</h4>\n");
      out.write("                            </li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                    <button class=\"btn theme-bg-color text-white btn-md w-100 mt-4 fw-bold\">Place Order</button>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</section>\n");
      out.write("<!-- Checkout section End -->\n");
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
