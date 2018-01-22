<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1">  
	<title>Nacre Software Services</title>

	<!-- Google Fonts -->
	<link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700|Lato:400,100,300,700,900" 
	rel="stylesheet" type="text/css">

	<!-- Custom Stylesheet -->
	<link rel="stylesheet" href="css/index.css">
	<link rel="stylesheet" href="css/mod.css">
	<link rel="stylesheet" href="css/animate.css">
	<!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min1.css" rel="stylesheet">
    
    

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
</head>

<body>
	<div class="container">
		<div class="top">
			<h1 id="title" class="hidden"><span id="logo">NACRE SOFTWARE SERVICES</span></h1>
		</div>
		<div class="login-box animated fadeInUp">
			<form>
			<div class="modal-body">
          	<div class="form-group">
			<input class="form-control" placeholder="UserName" type="text" id="username">
			</div>
			<div class="form-group">
			<input class="form-control" placeholder="Password" type="password" id="password">
			</div>
			<div class="modal-footer">
			<button type="submit" class="btn btn-success btn-primary">Sign In</button>
			</div>
			<a href="#openModal"><i>FORGOT PASSWORD</i></a>
				</div>
			</form>
			</div>
			
		</div>
	
<!-- pop up to forgot password -->

<div id="openModal" class="modalDialog">
	<div>
		<a href="#close" title="Close" class="close">X</a>
		<div>
		<h5>Recover Password</h5>
		</div>
		<form action="" method="post">
    	<input class="form-control" id="userMail" name="userMail" placeholder="Enter YOUR E-MAIL" type="email" required><br>
        <button type="submit" class="btn btn-success btn-primary">SUBMIT</button>
       
        </form>
	</div>
</div>
 

</html>		
