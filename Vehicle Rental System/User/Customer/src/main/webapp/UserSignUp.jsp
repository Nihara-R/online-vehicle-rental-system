<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Sign Up</title>
<link rel="stylesheet" href="css/UserSignUp.css">
<style type="text/css">
body{
	height:100%;
   	background:url(images/36338810501_4c8b60686b_b.jpg)no-repeat 50% 50%;
    background-size:cover;
            
}

</style>
</head>
<body>

<form class="modal2-content" action="SignupServlet" method="post" onsubmit="return validateForm()">
                          <div class="container2">
                            <h1 class="signuph1">Sign Up</h1>
                            <p class="signupp">Please fill in this form to create an account.</p>
                            
                            <label for="FirstName"><b>First Name :</b></label>
                            <input type="text" placeholder="Enter First Name" name="firstname" id="firstname"  class="inputfield2">
                      
                            <label for="LastName"><b>Last Name :</b></label>
                            <input type="text" placeholder="Enter Last Name" name="lastname" id="lastname"  class="inputfield2">
                      
                            <label for="email"><b>E-mail :</b></label>
                            <input type="email" placeholder="Enter Email" name="email" id="email"  class="inputfield2">
                            <label for="mNumber">Mobile Number :<b></b></label>
                            <input type="text" placeholder="Mobile Number" name="phone" id="phone"  class="inputfield2">
                            <label for="psw"><b>Password :</b></label>
                            <input type="password" placeholder="Enter  Password" name="psw" id="password"  class="inputfield2">
                            <label for="re-psw"><b>Re-Enter Password :</b></label>
                            <input type="password" placeholder="Repeat Password" name="psw-repeat" id="password-repeat"  class="inputfield2">
                            <label>
                              <input type="checkbox" checked="checked" name="remember" style="margin-bottom:15px"> Remember me
                            </label>
                      
                            <p>By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p>
                            <p>Already have an account <a href="Login.jsp" style="color:dodgerblue">Login</a>.</p>
                      
                            <div class="clearfix2">
                              <button type="button" class="cancelbtn2">Cancel</button>
                              <button type="submit" class="signupbtn2" name="submit">Sign Up</button>
                            </div>
                          </div>
                        </form>
                        
                        <script type="text/javascript" src="javascript/validateaccount.js"></script>

</body>
</html>