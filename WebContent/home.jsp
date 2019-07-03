<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Home Page</title>
</head>
<body>
<%@ include file="header.jsp" %>
	<div class="hero-header">
		<div class="hero-image">
		</div>
		<div class="hero-arrow" id="down-arrow">
		</div>
	</div>
	
	<section id="introduction">
	<div class="container" align="center">
		<div class="row">
			<div class="col-md-4">
			<i class="fas fa-clipboard-list fa-4x"></i>
			<p><br>Keep track of your to do list by adding or completing tasks in your profile.
			</p> 
			</div>
			<div class="col-md-4">
			<i class="fas fa-share-square fa-4x"></i>
			<p><br>Share a to do item with your friends. 
			</p>
			</div>
			<div class="col-md-4">
			<i class="fas fa-clipboard-check fa-4x"></i>
			<p><br>Check off completed tasks to keep track of your progress.</p>
			</div>
		</div>
	</div>
	</section>
	
	<section>
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<img src="assets/images/multitask.jpg" class="img-fluid">
			</div>
			<div class="col-md-6">
			<p>Organize and prioritize your tasks to be more productive. 
			Get started today by signing up for an account.</p>
			<a class="btn btn-primary" href="signup.jsp">Sign Up</a>
			</div>
		</div>
	</div>
	</section>
	<%@ include file="footer.jsp" %>
	
</body>
</html>