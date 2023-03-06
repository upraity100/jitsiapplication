<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 

<!DOCTYPE html>
<html>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8">
<link rel=“stylesheet” href=“https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css”>

  <link href=“https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css” rel=“stylesheet”>
  
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">	
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css"/>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet"/>
</head>
<center><body bgcolor="lightgreen">

<%
	String email = (String) session.getAttribute("email");
	if(email==null)
	{
		response.sendRedirect("index.jsp");
	}
%>

<%
	session.invalidate();
%>

<div class="gaurav">
<h1><font color="Red"> You are Sucessfully logout..</font></h1>
<br>
<br>
<input type="button" class="button" value="Go Back" onclick="window.location='header.html'"/>

</div>

</body></center>
</html>