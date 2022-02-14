<!DOCTYPE html>
<%@ page isELIgnored="false" %>
<!-- Designined by CodingLab | www.youtube.com/codinglabyt -->
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <title> Welcome to Ebank </title>
    <link rel="stylesheet" href="style.css">
    <!-- Boxicons CDN Link -->
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
   </head>
<body>
	<% if(session.getAttribute("username")==null){
		response.sendRedirect("Home.html");
	}
	%>
   <div class="sidebar">
    <div class="logo-details">
      <i class='bx bxl-c-plus-plus'></i>
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
            <i class='bx bx-box' ></i>
            <span class="links_name">Account Details</span>
          </a>
        </li>
        <li>
          <a href="transfer.jsp">
            <i class='bx bx-list-ul' ></i>
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
          <a href="cards.jsp">
            <i class='bx bx-user' ></i>
            <span class="links_name">Cards</span>
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
      <div class="search-box">
        <input type="text" placeholder="Search...">
        <i class='bx bx-search' ></i>
      </div>
      <div class="profile-details">
        <img src="images/profile.jpg" alt="">
        <span class="admin_name">${username}</span>
        <i class='bx bx-chevron-down' ></i>
      </div>
    </nav>

  
        <h1>welcome to Ebank  <%= request.getAttribute("username") %></h1>
     
  </section>

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
