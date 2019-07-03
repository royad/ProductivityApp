<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.9.0/css/all.css">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.9.0/css/v4-shims.css">
  <link rel="stylesheet" href="assets/css/main.css?v=<?=time();?">
  <title>Header</title>
  <script type="text/javascript" src="assets/js/action.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>

	<nav class="navbar navbar-expand-lg navbar-light bg-light">
	  <a class="navbar-brand" href="home.jsp">Productivity App</a>
	  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
	    <span class="navbar-toggler-icon"></span>
	  </button>
	
	  <div class="collapse navbar-collapse" id="navbarSupportedContent">
	    <ul class="navbar-nav mr-auto">
	      <li class="nav-item">
	        <a class="nav-link" href="account.jsp">Account</a>
	      </li>
	    </ul>
	    <ul class="nav navbar-nav navbar-right">
	    <%
		// check if user is logged in
		String sessionId = (String)session.getAttribute("userid");
		if(sessionId == null) {%>
	      <li class="nav-item" align="right">
	        <a class="nav-link" href="login.jsp">Sign in</a>
	      </li>
	      <%} else {%>
	      <li class="nav-item">
	        <a class="nav-link" href="LogOut">Sign Out</a>
	      </li>
	      <% } %>
	      

	    </ul>

	  </div>
	</nav>

</body>
</html>