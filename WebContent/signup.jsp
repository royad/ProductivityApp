<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Sign Up</title>
</head>
<body>
<%@ include file="header.jsp" %>
	<section class="signup-container-section">
	<div class="signup-container">
		<div class="signup-image">
			<img src="assets/images/productivity.jpg" class="img-fluid">
		</div>
		<div class="signup-form">
			<form action="SignUp" method="post" class="form">
				<div class="form-group">
					<label>Email</label><br>
					<input type="email" placeholder="Email" name="username" class="form-control">
				</div>
				<div class="form-group">
					<label>Password</label><br>
					<input type="password" placeholder="Password" name="password" class="form-control">
				</div>
				<button type="submit" class="btn btn-primary">Sign Up</button>
			</form>
		</div>
		</div>
	</section>
	<%@ include file="footer.jsp" %>
</body>
</html>