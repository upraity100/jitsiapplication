<html>

<head>
	<title> Deshboard Design</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="https://fonts.googleapis.com/css?family=Poppins&display=swap" rel="stylesheet">
	
	<link rel="stylesheet" href="video.css">
	<link rel="stylesheet" href="main.js">
	<meta http-equiv=“X-UA-Compatible” content=“ie=edge”>
	<link rel=“stylesheet” href=“https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css”>

  <link href=“https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css” rel=“stylesheet”>

  <script src=“https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js” charset=“utf-8”></script>
	
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">	
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css"/>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet"/>
    
    <%
	String email = (String) session.getAttribute("email");
	if(email==null)
	{
		response.sendRedirect("header.html");
	}
%>
</head>

<body>

<header>
	<div class="logo">
		<img src="">
	</div>
	<nav>
		 <a href="header.html">Home</a>
		 <a href="index1.jsp">Show Data</a>
	</nav>
</header>

<div class="text">
			<img src="jitsi-12.png">
            <h2>Jitsi Meet</h2>
        	<h3></h3><br/>
            <h4>WELCOME</h4>
  <div class="sea">
<form action="jsp.jsp" class="search-wrapper cf">
        <input type="text" name="web" placeholder="Enter meeting name..." required style="box-shadow: none">
        <button type="submit">Get Started</button>
</form>
</div>
</div>