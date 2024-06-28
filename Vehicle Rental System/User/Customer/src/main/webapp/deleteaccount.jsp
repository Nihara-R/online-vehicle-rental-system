<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Account</title>
<link rel="stylesheet" href="css/deleteaccount.css">
<style type="text/css">

body{
background: url("images/34660-mercedes_benz_g_class-land_rover-car-mercedes_benz-wheel-2560x1600.jpg");
background-repeat: no-repeat;
background-size: cover;
}
</style>
</head>
<body>

<div class="delete_account">
<p>Are you sure you want to delete your account ?</p>
<form action="DeletUserAccountServlet" method="post">

<input type="hidden" name="id"  value="${sessionScope.user.id}">
<button type="submit" name="confirmDelete" value="true" class="delete">delete my account</button>
<a href="useraccount.jsp"class="cancel" > Cancel</a>
</form>

</div>


</body>
</html>