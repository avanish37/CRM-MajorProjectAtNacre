<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Trainee Feedback</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
 <!-- jQuery  -->
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
        <script src="../js/jquery-1.12.0.min.js"></script>
        <!-- Bootstrap Js  -->
        <script src="../js/bootstrap.min.js"></script>
        <!-- jQuery Custom Scroller -->
        <script src="../js/concat.min.js"></script>
<!-- Our Custom CSS -->
<link rel="stylesheet" href="../css/footer.css">
<!-- Bootstrap CSS-->
<link rel="stylesheet" href="../css/bootstrap.min.css">
        <!-- Our Custom CSS -->
        <link rel="stylesheet" href="../css/header.css">
           <link rel="stylesheet" href="../css/notification.css">
        <!-- Scrollbar Custom CSS -->
        <link rel="stylesheet" href="../css/mCustomScrollbar.min.css">
	<!--===============================================================================================-->
<link rel="icon" type="image/png" href="images/icons/favicon.ico" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="../fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="../css/util.css">
<link rel="stylesheet" type="text/css" href="../css/main.css">
<!--===============================================================================================-->

</head>

<body>
<jsp:include page="../commons/traineeHeader.jsp"/>
<div class="container">
<div class="contact1">
		<div class="container-contact1">
			<div class="contact1-pic js-tilt" data-tilt>
				<img src="../images/img-01.png" alt="IMG">
			</div>

			<form class="contact1-form validate-form">
				<span class="contact1-form-title"> <u>Feedback/Suggestion</u>
				</span> <br>
				<br> Regarding Whom: <select>
					<option value="volvo">HR</option>
					<option value="saab">Mentor</option>
					<option value="opel">Other</option>

				</select><br> <select>
					<option value="volvo">Sibaji</option>
					<option value="saab">Aloka</option>
					<option value="opel">Abhishek</option>

				</select><br> <br>

				<div class="wrap-input1 validate-input"
					data-validate="Message is required">
					<textarea class="input1" name="message" placeholder="Description"></textarea>
					<span class="shadow-input1"></span>
				</div>

				<div class="container-contact1-form-btn">
					<button class="contact1-form-btn">
						<span> Send <i class="fa fa-long-arrow-right"
							aria-hidden="true"></i>
						</span>
					</button>
				</div>
			</form>
		</div>
	</div>


</div>
<footer>
<jsp:include page="../commons/footer.jsp"/>
</footer>
</body>
</html>