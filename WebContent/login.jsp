<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Sign In</title>
</head>
<body>
	<%
		// check if user is logged in
	String userid = (String)session.getAttribute("userid");
	if(userid != null) {%>
		<jsp:forward page="account.jsp"/>
	<%}%>
<%@ include file="header.jsp" %>
	<section class="login-container-section">
	<div class="login-container">
		<div class="login-image">
			<img src="assets/images/productivity.jpg" class="img-fluid">
		</div>
		<div class="login-form">
			<form action="LoginUser" method="post" class="form">
				<div class="form-group">
					<label>Email</label><br>
					<input type="email" placeholder="Email" name="username" class="form-control">
				</div>
				<div class="form-group">
					<label>Password</label><br>
					<input type="password" placeholder="Password" name="password" class="form-control">
				</div>
				<button type="submit" class="btn btn-primary">Login</button>
			</form>
		</div>
		</div>
	</section>
	<%@ include file="footer.jsp" %>
</body>
</html>