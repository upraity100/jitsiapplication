<!DOCTYPE html>  
  
<html>  
<head>  
<title>View Users</title>  

    <link rel="stylesheet" href="onefile.css">
   <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>

<body> 
<%
	String email = (String) session.getAttribute("email");
	if(email==null)
	{
		response.sendRedirect("index.jsp");
	}
%>
  
<%@page import="com.jitsi.dao.UserDao,com.jitsi.bean.User,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
  
<% 
	String id=request.getParameter("id");  
	User u = UserDao.getRecordById(Integer.parseInt(id));
	request.setAttribute("u",u);
%>  
<div class="header">
<div class="container">
 <h2>One User Record</h2> 
<table class="table">
  <thead class="thead-dark">

<tr>
	<th scope="col">#</th>
	<th scope="col">Id</th>
	<th scope="col">Name</th>
	<th scope="col">Password</th>	
	<th scope="col">Email</th>  
	<th scope="col">Sex</th>
	<th scope="col">Country</th>
</tr> 
</thead>

	<tbody class="ok"> 

	<tr>
	<th scope="row">1</th>
	<td>${u.getId()}</td>
	<td>${u.getName()}</td>
	<td>${u.getPassword()}</td>
	<td>${u.getEmail()}</td>
	<td>${u.getSex()}</td>
	<td>${u.getCountry()}</td>
	</tr>
	
	</tbody>
</table> 
<div class="input-name">
 <input type="button" class="button1" value="Go Back" onclick="window.location='header.html'"/>
</div>
</div>
</div>





<!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
   
   
</body>  
</html>  