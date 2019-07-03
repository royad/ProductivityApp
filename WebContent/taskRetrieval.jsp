<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
	<%@ page import="java.sql.*" %>
	<%
	Connection cn = productivityApp.DatabaseConnection.connectToDB();

	// user id
	String uId = (String)session.getAttribute("userid");

	String sql = "select * from tasks where user=?";
	
	//Statement statement = con.createStatement();
	PreparedStatement ps = cn.prepareStatement(sql);
	ps.setString(1, uId);

	ResultSet results = ps.executeQuery();

	%>
