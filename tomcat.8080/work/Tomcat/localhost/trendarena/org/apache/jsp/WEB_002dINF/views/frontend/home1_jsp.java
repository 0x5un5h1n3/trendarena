/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/10.1.7
 * Generated at: 2023-12-21 10:48:34 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views.frontend;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.jsp.*;
import com.ox5un5h1n3.web.trendarena.util.Helper;
import com.ox5un5h1n3.web.trendarena.dao.CategoryDao;
import com.ox5un5h1n3.web.trendarena.dao.ProductDao;
import com.ox5un5h1n3.web.trendarena.util.HibernateUtil;
import java.util.List;
import com.ox5un5h1n3.web.trendarena.entity.*;
import com.ox5un5h1n3.web.trendarena.entity.User;

public final class home1_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports,
                 org.apache.jasper.runtime.JspSourceDirectives {

  private static final jakarta.servlet.jsp.JspFactory _jspxFactory =
          jakarta.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(3);
    _jspx_dependants.put("/components/common_css_js.jsp", Long.valueOf(1701057950000L));
    _jspx_dependants.put("/components/common_modals.jsp", Long.valueOf(1701057950000L));
    _jspx_dependants.put("/components/navbar.jsp", Long.valueOf(1703153979960L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("jakarta.servlet");
    _jspx_imports_packages.add("com.ox5un5h1n3.web.trendarena.entity");
    _jspx_imports_packages.add("jakarta.servlet.http");
    _jspx_imports_packages.add("jakarta.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("com.ox5un5h1n3.web.trendarena.entity.User");
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
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("  <title>Mycart: Home</title>\n");
      out.write("  ");
      out.write("<link href=\"https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css\" rel=\"stylesheet\" integrity=\"sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN\" crossorigin=\"anonymous\">\r\n");
      out.write("<!-- css -->\r\n");
      out.write("  \r\n");
      out.write("  <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css\" integrity=\"sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm\" crossorigin=\"anonymous\">\r\n");
      out.write("<!-- javscript -->\r\n");
      out.write("<script\r\n");
      out.write("  src=\"https://code.jquery.com/jquery-3.5.1.min.js\"\r\n");
      out.write("  integrity=\"sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=\"\r\n");
      out.write("  crossorigin=\"anonymous\"></script>\r\n");
      out.write("<script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js\" integrity=\"sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js\" integrity=\"sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("\r\n");
      out.write("<link rel=\"stylesheet\" href=\"css/style.css\">\r\n");
      out.write("<script src=\"js/script.js\"></script>\r\n");
      out.write("\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write('\r');
      out.write('\n');

User user1=(User)session.getAttribute("userLogged");

      out.write("\r\n");
      out.write("<nav class=\"navbar navbar-expand-lg \">\r\n");
      out.write("  <div class=\"container\">\r\n");
      out.write("    <a class=\"navbar-brand\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${BASE_URL}", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\">TrendArena</a>\r\n");
      out.write("  <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\r\n");
      out.write("    <span class=\"navbar-toggler-icon\"></span>\r\n");
      out.write("  </button>\r\n");
      out.write("\r\n");
      out.write("  <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">\r\n");
      out.write("    <ul class=\"navbar-nav mr-auto\">\r\n");
      out.write("      <li class=\"nav-item active\">\r\n");
      out.write("        <a class=\"nav-link\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${BASE_URL}", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\">Home <span class=\"sr-only\">(current)</span></a>\r\n");
      out.write("      </li>\r\n");
      out.write("      \r\n");
      out.write("      <li class=\"nav-item dropdown\">\r\n");
      out.write("        <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdown\" role=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\r\n");
      out.write("          Categories\r\n");
      out.write("        </a>\r\n");
      out.write("        <div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown\">\r\n");
      out.write("          <a class=\"dropdown-item\" href=\"#\">Action</a>\r\n");
      out.write("          <a class=\"dropdown-item\" href=\"#\">Another action</a>\r\n");
      out.write("          <div class=\"dropdown-divider\"></div>\r\n");
      out.write("          <a class=\"dropdown-item\" href=\"#\">Something else here</a>\r\n");
      out.write("        </div>\r\n");
      out.write("      </li>\r\n");
      out.write("        \r\n");
      out.write("    </ul>\r\n");
      out.write("    <ul class=\"navbar-nav ml-auto\">\r\n");
      out.write("    \r\n");
      out.write("    <li class=\"nav-item active\">\r\n");
      out.write("          <a class=\"nav-link\" href=\"#\" data-toggle=\"modal\" data-target=\"#cart\"><i class=\"fa fa-cart-plus\" style=\"font-size: 20px;\"></i><span class=\"ml-0 cart-items\" >( 0 )</span> </a>\r\n");
      out.write("       </li>\r\n");
      out.write("    \r\n");
      out.write("    ");

      if(user1==null)
      {
    	  
      out.write("\r\n");
      out.write("    	  <li class=\"nav-item active\">\r\n");
      out.write("          <a class=\"nav-link\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${BASE_URL}", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("login\">Login </a>\r\n");
      out.write("       </li>\r\n");
      out.write("       <li class=\"nav-item active\">\r\n");
      out.write("          <a class=\"nav-link\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${BASE_URL}", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("register\">Register</a>\r\n");
      out.write("       </li>\r\n");
      out.write("       ");

      }else
      {
    	 
      out.write("\r\n");
      out.write("    	 \r\n");
      out.write("    	 <li class=\"nav-item active\">\r\n");
      out.write("        <a class=\"nav-link\" href=\"");
      out.print(user1.getUserType().toString().equals("admin")?"admin":"admin" );
      out.write('"');
      out.write('>');
      out.print(user1.getName() );
      out.write(" </a>\r\n");
      out.write("     </li>\r\n");
      out.write("     <li class=\"nav-item active\">\r\n");
      out.write("        <a class=\"nav-link\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${BASE_URL}", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("logout\">Logout</a>\r\n");
      out.write("     </li>  	 \r\n");
      out.write("    	 ");
 
      }
    
      out.write("\r\n");
      out.write("    </ul>   \r\n");
      out.write("  </div> \r\n");
      out.write("  </div>\r\n");
      out.write("</nav>");
      out.write('\n');
      out.write('\n');

  String cat=request.getParameter("category");

  ProductDao dao = new ProductDao(HibernateUtil.getSessionFactory());
  List<Product> list=null;

  if(cat==null ||cat.trim().equals("all"))
  {
    list =dao.getAllProducts();
  }
  else{
    int cid=Integer.parseInt(cat.trim());
    list=dao.getAllProductsById(cid);
  }

  CategoryDao cdao = new CategoryDao(HibernateUtil.getSessionFactory());
  List<Category> clist = cdao.getCategories();

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<div class=\"row ml-2\">\n");
      out.write("  <!-- show categories -->\n");
      out.write("\n");
      out.write("  <div class=\"col-md-2\">\n");
      out.write("\n");
      out.write("    <div class=\"list-group mt-4\">\n");
      out.write("      <a href=\"index.jsp?category=all\" class=\"list-group-item list-group-item-action active\">\n");
      out.write("        All Products</a>\n");
      out.write("\n");
      out.write("      ");

        for (Category c : clist) {
      
      out.write("\n");
      out.write("      <a href=\"index.jsp?category=");
      out.print(c.getCategoryId() );
      out.write("\" class=\"list-group-item list-group-item-action\">");
      out.print(c.getCategoryTitle());
      out.write("</a>\n");
      out.write("\n");
      out.write("\n");
      out.write("      ");

        }
      
      out.write("\n");
      out.write("\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("  <!-- //show products -->\n");
      out.write("  <div class=\"col-md-10\">\n");
      out.write("\n");
      out.write("    <!-- row -->\n");
      out.write("    <div class=\"row mt-4\">\n");
      out.write("      <div class=\"col-md-12\">\n");
      out.write("\n");
      out.write("        <div class=\"card-columns\">\n");
      out.write("\n");
      out.write("          <!--   traversing product -->\n");
      out.write("\n");
      out.write("          ");


            for(Product p:list)
            {
          
      out.write("\n");
      out.write("          <div class=\"card\">\n");
      out.write("            <div class=\"container text-center\">\n");
      out.write("              <img alt=\"...\" style=\"max-height:200px; max-width:100px; width:auto;\" src=\"img/products/");
      out.print( p.getpPhoto());
      out.write("\" class=\"card-img-top m-2\">\n");
      out.write("\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("            <div class=\"class-body\">\n");
      out.write("              <h5 class=\"card-title ml-2\">");
      out.print(p.getpName() );
      out.write("</h5>\n");
      out.write("              <p class=\"card-text ml-2\">");
      out.print(Helper.get10Words(p.getpDesc()) );
      out.write("</p>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"card-footer text-center\">\n");
      out.write("              <button class=\"btn custom-bg text-white\" onclick=\"add_to_cart(");
      out.print(p.getPid() );
      out.write(',');
      out.write('\'');
      out.print(p.getpName() );
      out.write('\'');
      out.write(',');
      out.write('\'');
      out.print(p.getDiscountedPrice() );
      out.write("')\">Add to Cart</button>\n");
      out.write("              <button class=\"btn btn-outline-success\">&#x24; ");
      out.print(p.getDiscountedPrice());
      out.write("/- <span class=\"text-secondary discount-label\">  &#x24;");
      out.print(p.getpPrice() );
      out.write(' ');
      out.print(p.getpDiscount() );
      out.write("%</span></button>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("          </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("          ");

            }


            if(list.size()==0)
            {
              out.println("<h3>No item in this category</h3>");
            }



          
      out.write("\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("      </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("      <script>\n");
      out.write("\n");
      out.write("\n");
      out.write("        /*=====================\n");
      out.write("           25. Cart Function\n");
      out.write("           ==========================*/\n");
      out.write("\n");
      out.write("        function add_to_cart(pid,pname,price){\n");
      out.write("\n");
      out.write("          alert(pname)\n");
      out.write("\n");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");
      out.write('\n');
      out.write('	');
      out.write('	');
      out.write('\n');
      out.write('	');
      out.write('	');
      out.write('\n');
      out.write('	');
      out.write('	');
      out.write('\n');
      out.write('	');
      out.write('	');
      out.write('\n');
      out.write('	');
      out.write('	');
      out.write('\n');
      out.write('	');
      out.write('	');
      out.write('\n');
      out.write('	');
      out.write('	');
      out.write('\n');
      out.write('	');
      out.write('	');
      out.write('\n');
      out.write('	');
      out.write('	');
      out.write('\n');
      out.write('	');
      out.write('	');
      out.write("\n");
      out.write("\n");
      out.write("		");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("		");
      out.write("\n");
      out.write("\n");
      out.write("		");
      out.write('\n');
      out.write('	');
      out.write('	');
      out.write('\n');
      out.write('	');
      out.write('	');
      out.write('\n');
      out.write('	');
      out.write('	');
      out.write('\n');
      out.write('	');
      out.write('	');
      out.write("\n");
      out.write("\n");
      out.write("		");
      out.write('\n');
      out.write('	');
      out.write('	');
      out.write("\n");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        ");
      out.write('\n');
      out.write('	');
      out.write('	');
      out.write("\n");
      out.write("\n");
      out.write("		");
      out.write("\n");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("      </script>\n");
      out.write("\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("  </div>\n");
      out.write("\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!-- Modal -->\r\n");
      out.write("<div class=\"modal fade\" id=\"cart\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"exampleModalLabel\" aria-hidden=\"true\">\r\n");
      out.write("  <div class=\"modal-dialog modal-lg\" role=\"document\">\r\n");
      out.write("    <div class=\"modal-content\">\r\n");
      out.write("      <div class=\"modal-header\">\r\n");
      out.write("        <h5 class=\"modal-title\" id=\"exampleModalLabel\">Your cart</h5>\r\n");
      out.write("        <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">\r\n");
      out.write("          <span aria-hidden=\"true\">&times;</span>\r\n");
      out.write("        </button>\r\n");
      out.write("      </div>\r\n");
      out.write("      <div class=\"modal-body\">\r\n");
      out.write("        <div class=\"cart-body\">\r\n");
      out.write("        \r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("      <div class=\"modal-footer\">\r\n");
      out.write("        <button type=\"button\" class=\"btn btn-secondary\" data-dismiss=\"modal\">Close</button>\r\n");
      out.write("        <button type=\"button\" class=\"btn btn-primary checkout-btn\" onclick=\"gotoCheckout()\">Checkout</button>\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("  </div>\r\n");
      out.write("</div>");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>\n");
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
