<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page import="java.io.*" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<!-- Designined by CodingLab | www.youtube.com/codinglabyt -->
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <title> Welcome to Ebank </title>
    <link rel="stylesheet" href="style.css">
    <!-- Boxicons CDN Link -->
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
	   <!-- Font Icon -->
<link rel="stylesheet"
href="fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="css/style.css">
   </head>
<body>
   <div class="sidebar">
    <div class="logo-details">
      <i class='bx bxs-bank'></i>
      <span class="logo_name">Ebank</span>
    </div>
      <ul class="nav-links">
        <li>
          <a href="welcome.jsp" class="active">
            <i class='bx bx-grid-alt' ></i>
            <span class="links_name">Dashboard</span>
          </a>
        </li>
        <li>
          <a href="balfunc.jsp">
            <i class='bx bxs-user-account' ></i>
            <span class="links_name">Account Details</span>
          </a>
        </li>
        <li>
          <a href="transfer.jsp">
            <i class='bx bx-transfer' ></i>
            <span class="links_name">Fund Transfer</span>
          </a>
        </li>
        <li>
          <a href="deposit.jsp">
            <i class='bx bx-pie-chart-alt-2' ></i>
            <span class="links_name">Deposit</span>
          </a>
        </li>
        <li>
          <a href="withdraw.jsp">
            <i class='bx bx-coin-stack' ></i>
            <span class="links_name">WithDraw</span>
          </a>
        </li>
        <li>
          <a href="trank.jsp">
            <i class='bx bx-book-alt' ></i>
            <span class="links_name">Statements</span>
          </a>
        </li>
        <li>
       
      
        
        <li class="log_out">
          <a href="logout.jsp">
            <i class='bx bx-log-out'></i>
            <span class="links_name">Log out</span>
          </a>
        </li>
      </ul>
  </div>
  <section class="home-section">
    <nav>
      <div class="sidebar-button">
        <i class='bx bx-menu sidebarBtn'></i>
        <span class="dashboard">Dashboard</span>
      </div>
      <div class="profile-details">
        <img src="images/profile.jpg" alt="">
        <span class="admin_name">${username}</span>
        <i class='bx bx-chevron-down' ></i>
      </div>
    </nav>

	<%

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
	String username=(String)session.getAttribute("username");
	String password1=(String)session.getAttribute("password");

	String pass=request.getParameter("password");
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM banking.histroy where username='"+username+"'";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<div class="main">
<br>
				<br>
				

	<!-- Sing in  Form -->
	<section class="balance-check">
		<div class="container"> 
			<div class="balance-content">
				<div class="balance-form">
				<br>
					<h3 class="form-title">&nbsp;&nbsp;&nbsp;Transaction detail </h3>
					<form name="form" action="<%= request.getContextPath()%>/welcome.html" method="post">
						<div class="form-group">
							 <label>&nbsp;&nbsp;&nbsp;User-Name : </label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <%=resultSet.getString("username") %> 
						</div>
						<div class="form-group">
							<label for="amount">&nbsp;&nbsp;&nbsp; Amount </label>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <%=resultSet.getString("amount") %> 
						</div>
						<div class="form-group">
							<label for="accounto">&nbsp;&nbsp;&nbsp;Transcation Type </label>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							 <%=resultSet.getString("transcation") %> 
						</div>
						<div class="form-group">
							<label for="amount">&nbsp;&nbsp;&nbsp; Received Account-No </label>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <%=resultSet.getString("received_accountno") %> 
						</div>
						<div class="form-group">
							<label for="accounto">&nbsp;&nbsp;&nbsp;Transcation Method </label>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							 <%=resultSet.getString("type") %> 
						</div>
							<div class="form-group">
							<label for="amount">&nbsp;&nbsp;&nbsp;Message </label>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <%=resultSet.getString("message") %> 
					
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

  </section>
  <!-- JS -->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="js/main.js"></script>

  <script>
   let sidebar = document.querySelector(".sidebar");
let sidebarBtn = document.querySelector(".sidebarBtn");
sidebarBtn.onclick = function() {
  sidebar.classList.toggle("active");
  if(sidebar.classList.contains("active")){
  sidebarBtn.classList.replace("bx-menu" ,"bx-menu-alt-right");
}else
  sidebarBtn.classList.replace("bx-menu-alt-right", "bx-menu");
}
 </script>

</body>
</html>