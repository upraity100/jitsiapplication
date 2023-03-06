<html>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8">
<link rel="stylesheet" href="onlyindex.css">
<link rel=“stylesheet” href=“https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css”>

  <link href=“https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css” rel=“stylesheet”>
  
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">	
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css"/>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet"/>
<body >

<div class="gaurav">
<h2>Sign In</h2>
<div class="container">
	<div class="form-container">
	<form action="login.jsp" methos="post">

		<div class="input-name">
				<i class="fa fa-envelope email lock"></i>
				<input type="email" placeholder="Enter email" class="text-name" name="email">
		</div>
			
		<div class="input-name">
				<i class="fa fa-lock lock"></i>
				<input type="password" placeholder="Enter password" class="text-name" name="password">
		</div>
	
		<div class="input-name">
		<input type="submit" class="button" value="login"/><br>
		<input type="button" class="button" value="sign up" onclick="window.location='adduserform.jsp'"/>
		</div>
		
	</form>
	</div>

</div>
</div>

</body>
</html>