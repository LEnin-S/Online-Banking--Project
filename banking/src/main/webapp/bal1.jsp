<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html style="font-size: 16px;">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="​&nbsp;eBANK, eBANKING">
    <meta name="description" content="">
    <meta name="page_type" content="np-template-header-footer-from-plugin">
    <title>welcome</title>
	<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">
<link rel="stylesheet" href="welcome.css" media="screen">
    <script class="u-script" type="text/javascript" src="jquery.js" defer=""></script>
 
    
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">
    
    <link rel="stylesheet" href="css/style.css">
    <script type="application/ld+json">{
	
}</script>
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="welcome">
    <meta property="og:type" content="website">
  </head>
  <body class="u-body u-xl-mode"><header class="u-clearfix u-header u-header" id="sec-c823"><div class="u-clearfix u-sheet u-sheet-1">
        <h1 class="u-text u-title u-text-1"><span class="u-file-icon u-icon"><img src="images/755195.png" alt=""></span>&nbsp;eBANK
        </h1>
        <a href="" class="u-btn u-btn-round u-button-style u-hover-palette-1-light-1 u-palette-1-base u-radius-50 u-btn-1"> &nbsp;LOGOUT</a>
        <h3 class="u-text u-text-default u-text-2">WELCOME ABC<span style="font-weight: 700;">
            <span style="font-size: 1.875rem;">
              <span style="font-weight: 400;"></span>
            </span>
          </span>
        </h3>
      </div></header>
    <section class="u-align-left u-clearfix u-image u-shading u-section-1" src="" id="sec-0bbb" data-image-width="150" data-image-height="103">
      <div class="u-align-left u-clearfix u-sheet u-sheet-1">
        <div class="u-expanded-width u-tab-links-align-left u-tabs u-tabs-1">
          <ul class="u-spacing-10 u-tab-list u-unstyled" role="tablist">
            <li class="u-tab-item u-tab-item-1" role="presentation">
              <a class="active u-active-grey-10 u-button-style u-tab-link u-text-active-black u-text-black u-tab-link-1" id="link-tab-14b7" href="balfunc.jsp" role="tab" aria-controls="tab-14b7" aria-selected="true">ACCOUNT</a>
            </li>
            <li class="u-tab-item u-tab-item-2" role="presentation">
              <a class="u-active-grey-10 u-button-style u-tab-link u-text-active-black u-text-black u-tab-link-2" id="link-tab-0da5" href="transfer.jsp" role="tab" aria-controls="tab-0da5" aria-selected="false">FUND TRANSFER</a>
            </li>
            <li class="u-tab-item" role="presentation">
              <a class="u-active-grey-10 u-button-style u-tab-link u-text-active-black u-text-black u-tab-link-3" id="link-tab-0371" href="deposit.jsp" role="tab" aria-controls="tab-0371" aria-selected="false">DEPOSIT</a>
            </li>
            <li class="u-tab-item" role="presentation">
              <a class="u-active-grey-10 u-button-style u-tab-link u-text-active-black u-text-black u-tab-link-4" id="link-tab-2917" href="transaction.jsp" role="tab" aria-controls="tab-2917" aria-selected="false">STATEMENT</a>
            </li>
            <li class="u-tab-item u-tab-item-5" role="presentation">
              <a class="u-active-grey-10 u-button-style u-tab-link u-text-active-black u-text-black u-tab-link-5" id="tab-6e5a" href="Withdraw.jsp" role="tab" aria-controls="link-tab-6e5a" aria-selected="false">WITHDRAW</a>
            </li>
            <li class="u-tab-item u-tab-item-6" role="presentation">
              <a class="u-active-grey-10 u-button-style u-tab-link u-text-active-black u-text-black u-tab-link-6" id="link-tab-4f18" href="#tab-4f18" role="tab" aria-controls="tab-4f18" aria-selected="false">CARDS</a>
            </li>
          </ul>
		  <% PrintWriter tr=response.getWriter();
