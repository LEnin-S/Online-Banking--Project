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
	 <script> 
		function validate()
		{ 
			 var username = document.form.receiver.value;
			 var amount = document.form.amount.value; 
			 var password = document.form.password.value;
			 var t1accountno= document.form.t1accountno.value;
			 var taccountno= document.form.taccountno.value;
			 if (username==null || username=="")
			 { 
			 alert("UserName can't be blank"); 
			 return false; 
			 }
			 else if (amount==null || amount=="")
			 { 
			 alert("amoount can't be blank"); 
			 return false; 
			 }
			 else if (taccountno==null || taccountno=="")
			 { 
			 alert(" Transfer Accountno can't be blank"); 
			 return false; 
			 }
			 else if (taccountno!=t1accountno)
			 { 
			 alert(" Account  Mis-Match"); 
			 return false; 
			 } 
			 else if(password.length<6)
			 { 
			 alert("Password must be at least 6 characters long."); 
			 return false; 
			 } 
			 
		 } 
		</script> 
		   <!-- Font Icon -->
		<link rel="stylesheet"
		href="fonts/material-icon/css/material-design-iconic-font.min.css">
		
		<!-- Main css -->
		<link rel="stylesheet" href="css/style.css">
   </head>
<body>
  <div class="sidebar">
    <div class="logo-details">
      <i class='bx  bxs-bank'></i>
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

	<% if(session.getAttribute("username")==null){
		response.sendRedirect("Home.html");
	}
	%>
	<div class="main">
	<br>
	<br>
		<!-- Sing in  Form -->
		<section class="WithDraw-Form">
			<div class="container">
				<div class="WithDraw-Form">
					<div class="WithDraw-Form">
					<input type="hidden" id="tranf" value="<%= request.getAttribute("tranf") %>">
						<h2 class="form-title">&nbsp;&nbsp; Transfer-Form</h2>
						<form name="form" action="<%= request.getContextPath()%>/transfer1.jsp" method="post" onsubmit="return validate()">
						
							  <div class="form-group">
								<label for="receiver">&nbsp;&nbsp;<i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="receiver" id="receiver"
									placeholder="Receiver Name" />
							</div>
							<div class="form-group">
								<label for="taccountno"><i class="zmdi zmdi-lock"></i></label> <input
									type="text" name="taccountno" id="taccountno"
									placeholder="Receiver Account no" />
							</div>
							<div class="form-group">
								<label for="t1accountno"><i class="zmdi zmdi-lock"></i></label> <input
									type="text" name="t1accountno" id="t1accountno"
									placeholder="Re-Enter Receiver Account no" />
							</div>
							<div class="form-group">
								<label for="amount"><i class="zmdi zmdi-money"></i></label> <input
									type="text" name="amount" id="amount"
									placeholder="Enter the amount" />
							</div>
							<div class="form-group">
								<label for="password"><i class="zmdi zmdi-lock"></i></label> <input
									type="password" name="password" id="password"
									placeholder="Password" />
							</div>
							<div class="form-group">
								<label for="regards"><i class="zmdi zmdi-email"></i></label> <input
									type="text" name="regards" id="regards"
									placeholder="Enter any Regards(optional)" />
							</div>
							<select name="type" id="type">
							<option value="Normal">Normal</option>
							<option value="NEFT">NEFT</option>
							<option value="IMPS">IMPS</option>
							</select>
							<div class="form-group form-button">
								<input type="submit" name="transfer" id="transfer"
									class="form-submit" value="Transfer" />
							</div>
						</form>
					</div>
				</div>
			</div>
		</section>
	
	</div>
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
  <script src="http://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<link rel="stylesheet" href="alert/dist/sweetalert.css">
<script type="text/javascript">
var status=document.getElementById("tranf").value;
if(status=="success"){
	swal("Congrats","Amount Transfered","success");
}else if(status=="failed"){
	swal("Sorry","Inefficient Balance","error");
}else if(status=="fail"){
	swal("sorry","Wrong Credentials","error")
}
</script>
 

</body>
</html>
