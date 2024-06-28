<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <% String username=(String) session.getAttribute("username");
String role = (String) session.getAttribute("role");
String userEmail = (String) session.getAttribute("email");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/user.css">
</head>
<body>

<nav>
	<h1>LOGO</h1>
	<ul>
		<li><a href="#">Home</a></li>
		<li><a href="#">Vehicle</a></li>
		<li><a href="<%=request.getContextPath()%>/ReviewServlet">Review</a></li>
		
		<li><a href="#">Contact Us</a></li>
	</ul>
	<img src="images/images/profile.png" alt="" class="user-pic" onclick="toggleMenu()">
	<p class="welcomep">Welcome , <%=role %> <%= username %>!</p>
	<div class="sub-meun-wrap" id="subMenu">
		<div class="sub-menu">
			<div class="user-info">
				<a href="useraccount.jsp"><img src="images/images/profile.png" alt=""></a>
				<h3><a href="useraccount.jsp">Welcome, <%= username %>!<br><%=role %></a></h3>
			</div>
			<hr>
			<a href="updateuserprofile.jsp" class="sub-menu-link">
			<img src="images/images/profile.png" alt="">
			<p> Edit Profile</p>
			<span>></span>
			</a>
			<a href="deleteaccount.jsp" class="sub-menu-link">
			<p> Delete Account</p>
			<span>></span>
			</a>
			
			<a href="#" class="sub-menu-link">
			<img src="images/images/setting.png" alt="">
			<p> Settings & privacy</p>
			<span>></span>
			</a>
			<a href="#" class="sub-menu-link">
			<img src="images/images/help.png" alt="">
			<p> Help & support</p>
			<span>></span>
			</a>
			<a href="LogoutServlet" class="sub-menu-link">
			<img src="images/images/logout.png" alt="">
			<p> LogOut</p>
			<span>></span>
			</a>
		</div>
	</div>
</nav>

  
<script type="text/javascript" src="javascript/useraccount.js">
	

</script>
</body>
</html>