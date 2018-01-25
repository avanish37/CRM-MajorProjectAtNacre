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
<<<<<<< HEAD
    
    

=======
    <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.3/css/bootstrapValidator.min.css"/>
  <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.3/js/bootstrapValidator.min.js"> </script>
    
>>>>>>> branch 'nikhil' of https://bitbucket.org/Nikhil-Nilamb/crm/src
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
	
	
	<script>
  
  $(document).ready(function() {
    $('#form1').bootstrapValidator({
        container: '#messages',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            password: {
                validators: {
                    notEmpty: {
                        message: 'The full name is required and cannot be empty'
                    }
                }
            },
            username: {
                validators: {
                    notEmpty: {
                        message: 'The email address is required and cannot be empty'
                    },
                    emailAddress: {
                        message: 'The email address is not valid'
                    }
                }
	            },
	            
        }
    });
});

</script>
	
	
	
	
	
</head>

<body>
	<div class="container">
		<div class="top">
			<h1 id="title" class="hidden"><span id="logo">NACRE SOFTWARE SERVICES</span></h1>
		</div>
		<div class="login-box animated fadeInUp">
			<form id="form1" method="get" action="login">
			<div class="modal-body">
          	<div class="form-group">
			<input class="form-control" placeholder="UserName" type="text" id="username" name="username"/>
			</div>
			<div class="form-group">
			<input class="form-control" placeholder="Password" type="password" id="password" name="password"/>
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
