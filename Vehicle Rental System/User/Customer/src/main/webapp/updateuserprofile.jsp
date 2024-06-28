<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <% String username=(String) session.getAttribute("username");
String role = (String) session.getAttribute("role");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update profile </title>
<link rel="stylesheet" href="css/useraccount.css">
<style >
body{
	width: 100%;
	min-height: 100vh;
	background:url("images/final-lg.jpg");
	background-size:cover;
	color: #525252;
}
input[type=submit]{
width: 300px;
height: 30px;
background: green;
border: none;
color: #fff;
}
</style>
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

<div class="acountdetails">
<h1>Welcome to your user Account</h1>
<c:if test="${sessionScope.user !=null}">
<div class="table">
<img src="images/profile.png">
<form action="UserUpdateServlet" method="post" >
<table>

<tr>
<td>ID </td>
<td>: <input type="hidden" name="id" value="${sessionScope.user.id}"></td>
</tr>

<tr>
<td>First Name </td>
<td>:<input type="text" id="name" class="input" name="Fname" value="${sessionScope.user.firstname}"></td>
</tr>

<tr>
<td>Last Name </td>
<td>:<input type="text" id="name" class="input" name="Lname" value="${sessionScope.user.lastname}"></td>
</tr>

<tr>
<td>Email </td>
<td>:<input type="text" id="name" class="input" name="email" value="${sessionScope.user.email}"></td>
</tr>

<tr>
<td>Phone Number </td>
<td>:<input type="text" id="name" class="input" name="phone" value="${sessionScope.user.phone}"></td>
</tr>

<tr>
<td>Password </td>
<td>:<input type="text" id="name" class="input" name="password" value="${sessionScope.user.password}"></td>
</tr>

<tr>
<td>Re-Enter Password </td>
<td>:<input type="text" id="name" class="input" name="repassword" value="${sessionScope.user.repassword}"></td>
</tr>

<tr>
<td>Role </td>
<td>:<input type="hidden" id="name" class="input" name="role" value="${sessionScope.user.role}"></td>
</tr>

</table>
<input type="submit" value="Update My Profile" class="update" >
    </form>
</div>









</c:if>
</div>






<script type="text/javascript" src="javascript/useraccount.js">
	

</script>

</body>
</html>