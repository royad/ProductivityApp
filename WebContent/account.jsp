<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>User Profile</title>
</head>
<body>
	
	<%
		// check if user is logged in
	String userid = (String)session.getAttribute("userid");
	if(userid == null) {%>
		<jsp:forward page="login.jsp"/>
	<%}%>
	
	<%@ include file="taskRetrieval.jsp" %>
	<%@ include file="header.jsp" %>

	<section>
	
		<div class="container">
		<button type="button" class="btn btn-primary" id="addTask">Add a Task</button>
		<div class="row">
		<div class="col-sm-12 col-md-9">
		<form id="taskForm" style="display:none" action="SubmitTask" method="post">
		  <div class="form-group">
		    <label for="taskid">Task Name</label>
		    <input type="text" class="form-control" name="name" id="task" placeholder="Task Name">
		  </div>
		  <div class="form-group">
		    <label for="description">Description</label>
		    <input type="text" class="form-control" name="description" id="description" placeholder="Description">
		  </div>
		  <div class="form-group">
		    <label for="date">Due Date</label>
		    <input type="date" class="form-control" name="date" id="date" placeholder="Due Date">
		  </div>
		  <button type="submit" class="btn btn-primary">Add Task</button>
		</form>
		</div>
		</div>
		<div class="row">
		<div class="col-sm-12 col-md-10">
		<table class="table">
			<tr>
				<th>Task</th>
				<th>Description</th>
				<th>Deadline</th>
			</tr>
			<% while(results.next()){ %>
			<tr>
				<td><%= results.getString("name") %></td>
				<td><%= results.getString("description") %></td>
				<td><%= results.getString("dueDate") %></td>
			</tr>
			<% } %>

		</table>
		</div>
		</div>
		</div>
	</section>
</body>
</html>