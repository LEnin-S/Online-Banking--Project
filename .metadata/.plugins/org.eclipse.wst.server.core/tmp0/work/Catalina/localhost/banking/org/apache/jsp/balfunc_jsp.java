/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.55
 * Generated at: 2022-02-14 03:09:13 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.io.*;

public final class balfunc_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("java.io");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("java.sql.Connection");
    _jspx_imports_classes.add("java.sql.ResultSet");
    _jspx_imports_classes.add("java.sql.Statement");
    _jspx_imports_classes.add("java.sql.PreparedStatement");
    _jspx_imports_classes.add("java.sql.DriverManager");
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
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

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
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

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
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

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


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

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<!-- Designined by CodingLab | www.youtube.com/codinglabyt -->\r\n");
      out.write("<html lang=\"en\" dir=\"ltr\">\r\n");
      out.write("  <head>\r\n");
      out.write("    <meta charset=\"UTF-8\">\r\n");
      out.write("    <title> Welcome to Ebank </title>\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"style.css\">\r\n");
      out.write("    <!-- Boxicons CDN Link -->\r\n");
      out.write("    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>\r\n");
      out.write("     <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("	   <!-- Font Icon -->\r\n");
      out.write("<link rel=\"stylesheet\"\r\n");
      out.write("href=\"fonts/material-icon/css/material-design-iconic-font.min.css\">\r\n");
      out.write("\r\n");
      out.write("<!-- Main css -->\r\n");
      out.write("<link rel=\"stylesheet\" href=\"css/style.css\">\r\n");
      out.write("   </head>\r\n");
      out.write("<body>\r\n");
      out.write("   <div class=\"sidebar\">\r\n");
      out.write("    <div class=\"logo-details\">\r\n");
      out.write("      <i class='bx bxs-bank'></i>\r\n");
      out.write("      <span class=\"logo_name\">Ebank</span>\r\n");
      out.write("    </div>\r\n");
      out.write("      <ul class=\"nav-links\">\r\n");
      out.write("        <li>\r\n");
      out.write("          <a href=\"welcome.jsp\" class=\"active\">\r\n");
      out.write("            <i class='bx bx-grid-alt' ></i>\r\n");
      out.write("            <span class=\"links_name\">Dashboard</span>\r\n");
      out.write("          </a>\r\n");
      out.write("        </li>\r\n");
      out.write("        <li>\r\n");
      out.write("          <a href=\"balfunc.jsp\">\r\n");
      out.write("            <i class='bx bxs-user-account' ></i>\r\n");
      out.write("            <span class=\"links_name\">Account Details</span>\r\n");
      out.write("          </a>\r\n");
      out.write("        </li>\r\n");
      out.write("        <li>\r\n");
      out.write("          <a href=\"transfer.jsp\">\r\n");
      out.write("            <i class='bx bx-transfer' ></i>\r\n");
      out.write("            <span class=\"links_name\">Fund Transfer</span>\r\n");
      out.write("          </a>\r\n");
      out.write("        </li>\r\n");
      out.write("        <li>\r\n");
      out.write("          <a href=\"deposit.jsp\">\r\n");
      out.write("            <i class='bx bx-pie-chart-alt-2' ></i>\r\n");
      out.write("            <span class=\"links_name\">Deposit</span>\r\n");
      out.write("          </a>\r\n");
      out.write("        </li>\r\n");
      out.write("        <li>\r\n");
      out.write("          <a href=\"withdraw.jsp\">\r\n");
      out.write("            <i class='bx bx-coin-stack' ></i>\r\n");
      out.write("            <span class=\"links_name\">WithDraw</span>\r\n");
      out.write("          </a>\r\n");
      out.write("        </li>\r\n");
      out.write("        <li>\r\n");
      out.write("          <a href=\"trank.jsp\">\r\n");
      out.write("            <i class='bx bx-book-alt' ></i>\r\n");
      out.write("            <span class=\"links_name\">Statements</span>\r\n");
      out.write("          </a>\r\n");
      out.write("        </li>\r\n");
      out.write("       \r\n");
      out.write("      \r\n");
      out.write("        \r\n");
      out.write("        <li class=\"log_out\">\r\n");
      out.write("          <a href=\"logout.jsp\">\r\n");
      out.write("            <i class='bx bx-log-out'></i>\r\n");
      out.write("            <span class=\"links_name\">Log out</span>\r\n");
      out.write("          </a>\r\n");
      out.write("        </li>\r\n");
      out.write("      </ul>\r\n");
      out.write("  </div>\r\n");
      out.write("  <section class=\"home-section\">\r\n");
      out.write("    <nav>\r\n");
      out.write("      <div class=\"sidebar-button\">\r\n");
      out.write("        <i class='bx bx-menu sidebarBtn'></i>\r\n");
      out.write("        <span class=\"dashboard\">Dashboard</span>\r\n");
      out.write("      </div>\r\n");
      out.write("     \r\n");
      out.write("      <div class=\"profile-details\">\r\n");
      out.write("        <img src=\"images/profile.jpg\" alt=\"\">\r\n");
      out.write("        <span class=\"admin_name\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${username}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("</span>\r\n");
      out.write("        <i class='bx bx-chevron-down' ></i>\r\n");
      out.write("      </div>\r\n");
      out.write("    </nav>\r\n");
      out.write("\r\n");
      out.write("	\r\n");
      out.write("	");
if(session.getAttribute("username")==null){
		response.sendRedirect("Home.html");
	}
	
      out.write('\r');
      out.write('\n');
      out.write('	');

	String username=(String)session.getAttribute("username");
	String password1=(String)session.getAttribute("password");
	String driverName = "com.mysql.jdbc.Driver";
	String connectionUrl = "jdbc:mysql://localhost:3306/";
	String dbName = "banking";
	String userId = "root";
	String password = "dileninban";
	
	try {
	Class.forName(driverName);
	} catch (ClassNotFoundException e) {
	e.printStackTrace();
	}
	
	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
	
      out.write("\r\n");
      out.write("	\r\n");
      out.write("	\r\n");
      out.write("	\r\n");
      out.write("	");

	try{ 
		//String username = request.getParameter("username");
	//	String accountno=request.getParameter("accountno");
	
	//	String pass=request.getParameter("password");
	connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
	statement=connection.createStatement();
	String sql ="SELECT * FROM banking.acc where username='"+username+"'";
	resultSet = statement.executeQuery(sql);
	while(resultSet.next()){
	
      out.write("\r\n");
      out.write("	<div class=\"main\">\r\n");
      out.write("	<br>\r\n");
      out.write("	<br>\r\n");
      out.write("	\r\n");
      out.write("		<!-- Sing in  Form -->\r\n");
      out.write("		<section class=\"balance-check\">\r\n");
      out.write("			<div class=\"container\"> \r\n");
      out.write("				<div class=\"balance-content\">\r\n");
      out.write("					\r\n");
      out.write("					<div class=\"balance-form\">\r\n");
      out.write("						<h2 class=\"form-title\">&nbsp;&nbsp;Your Balance is : </h2>\r\n");
      out.write("						<form name=\"form\" action=\"");
      out.print( request.getContextPath());
      out.write("/welcome.jsp\" method=\"post\">\r\n");
      out.write("							<div class=\"form-group\">\r\n");
      out.write("								 <label>&nbsp;&nbsp;User-Name : </label>\r\n");
      out.write("	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n");
      out.write("	\r\n");
      out.write("	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n");
      out.write("								");
      out.print(resultSet.getString("username") );
      out.write(" \r\n");
      out.write("							</div>\r\n");
      out.write("							<div class=\"form-group\">\r\n");
      out.write("								<label for=\"accounto\">&nbsp;&nbsp;Account-No </label>\r\n");
      out.write("								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n");
      out.write("								 ");
      out.print(resultSet.getString("accountno") );
      out.write(" \r\n");
      out.write("							</div>\r\n");
      out.write("							<div class=\"form-group\">\r\n");
      out.write("								<label for=\"accounto\"> &nbsp;&nbsp;Mail-Id </label>\r\n");
      out.write("								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n");
      out.write("								 ");
      out.print(resultSet.getString("mailid") );
      out.write(" \r\n");
      out.write("							</div>\r\n");
      out.write("							<div class=\"form-group\">\r\n");
      out.write("								<label for=\"accounto\">&nbsp;&nbsp;Phone-Number </label>\r\n");
      out.write("								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n");
      out.write("								 ");
      out.print(resultSet.getString("phonenumber") );
      out.write(" \r\n");
      out.write("							</div>\r\n");
      out.write("								<div class=\"form-group\">\r\n");
      out.write("								<label for=\"amount\">&nbsp;&nbsp;Your Account Balance </label>\r\n");
      out.write("								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n");
      out.write("								");
      out.print(resultSet.getString("amount") );
      out.write(" \r\n");
      out.write("								<br>\r\n");
      out.write("					 \r\n");
      out.write("							</div>\r\n");
      out.write("						</form>\r\n");
      out.write("					</div>\r\n");
      out.write("				</div>\r\n");
      out.write("			</div>\r\n");
      out.write("		</section>\r\n");
      out.write("	\r\n");
      out.write("	</div>\r\n");
      out.write("	");
 
	}
	
	} catch (Exception e) {
	e.printStackTrace();
	}
	
      out.write("\r\n");
      out.write("  </section>\r\n");
      out.write("  <!-- JS -->\r\n");
      out.write("<script src=\"vendor/jquery/jquery.min.js\"></script>\r\n");
      out.write("<script src=\"js/main.js\"></script>\r\n");
      out.write("\r\n");
      out.write("  <script>\r\n");
      out.write("   let sidebar = document.querySelector(\".sidebar\");\r\n");
      out.write("let sidebarBtn = document.querySelector(\".sidebarBtn\");\r\n");
      out.write("sidebarBtn.onclick = function() {\r\n");
      out.write("  sidebar.classList.toggle(\"active\");\r\n");
      out.write("  if(sidebar.classList.contains(\"active\")){\r\n");
      out.write("  sidebarBtn.classList.replace(\"bx-menu\" ,\"bx-menu-alt-right\");\r\n");
      out.write("}else\r\n");
      out.write("  sidebarBtn.classList.replace(\"bx-menu-alt-right\", \"bx-menu\");\r\n");
      out.write("}\r\n");
      out.write(" </script>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
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