tr.print(session.getAttribute("username"));
String oo=request.getParameter("username");
tr.print(oo);

%>
<%if(session.getAttribute("username")==null){
	response.sendRedirect("Home.html");
}
%>
<%
String username=(String)session.getAttribute("username");
String password1=(String)session.getAttribute("password");
tr.print(username);
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
%>



<%
try{ 
	//String username = request.getParameter("username");
//	String accountno=request.getParameter("accountno");

	String pass=request.getParameter("password");
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM banking.acc where username='"+username+"'";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<div class="main">

	<!-- Sing in  Form -->
	<section class="balance-check">
		<div class="container"> 
			<div class="balance-content">
				
				<div class="balance-form">
					<h2 class="form-title"> Account Details : </h2>
					<form name="form" action="<%= request.getContextPath()%>/welcome.jsp" method="post">
						<div class="form-group">
							 <label>User-Name : </label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <%=resultSet.getString("username") %> 
						</div>
						<div class="form-group">
							<label for="accounto"> Your Account-No </label>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							 <%=resultSet.getString("accountno") %> 
						</div>
							<div class="form-group">
							<label for="amount"> Your Account Balance </label>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <%=resultSet.getString("amount") %> 
                 
						</div>
						<div class="form-group">
							<input type="checkbox" name="remember-me" id="remember-me"
								class="agree-term" /> <label for="remember-me"
								class="label-agree-term"><span><span></span></span>Remember
								me</label>
						</div>
						<div class="form-group form-button">
							<input type="submit" name="back" id="Back"
								class="form-submit" value="Back" />
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>

</div>
<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>

<!-- JS -->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="js/main.js"></script>
        </div>
      </div>
    </section>
    
    
    <footer class="u-clearfix u-footer u-grey-80" id="sec-377c"><div class="u-clearfix u-sheet u-sheet-1">
        <div class="u-align-left u-social-icons u-spacing-10 u-social-icons-1">
          <a class="u-social-url" title="facebook" target="_blank" href=""><span class="u-icon u-social-facebook u-social-icon u-icon-1"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 112 112" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-3e90"></use></svg><svg class="u-svg-content" viewBox="0 0 112 112" x="0" y="0" id="svg-3e90"><circle fill="currentColor" cx="56.1" cy="56.1" r="55"></circle><path fill="#FFFFFF" d="M73.5,31.6h-9.1c-1.4,0-3.6,0.8-3.6,3.9v8.5h12.6L72,58.3H60.8v40.8H43.9V58.3h-8V43.9h8v-9.2
            c0-6.7,3.1-17,17-17h12.5v13.9H73.5z"></path></svg></span>
          </a>
          <a class="u-social-url" title="twitter" target="_blank" href=""><span class="u-icon u-social-icon u-social-twitter u-icon-2"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 112 112" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-15cc"></use></svg><svg class="u-svg-content" viewBox="0 0 112 112" x="0" y="0" id="svg-15cc"><circle fill="currentColor" class="st0" cx="56.1" cy="56.1" r="55"></circle><path fill="#FFFFFF" d="M83.8,47.3c0,0.6,0,1.2,0,1.7c0,17.7-13.5,38.2-38.2,38.2C38,87.2,31,85,25,81.2c1,0.1,2.1,0.2,3.2,0.2
            c6.3,0,12.1-2.1,16.7-5.7c-5.9-0.1-10.8-4-12.5-9.3c0.8,0.2,1.7,0.2,2.5,0.2c1.2,0,2.4-0.2,3.5-0.5c-6.1-1.2-10.8-6.7-10.8-13.1
            c0-0.1,0-0.1,0-0.2c1.8,1,3.9,1.6,6.1,1.7c-3.6-2.4-6-6.5-6-11.2c0-2.5,0.7-4.8,1.8-6.7c6.6,8.1,16.5,13.5,27.6,14
            c-0.2-1-0.3-2-0.3-3.1c0-7.4,6-13.4,13.4-13.4c3.9,0,7.3,1.6,9.8,4.2c3.1-0.6,5.9-1.7,8.5-3.3c-1,3.1-3.1,5.8-5.9,7.4
            c2.7-0.3,5.3-1,7.7-2.1C88.7,43,86.4,45.4,83.8,47.3z"></path></svg></span>
          </a>
          <a class="u-social-url" title="instagram" target="_blank" href=""><span class="u-icon u-social-icon u-social-instagram u-icon-3"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 112 112" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-391c"></use></svg><svg class="u-svg-content" viewBox="0 0 112 112" x="0" y="0" id="svg-391c"><circle fill="currentColor" cx="56.1" cy="56.1" r="55"></circle><path fill="#FFFFFF" d="M55.9,38.2c-9.9,0-17.9,8-17.9,17.9C38,66,46,74,55.9,74c9.9,0,17.9-8,17.9-17.9C73.8,46.2,65.8,38.2,55.9,38.2
            z M55.9,66.4c-5.7,0-10.3-4.6-10.3-10.3c-0.1-5.7,4.6-10.3,10.3-10.3c5.7,0,10.3,4.6,10.3,10.3C66.2,61.8,61.6,66.4,55.9,66.4z"></path><path fill="#FFFFFF" d="M74.3,33.5c-2.3,0-4.2,1.9-4.2,4.2s1.9,4.2,4.2,4.2s4.2-1.9,4.2-4.2S76.6,33.5,74.3,33.5z"></path><path fill="#FFFFFF" d="M73.1,21.3H38.6c-9.7,0-17.5,7.9-17.5,17.5v34.5c0,9.7,7.9,17.6,17.5,17.6h34.5c9.7,0,17.5-7.9,17.5-17.5V38.8
            C90.6,29.1,82.7,21.3,73.1,21.3z M83,73.3c0,5.5-4.5,9.9-9.9,9.9H38.6c-5.5,0-9.9-4.5-9.9-9.9V38.8c0-5.5,4.5-9.9,9.9-9.9h34.5
            c5.5,0,9.9,4.5,9.9,9.9V73.3z"></path></svg></span>
          </a>
          <a class="u-social-url" title="linkedin" target="_blank" href=""><span class="u-icon u-social-icon u-social-linkedin u-icon-4"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 112 112" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-07d7"></use></svg><svg class="u-svg-content" viewBox="0 0 112 112" x="0" y="0" id="svg-07d7"><circle fill="currentColor" cx="56.1" cy="56.1" r="55"></circle><path fill="#FFFFFF" d="M41.3,83.7H27.9V43.4h13.4V83.7z M34.6,37.9L34.6,37.9c-4.6,0-7.5-3.1-7.5-7c0-4,3-7,7.6-7s7.4,3,7.5,7
            C42.2,34.8,39.2,37.9,34.6,37.9z M89.6,83.7H76.2V62.2c0-5.4-1.9-9.1-6.8-9.1c-3.7,0-5.9,2.5-6.9,4.9c-0.4,0.9-0.4,2.1-0.4,3.3v22.5
            H48.7c0,0,0.2-36.5,0-40.3h13.4v5.7c1.8-2.7,5-6.7,12.1-6.7c8.8,0,15.4,5.8,15.4,18.1V83.7z"></path></svg></span>
          </a>
        </div>
      </div></footer>
   <span style="height: 64px; width: 64px; margin-left: 0px; margin-right: auto; margin-top: 0px; background-image: none; right: 20px; bottom: 20px" class="u-back-to-top u-icon u-icon-circle u-opacity u-opacity-85 u-palette-1-base u-spacing-15" data-href="#">
        <svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 551.13 551.13"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-1d98"></use></svg>
        <svg class="u-svg-content" enable-background="new 0 0 551.13 551.13" viewBox="0 0 551.13 551.13" xmlns="http://www.w3.org/2000/svg" id="svg-1d98"><path d="m275.565 189.451 223.897 223.897h51.668l-275.565-275.565-275.565 275.565h51.668z"></path></svg>
    </span>
  </body>
</html>