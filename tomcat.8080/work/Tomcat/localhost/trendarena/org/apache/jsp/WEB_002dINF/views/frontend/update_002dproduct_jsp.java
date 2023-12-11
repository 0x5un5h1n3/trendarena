/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/10.1.7
 * Generated at: 2023-12-11 10:29:28 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views.frontend;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.jsp.*;
import com.ox5un5h1n3.web.trendarena.entity.User;
import com.ox5un5h1n3.web.trendarena.entity.Category;
import com.ox5un5h1n3.web.trendarena.dao.CategoryDao;
import com.ox5un5h1n3.web.trendarena.util.HibernateUtil;
import java.util.List;
import java.util.Map;
import com.ox5un5h1n3.web.trendarena.util.Helper;
import com.ox5un5h1n3.web.trendarena.entity.Product;

public final class update_002dproduct_jsp extends org.apache.jasper.runtime.HttpJspBase
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
    _jspx_imports_classes.add("java.util.List");
    _jspx_imports_classes.add("com.ox5un5h1n3.web.trendarena.entity.Product");
    _jspx_imports_classes.add("com.ox5un5h1n3.web.trendarena.dao.CategoryDao");
    _jspx_imports_classes.add("java.util.Map");
    _jspx_imports_classes.add("com.ox5un5h1n3.web.trendarena.util.Helper");
    _jspx_imports_classes.add("com.ox5un5h1n3.web.trendarena.util.HibernateUtil");
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

      out.write('\n');
      out.write('\n');

    CategoryDao cdao = new CategoryDao(HibernateUtil.getSessionFactory());
    List<Category> list = cdao.getCategories();

    Map<String, Long> m = Helper.getCounts(HibernateUtil.getSessionFactory());

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\" dir=\"ltr\">\n");
      out.write("\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../frontend/include/admin_header.jsp", out, false);
      out.write("\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("<!-- tap on top start -->\n");
      out.write("<div class=\"tap-top\">\n");
      out.write("    <span class=\"lnr lnr-chevron-up\"></span>\n");
      out.write("</div>\n");
      out.write("<!-- tap on tap end -->\n");
      out.write("\n");
      out.write("<!-- page-wrapper start -->\n");
      out.write("<div class=\"page-wrapper compact-wrapper\" id=\"pageWrapper\">\n");
      out.write("    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../frontend/include/admin_page_header.jsp", out, false);
      out.write("\n");
      out.write("\n");
      out.write("    <!-- Page Body start -->\n");
      out.write("    <div class=\"page-body-wrapper\">\n");
      out.write("        <!-- Page Sidebar Start-->\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../frontend/include/admin_sidebar.jsp", out, false);
      out.write("\n");
      out.write("        <!-- Page Sidebar Ends-->\n");
      out.write("\n");
      out.write("        <div class=\"page-body\">\n");
      out.write("\n");
      out.write("            <!-- New Product Add Start -->\n");
      out.write("            <div class=\"container-fluid\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-12\">\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                            <div class=\"col-sm-8 m-auto\">\n");
      out.write("                                <div class=\"card\">\n");
      out.write("                                    <div class=\"card-body\">\n");
      out.write("                                        <div class=\"card-header-2\">\n");
      out.write("                                            <h5>Update Product Information</h5>\n");
      out.write("                                        </div>\n");
      out.write("\n");
      out.write("                                        ");

                                            Product p = (Product) request.getAttribute("product");
                                            String imagePath = application.getContextPath() + "/img/products/" + p.getpPhoto();
                                        
      out.write("\n");
      out.write("\n");
      out.write("                                        <form action=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/admin/update-product/\"\n");
      out.write("                                              method=\"POST\"\n");
      out.write("                                              class=\"theme-form theme-form-2 mega-form\"\n");
      out.write("                                              enctype=\"multipart/form-data\">\n");
      out.write("                                            <div class=\"mb-4 row align-items-center\">\n");
      out.write("                                                <div class=\"col-sm-9\">\n");
      out.write("                                                    <input type=\"hidden\" class=\"form-control\"\n");
      out.write("                                                           placeholder=\"Product id\" name=\"pId\" id=\"pId\" required\n");
      out.write("                                                           value=\"");
      out.print( p.getPid() );
      out.write("\"/>\n");
      out.write("                                                </div>\n");
      out.write("                                            </div>\n");
      out.write("                                            <div class=\"mb-4 row align-items-center\">\n");
      out.write("                                                <label class=\"form-label-title col-sm-3 mb-0\">Name</label>\n");
      out.write("                                                <div class=\"col-sm-9\">\n");
      out.write("                                                    <input type=\"text\" class=\"form-control\"\n");
      out.write("                                                           placeholder=\"Product name\" name=\"updated_pName\"\n");
      out.write("                                                           id=\"updated_pName\" required value=\"");
      out.print( p.getpName() );
      out.write("\"/>\n");
      out.write("                                                </div>\n");
      out.write("                                            </div>\n");
      out.write("\n");
      out.write("                                            <div class=\"mb-4 row align-items-center\">\n");
      out.write("                                                <label class=\"col-sm-3 col-form-label form-label-title\">Description</label>\n");
      out.write("                                                <div class=\"col-sm-9\">\n");
      out.write("                                                    <textarea style=\"height: 150px;\" class=\"form-control\"\n");
      out.write("                                                              placeholder=\"Product description\" name=\"updated_pDesc\"\n");
      out.write("                                                              id=\"updated_pDesc\" required>");
      out.print( p.getpDesc() );
      out.write("</textarea>\n");
      out.write("                                                </div>\n");
      out.write("                                            </div>\n");
      out.write("\n");
      out.write("                                            <div class=\"mb-4 row align-items-center\">\n");
      out.write("                                                <label class=\"col-sm-3 col-form-label form-label-title\">Price</label>\n");
      out.write("                                                <div class=\"col-sm-9\">\n");
      out.write("                                                    <input class=\"form-control\" type=\"number\"\n");
      out.write("                                                           placeholder=\"Product Price\" name=\"updated_pPrice\"\n");
      out.write("                                                           id=\"updated_pPrice\" required value=\"");
      out.print( p.getpPrice() );
      out.write("\"/>\n");
      out.write("                                                </div>\n");
      out.write("                                            </div>\n");
      out.write("\n");
      out.write("                                            <div class=\"mb-4 row align-items-center\">\n");
      out.write("                                                <label class=\"col-sm-3 col-form-label form-label-title\">Discount</label>\n");
      out.write("                                                <div class=\"col-sm-9\">\n");
      out.write("                                                    <input type=\"number\" class=\"form-control\"\n");
      out.write("                                                           placeholder=\"Product discount\" name=\"updated_pDiscount\"\n");
      out.write("                                                           id=\"updated_pDiscount\" required\n");
      out.write("                                                           value=\"");
      out.print( p.getpDiscount() );
      out.write("\"/>\n");
      out.write("                                                </div>\n");
      out.write("                                            </div>\n");
      out.write("\n");
      out.write("                                            <div class=\"mb-4 row align-items-center\">\n");
      out.write("                                                <label class=\"col-sm-3 col-form-label form-label-title\">Quantity</label>\n");
      out.write("                                                <div class=\"col-sm-9\">\n");
      out.write("                                                    <input type=\"number\" class=\"form-control\"\n");
      out.write("                                                           placeholder=\"Product quantity\" name=\"updated_pQuantity\"\n");
      out.write("                                                           id=\"updated_pQuantity\" required\n");
      out.write("                                                           value=\"");
      out.print( p.getpQuantity() );
      out.write("\"/>\n");
      out.write("                                                </div>\n");
      out.write("                                            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                                            <div class=\"mb-4 row align-items-center\">\n");
      out.write("                                                <label\n");
      out.write("                                                        class=\"col-sm-3 col-form-label form-label-title\">Category</label>\n");
      out.write("                                                <div class=\"col-sm-9\">\n");
      out.write("                                                    <select class=\"js-example-basic-single w-100\" name=\"catId\"\n");
      out.write("                                                            class=\"form-control\" id=\"updated_pCategory\">\n");
      out.write("\n");
      out.write("                                                        ");
      out.write("\n");
      out.write("                                                        ");

                                                            for (Category c : list) {
                                                                String selected = "";
                                                                if (p.getCategory().getCategoryTitle().equals(c.getCategoryTitle())) {
                                                                    selected = "selected";
                                                                }
                                                        
      out.write("\n");
      out.write("                                                        <option value=\"");
      out.print( c.getCategoryId() );
      out.write('"');
      out.write(' ');
      out.print( selected );
      out.write('>');
      out.print( c.getCategoryTitle() );
      out.write("\n");
      out.write("                                                        </option>\n");
      out.write("                                                        ");

                                                            }
                                                        
      out.write("\n");
      out.write("                                                    </select>\n");
      out.write("                                                </div>\n");
      out.write("                                            </div>\n");
      out.write("\n");
      out.write("                                            <div class=\"row align-items-center\">\n");
      out.write("                                                <label class=\"col-sm-3 col-form-label form-label-title\">Image</label>\n");
      out.write("                                                <div class=\"col-sm-9\">\n");
      out.write("                                                    <div class=\"align-center\">\n");
      out.write("                                                        <img src=\"");
      out.print( imagePath );
      out.write("\" alt=\"");
      out.print( imagePath );
      out.write("\"\n");
      out.write("                                                             style=\"width: 70%;\"/>\n");
      out.write("                                                    </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                                                    <input class=\"form-control form-choose\" type=\"file\"\n");
      out.write("                                                           id=\"updated_pPic\" name=\"updated_pPic\" required/>\n");
      out.write("\n");
      out.write("\n");
      out.write("                                                </div>\n");
      out.write("                                            </div>\n");
      out.write("\n");
      out.write("                                            <div class=\"row align-items-center\">\n");
      out.write("                                                <div class=\"mt-4 \">\n");
      out.write("                                                    <a class=\"btn btn-solid update-product\" type=\"submit\">Update\n");
      out.write("                                                        Product</a>\n");
      out.write("                                                </div>\n");
      out.write("                                            </div>\n");
      out.write("\n");
      out.write("                                        </form>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <!-- New Product Add End -->\n");
      out.write("\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../frontend/include/admin_footer.jsp", out, false);
      out.write("\n");
      out.write("        </div>\n");
      out.write("        <!-- Container-fluid End -->\n");
      out.write("    </div>\n");
      out.write("    <!-- Page Body End -->\n");
      out.write("</div>\n");
      out.write("<!-- page-wrapper End -->\n");
      out.write("\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../frontend/include/admin_logout_modal.jsp", out, false);
      out.write("\n");
      out.write("\n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("\n");
      out.write("    document.getElementsByClassName('update-product').item(0).addEventListener('click', function () {\n");
      out.write("        let pId = document.getElementById('pId').value;\n");
      out.write("        let updated_pName = document.getElementById('updated_pName').value;\n");
      out.write("        let updated_pDesc = document.getElementById('updated_pDesc').value;\n");
      out.write("        let updated_pPrice = document.getElementById('updated_pPrice').value;\n");
      out.write("        let updated_pDiscount = document.getElementById('updated_pDiscount').value;\n");
      out.write("        let updated_pQuantity = document.getElementById('updated_pQuantity').value;\n");
      out.write("        let updated_pCategory = document.getElementById('updated_pCategory').value;\n");
      out.write("\n");
      out.write("\n");
      out.write("        let fileInput = document.getElementById('updated_pPic');\n");
      out.write("        let updated_pPic = fileInput.files[0];\n");
      out.write("\n");
      out.write("        let formData = new FormData();\n");
      out.write("        formData.append('updated_pName', updated_pName);\n");
      out.write("        formData.append('updated_pDesc', updated_pDesc);\n");
      out.write("        formData.append('updated_pPrice', updated_pPrice);\n");
      out.write("        formData.append('updated_pDiscount', updated_pDiscount);\n");
      out.write("        formData.append('updated_pQuantity', updated_pQuantity);\n");
      out.write("        formData.append('updated_pCategory', updated_pCategory);\n");
      out.write("        // formData.append('updated_pPic', updated_pPic);\n");
      out.write("\n");
      out.write("        if (updated_pName.trim() === '' ||\n");
      out.write("            updated_pDesc.trim() === '' ||\n");
      out.write("            updated_pCategory.trim() === '') {\n");
      out.write("            alert(\"Please fill in all fields.\");\n");
      out.write("            return;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("// Append the image file to formData only if a file is selected\n");
      out.write("        if (fileInput.files.length > 0) {\n");
      out.write("            formData.append('updated_pPic', updated_pPic);\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        fetch(`");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${BASE_URL}", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("admin/update-product/` + pId, {\n");
      out.write("            method: 'POST',\n");
      out.write("            body: formData\n");
      out.write("        })\n");
      out.write("            .then(response => response.text())\n");
      out.write("            .then((text) => {\n");
      out.write("                if (text === \"Product Updated Successfully!\") {\n");
      out.write("                    alert(\"Product Updated Successfully!\");\n");
      out.write("                    document.location.href = \"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${BASE_URL}", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("admin/products\";\n");
      out.write("                } else {\n");
      out.write("                    alert(text);\n");
      out.write("                }\n");
      out.write("            });\n");
      out.write("    });\n");
      out.write("\n");
      out.write("</script>\n");
      out.write("\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../frontend/include/admin_script_imports.jsp", out, false);
      out.write("\n");
      out.write("\n");
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
