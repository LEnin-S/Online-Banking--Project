<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script> 
function validate()
{ 
	 var phonenumber = document.form.phonenumber.value;
	 var email = document.form.mailid.value;
	 var username = document.form.username.value; 
	 var password = document.form.password.value;
	 var accountno= document.form.accountno.value;
	 var conpass=document.form.conpass.value;
	 
	 if (username==null || username=="")
	 { 
	 alert("Full Name can't be blank"); 
	 return false; 
	 }
	 else if (email==null || email=="")
	 { 
	 alert("Email can't be blank"); 
	 return false; 
	 }
	 else if (phonenumber==null || phonenumber=="")
	 { 
	 alert("Username can't be blank"); 
	 return false; 
	 }
	 else if (accountno==null || accountno=="")
	 { 
	 alert("Accountno can't be blank"); 
	 return false; 
	 }
	 else if(password.length<6)
	 { 
	 alert("Password must be at least 6 characters long."); 
	 return false; 
	 } 
	 else if (password!=conpass)
	 { 
	 alert("Confirm Password should match with the Password"); 
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
<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">
<div class="main">

	<!-- Sign up form -->
	<section class="signup">
		<div class="container">
			<div class="signup-content">
				<div class="signup-form">
					<h2 class="form-title">Sign up</h2>
					<form name="form" action="<%= request.getContextPath()%>/sign-up" method="post" onsubmit="return validate()">
						<div class="form-group">
							<label for="name"><i
								class="zmdi zmdi-account material-icons-name"></i></label> <input
								type="text" name="username" id="name" placeholder="Your Name" />
						</div>
						<div class="form-group">
							<label for="email"><i class="zmdi zmdi-email"></i></label> <input
								type="email" name="mailid" id="email" placeholder="Your Email" />
						</div>
						<div class="form-group">
							<label for="pass"><i class="zmdi zmdi-lock"></i></label> <input
								type="password" name="password" id="pass" placeholder="Password" />
						</div>
						<div class="form-group">
							<label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
							<input type="password" name="conpass" id="re_pass"
								placeholder="Repeat your password" />
						</div>
						<div class="form-group">
							<label for="contact"><i class="zmdi zmdi-phone"></i></label>
							<input type="text" name="phonenumber" id="contact"
								placeholder="Phone-Number" />
						</div>
						<div class="form-group">
							<label for="accountno"><i class="zmdi zmdi-lock-outline"></i></label>
							<input type="text" name="accountno" id="contact"
								placeholder="Account-Number" />
						</div>
						<div class="form-group">
							<input type="checkbox" name="agree-term" id="agree-term"
								class="agree-term" /> <label for="agree-term"
								class="label-agree-term"><span><span></span></span>I
								agree all statements in <a href="#" class="term-service">Terms
									of service</a></label>
						</div>
						<div class="form-group form-button">
							<input type="submit" name="signup" id="signup"
								class="form-submit" value="Register" />
						</div>
					</form>
				</div>
				<div class="signup-image">
					<figure>
						<img src="images/signup-image.jpg" alt="sing up image">
					</figure>
					<a href="login.jsp" class="signup-image-link">I am already
						member</a>
				</div>
			</div>
		</div>
	</section>


</div>
<!-- JS -->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="js/main.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
	<input type="hidden" id="status1" value="<%= request.getAttribute("status1") %>">
	<script type="text/javascript">
	var status=document.getElementById("status1").value;
	if(status == "failed"){
		swal("sorry","User Already exists","error");
	}
	</script>
</body>
</html>