<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Login</title>
<link rel="stylesheet" href="css/Login.css">
</head>
<body>

<form class="modal-content animate" action="UserLoginServlet" method="post">
                          <div class="imgcontainer">
                            
                            <img src="images/profile.png" alt="Avatar" class="avatar">
                          </div>
                      
                          <div class="container">
                            <label for="uname"><b>Username</b></label>
                            <input type="text" placeholder="Enter Username" name="email" required class="inputfield">
                      
                            <label for="psw"><b>Password</b></label>
                            <input type="password" placeholder="Enter Password" name="psw" required class="inputfield">
                              
                            <button type="submit" class="loginbtn" name="submit">Login</button>
                            <label>
                              <input type="checkbox" checked="checked" name="remember"> Remember me
                            </label>
                            <br>
                            If you don't have account
                            <a href="UserSignUp.jsp">Sign Up</a>
                          </div>
                      
                          <div class="container" style="background-color:#f1f1f1">
                            <button type="button"  class="cancelbtn">Cancel</button>
                            <span class="psw">Forgot <a href="#">password?</a></span>
                          </div>
                        </form>

</body>
</html>