/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/10.1.7
 * Generated at: 2023-08-20 12:18:21 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views.frontend.auth;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write('\n');
      if (_jspx_meth_layout_005fextends_005f0(_jspx_page_context))
        return;
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

  private boolean _jspx_meth_layout_005fextends_005f0(jakarta.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    jakarta.servlet.jsp.PageContext pageContext = _jspx_page_context;
    jakarta.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  layout:extends
    lk.callidora.jsp.inheritance.ExtendsTag _jspx_th_layout_005fextends_005f0 = new lk.callidora.jsp.inheritance.ExtendsTag();
    _jsp_getInstanceManager().newInstance(_jspx_th_layout_005fextends_005f0);
    try {
      _jspx_th_layout_005fextends_005f0.setJspContext(_jspx_page_context);
      // /WEB-INF/views/frontend/auth/login.jsp(2,0) name = name type = null reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_layout_005fextends_005f0.setName("base");
      _jspx_th_layout_005fextends_005f0.setJspBody(new Helper( 0, _jspx_page_context, _jspx_th_layout_005fextends_005f0, null));
      _jspx_th_layout_005fextends_005f0.doTag();
    } finally {
      _jsp_getInstanceManager().destroyInstance(_jspx_th_layout_005fextends_005f0);
    }
    return false;
  }

  private boolean _jspx_meth_layout_005fput_005f0(jakarta.servlet.jsp.tagext.JspTag _jspx_parent, jakarta.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    jakarta.servlet.jsp.PageContext pageContext = _jspx_page_context;
    jakarta.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  layout:put
    lk.callidora.jsp.inheritance.PutTag _jspx_th_layout_005fput_005f0 = new lk.callidora.jsp.inheritance.PutTag();
    _jsp_getInstanceManager().newInstance(_jspx_th_layout_005fput_005f0);
    try {
      _jspx_th_layout_005fput_005f0.setJspContext(_jspx_page_context);
      _jspx_th_layout_005fput_005f0.setParent(_jspx_parent);
      // /WEB-INF/views/frontend/auth/login.jsp(3,4) name = block type = null reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_layout_005fput_005f0.setBlock("contents");
      _jspx_th_layout_005fput_005f0.setJspBody(new Helper( 1, _jspx_page_context, _jspx_th_layout_005fput_005f0, null));
      _jspx_th_layout_005fput_005f0.doTag();
    } finally {
      _jsp_getInstanceManager().destroyInstance(_jspx_th_layout_005fput_005f0);
    }
    return false;
  }

  private boolean _jspx_meth_layout_005fput_005f1(jakarta.servlet.jsp.tagext.JspTag _jspx_parent, jakarta.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    jakarta.servlet.jsp.PageContext pageContext = _jspx_page_context;
    jakarta.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  layout:put
    lk.callidora.jsp.inheritance.PutTag _jspx_th_layout_005fput_005f1 = new lk.callidora.jsp.inheritance.PutTag();
    _jsp_getInstanceManager().newInstance(_jspx_th_layout_005fput_005f1);
    try {
      _jspx_th_layout_005fput_005f1.setJspContext(_jspx_page_context);
      _jspx_th_layout_005fput_005f1.setParent(_jspx_parent);
      // /WEB-INF/views/frontend/auth/login.jsp(93,4) name = block type = null reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_layout_005fput_005f1.setBlock("script");
      _jspx_th_layout_005fput_005f1.setJspBody(new Helper( 2, _jspx_page_context, _jspx_th_layout_005fput_005f1, null));
      _jspx_th_layout_005fput_005f1.doTag();
    } finally {
      _jsp_getInstanceManager().destroyInstance(_jspx_th_layout_005fput_005f1);
    }
    return false;
  }

  private class Helper
      extends org.apache.jasper.runtime.JspFragmentHelper
  {
    private jakarta.servlet.jsp.tagext.JspTag _jspx_parent;
    private int[] _jspx_push_body_count;

    public Helper( int discriminator, jakarta.servlet.jsp.JspContext jspContext, jakarta.servlet.jsp.tagext.JspTag _jspx_parent, int[] _jspx_push_body_count ) {
      super( discriminator, jspContext, _jspx_parent );
      this._jspx_parent = _jspx_parent;
      this._jspx_push_body_count = _jspx_push_body_count;
    }
    public boolean invoke0( jakarta.servlet.jsp.JspWriter out ) 
      throws java.lang.Throwable
    {
      out.write("\n");
      out.write("    ");
      if (_jspx_meth_layout_005fput_005f0(_jspx_parent, _jspx_page_context))
        return true;
      out.write("\n");
      out.write("\n");
      out.write("    ");
      if (_jspx_meth_layout_005fput_005f1(_jspx_parent, _jspx_page_context))
        return true;
      out.write('\n');
      out.write('\n');
      return false;
    }
    public boolean invoke1( jakarta.servlet.jsp.JspWriter out ) 
      throws java.lang.Throwable
    {
      out.write("\n");
      out.write("        <!-- log in section start -->\n");
      out.write("        <section class=\"log-in-section background-image-2 section-b-space\">\n");
      out.write("            <div class=\"container-fluid-lg w-100\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-xxl-6 col-xl-5 col-lg-6 d-lg-block d-none ms-auto\">\n");
      out.write("                        <div class=\"image-contain\">\n");
      out.write("                            <img src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${BASE_URL}", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("assets/images/inner-page/log-in.png\" class=\"img-fluid\" alt=\"\">\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"col-xxl-4 col-xl-5 col-lg-6 col-sm-8 mx-auto\">\n");
      out.write("                        <div class=\"log-in-box\">\n");
      out.write("                            <div class=\"log-in-title\">\n");
      out.write("                                <h3>Welcome To TrendArena</h3>\n");
      out.write("                                <h4>Log In Your Account</h4>\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                            <div class=\"input-box\">\n");
      out.write("                                <form class=\"row g-4\">\n");
      out.write("                                    <div class=\"col-12\">\n");
      out.write("                                        <div class=\"form-floating theme-form-floating log-in-form\">\n");
      out.write("                                            <input type=\"email\" class=\"form-control\" id=\"email\" placeholder=\"Email Address\">\n");
      out.write("                                            <label for=\"email\">Email Address</label>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("\n");
      out.write("                                    <div class=\"col-12\">\n");
      out.write("                                        <div class=\"form-floating theme-form-floating log-in-form\">\n");
      out.write("                                            <input type=\"password\" class=\"form-control\" id=\"password\"\n");
      out.write("                                                   placeholder=\"Password\">\n");
      out.write("                                            <label for=\"password\">Password</label>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("\n");
      out.write("                                    <div class=\"col-12\">\n");
      out.write("                                        <div class=\"forgot-box\">\n");
      out.write("                                            <div class=\"form-check ps-0 m-0 remember-box\">\n");
      out.write("                                                <input class=\"checkbox_animated check-box\" type=\"checkbox\"\n");
      out.write("                                                       id=\"flexCheckDefault\">\n");
      out.write("                                                <label class=\"form-check-label\" for=\"flexCheckDefault\">Remember me</label>\n");
      out.write("                                            </div>\n");
      out.write("                                            <a href=\"forgot.html\" class=\"forgot-password\">Forgot Password?</a>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("\n");
      out.write("                                    <div class=\"col-12\">\n");
      out.write("                                        <button class=\"btn btn-animation w-100 justify-content-center\" type=\"submit\">Log\n");
      out.write("                                            In</button>\n");
      out.write("                                    </div>\n");
      out.write("                                </form>\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                            <div class=\"other-log-in\">\n");
      out.write("                                <h6>or</h6>\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                            <div class=\"log-in-button\">\n");
      out.write("                                <ul>\n");
      out.write("                                    <li>\n");
      out.write("                                        <a href=\"https://www.google.com/\" class=\"btn google-button w-100\">\n");
      out.write("                                            <img src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${BASE_URL}", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("assets/images/inner-page/google.png\" class=\"blur-up lazyload\"\n");
      out.write("                                                 alt=\"\"> Log In with Google\n");
      out.write("                                        </a>\n");
      out.write("                                    </li>\n");
      out.write("                                    <li>\n");
      out.write("                                        <a href=\"https://www.facebook.com/\" class=\"btn google-button w-100\">\n");
      out.write("                                            <img src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${BASE_URL}", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("assets/images/inner-page/facebook.png\" class=\"blur-up lazyload\"\n");
      out.write("                                                 alt=\"\"> Log In with Facebook\n");
      out.write("                                        </a>\n");
      out.write("                                    </li>\n");
      out.write("                                </ul>\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                            <div class=\"other-log-in\">\n");
      out.write("                                <h6></h6>\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                            <div class=\"sign-up-box\">\n");
      out.write("                                <h4>Don't have an account?</h4>\n");
      out.write("                                <a href=\"sign-up.html\">Sign Up</a>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("        <!-- log in section end -->\n");
      out.write("    ");
      return false;
    }
    public boolean invoke2( jakarta.servlet.jsp.JspWriter out ) 
      throws java.lang.Throwable
    {
      out.write("\n");
      out.write("\n");
      out.write("        <script type=\"\">\n");
      out.write("        </script>\n");
      out.write("    ");
      return false;
    }
    public void invoke( java.io.Writer writer )
      throws jakarta.servlet.jsp.JspException
    {
      jakarta.servlet.jsp.JspWriter out = null;
      if( writer != null ) {
        out = this.jspContext.pushBody(writer);
      } else {
        out = this.jspContext.getOut();
      }
      try {
        Object _jspx_saved_JspContext = this.jspContext.getELContext().getContext(jakarta.servlet.jsp.JspContext.class);
        this.jspContext.getELContext().putContext(jakarta.servlet.jsp.JspContext.class,this.jspContext);
        switch( this.discriminator ) {
          case 0:
            invoke0( out );
            break;
          case 1:
            invoke1( out );
            break;
          case 2:
            invoke2( out );
            break;
        }
        jspContext.getELContext().putContext(jakarta.servlet.jsp.JspContext.class,_jspx_saved_JspContext);
      }
      catch( java.lang.Throwable e ) {
        if (e instanceof jakarta.servlet.jsp.SkipPageException)
            throw (jakarta.servlet.jsp.SkipPageException) e;
        throw new jakarta.servlet.jsp.JspException( e );
      }
      finally {
        if( writer != null ) {
          this.jspContext.popBody();
        }
      }
    }
  }
}
