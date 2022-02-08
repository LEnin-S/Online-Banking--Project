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
    <meta charset="ISO-8859-1">
    <title>Insert title here</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    </head>
<body>
    <div class="container">
        <div class="row">
            <form name="form" action="<%= request.getContextPath()%>/sign-up" method="post" onsubmit="return validate()">
            <div class="form-group">
                <h2>create account</h2>
            </div>
            <div class="form-group">
                <label>Enter the Mail id</label>
                <input type="text" name="mailid" class="form-control" placeholder="Email-id">
            </div>
            <div class="form-group">
                <label>Enter the Phone number</label>
                <input type="text" name="phonenumber" class="form-control" placeholder="Phone number">
            </div>
            <div class="form-group">
                <label>Enter the Username</label>
                <input type="text" name="username" class="form-control" placeholder="Username">
            </div>
            <div class="form-group">
                <label>Enter the Password</label>
                <input type="password" name="password" class="form-control" placeholder="Password">
            </div>
            <div class="form-group">
                <label>Confirm  Password</label>
                <input type="password" name="conpass" class="form-control" placeholder="Password">
            </div>
             <div class="form-group">
                <label>Enter the Account Number</label>
                <input type="text" name="accountno" class="form-control" placeholder="Account no">
            </div>
            <br>
            <div class="form-group">
                <button type="submit" class="btn btn-success">sign-up</button>
            </div>
            <td><%=(request.getAttribute("errMessage") == null) ? ""
                : request.getAttribute("errMessage")%></td>
        </form>
        </div>
    </div>
</body>
</html>