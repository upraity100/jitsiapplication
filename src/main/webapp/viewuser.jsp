<!DOCTYPE html>  
  
<html>  
<head>  
<link rel="stylesheet" href="onefile.css">
   <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<title>View Users</title>  
</head>  
<body > 

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
List<User> list=UserDao.getAllRecords();  
request.setAttribute("list",list);  
%>  
  
<div class="header">
<div class="container">  
 <h2>All Records List</h2> 
<table class="table">
  <thead class="thead-dark">
  
<tr>
	<th scope="col">Id</th>
	<th scope="col">Name</th>
	<th scope="col">Password</th>
	<th scope="col">Email</th>  
	<th scope="col">Sex</th>
	<th scope="col">Country</th>
	<th scope="col">Edit</th>
	<th scope="col">Delete</th>
</tr>
</thead>

<tbody class="ok">   

<c:forEach items="${list}" var="u">  

	<tr>
	
	<td>${u.getId()}</td>
	<td>${u.getName()}</td>
	<td>${u.getPassword()}</td>
	<td>${u.getEmail()}</td>
	<td>${u.getSex()}</td>
	<td>${u.getCountry()}</td>
	<td><h3><a href="editform.jsp?id=${u.getId()}">Edit</a></h3></td>  
	<td><h3><a href="deleteuser.jsp?id=${u.getId()}">Delete</a></h3></td>
	</tr>  

</c:forEach>  
</tbody>


</table>   
	
	<div class="input-name1">
		 <input type="button" class="button2" value=" Go-Back" onclick="window.location='header.html'"/>
		 <input type="button" class="button2" value="Logout" onclick="window.location='logout.jsp'"/>
	</div>
	
</div>
</div>	
  
</body>  
</html>  