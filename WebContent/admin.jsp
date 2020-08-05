<%@page import="com.sourav.model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%
	User user=(User)session.getAttribute("current-user");
	if(user==null){
		session.setAttribute("message", "Invalid Details");
		response.sendRedirect("login.jsp");
	}
	else{
		if(user.getuType().equals("normal")){
			session.setAttribute("message", "You are not Admin!!!");
			response.sendRedirect("login.jsp");
		}
	}

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Admin</title>
</head>
	<body>
	    <%@include file="components/navbar.jsp" %>
	    
	</body>
</html>