<!DOCTYPE html>  
<html>  
<head>  
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8">
<link rel="stylesheet" href="userform.css">
<link rel=“stylesheet” href=“https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css”>

  <link href=“https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css” rel=“stylesheet”>
  
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">	
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css"/>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet"/> 

 
</head>  
<body bgcolor="lightgreen">   
<%@page import="com.jitsi.dao.UserDao,com.jitsi.bean.User"%>  
  
<%  
String id=request.getParameter("id");  
User u=UserDao.getRecordById(Integer.parseInt(id));  
%> 
  

<center><div class="gaurav">
<div class="container">
	<h2>Edit User</h2>
	<div class="form-container">
		<form action="edituser.jsp" method="post">  
		<input type="hidden" name="id" value="<%=u.getId() %>"/>  
		
			<div class="input-name">
				<i class="fa fa-user lock"></i>
				<input type="text" class="text-name" name="name"  value="<%= u.getName()%>">
			</div>
			
			<div class="input-name">
				<i class="fa fa-lock lock"></i>
				<input type="password" class="text-name" name="password" value="<%= u.getPassword()%>">
			</div>
			
			<div class="input-name">
				<i class="fa fa-envelope email lock"></i>
				<input type="email" class="text-name" name="email" value="<%= u.getEmail()%>">
			</div>
		
			<div class="input-name">
				<input type="radio" class="radio-button" name="sex" value="male"/>
				<label style="margin-right: 30px;">Male</label>
				
				<input type="radio" class="radio-button" name="sex" value="female"/>
				<label>Female</label>
			</div>
			
			<div class="input-name">
				<select class="country" name="country">
					<option>Australia</option>  
					<option>India</option>  
					<option>London</option>  
					<option>Japan</option>  
					<option>Englend</option>  
					<option>Other</option>  
				</select>
			</div>
			
			<div class="input-name">
				<input type="submit" class="button" value="Edit User"><br>
			</div>
		</form>
	</div>
</div>
</div>
</center>
 
  
</body>  
</html>  