<!DOCTYPE html>
<html lang="en">
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
<script> 
function validate()
{ 
	 var username = document.form.username.value; 
	 var password = document.form.password.value;
	 var accountno= document.form.accountno.value;
	 if (username==null || username=="")
	 { 
	 alert("UserName can't be blank"); 
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
	 
 } 
</script> 
   <!-- Font Icon -->
<link rel="stylesheet"
href="fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="css/style.css">
</head>
<body>

<div class="main">

	<!-- Sing in  Form -->
	<section class="balance-check">
		<div class="container">
			<div class="balance-content">
				
				<div class="balance-form">
					<h2 class="form-title">Transcation-Form</h2>
					<form name="form" action="<%= request.getContextPath()%>/trank.jsp" method="post" onsubmit="return validate()">
						<div class="form-group">
							<label for="username"><i
								class="zmdi zmdi-account material-icons-name"></i></label> <input
								type="text" name="username" id="username"
								placeholder="Your Name" />
						</div>
						<div class="form-group">
							<label for="password"><i class="zmdi zmdi-lock"></i></label> <input
								type="password" name="password" id="password"
								placeholder="Password" />
						</div>
						<div class="form-group form-button">
							<input type="submit" name="check" id="check"
								class="form-submit" value="Check" />
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>

</div>

<!-- JS -->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="js/main.js"></script>
</body>
</html>