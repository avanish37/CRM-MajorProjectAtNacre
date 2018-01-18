<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>MENTOR HOME</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

 <!-- jQuery -->
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
        <!-- Scrollbar Custom CSS -->
        <link rel="stylesheet" href="../css/mCustomScrollbar.min.css">
		 <link rel="stylesheet" href="../css/mentordashboard.css"> 

</head>
<body>
<jsp:include page="../commons/mentorHeader.jsp"/>
<div class="container">
	<div class="row">
			<div class="card col-md-3" id="gg">
				<h3>Status</h3>
				<h1>Batch No. 46</h1>
				<p class="title"></p>
				<p>Total Student 34</p>
				<p>
					<button>Select</button>
				</p>
			</div>
			<div class="card col-md-3" id="gg">
				<h3>Status</h3>
				<h1>Batch No. 45</h1>
				<p class="title"></p>
				<p>Total Student 20</p>
				<p>
					<button>Select</button>
				</p>
			</div>
			<div class="card col-md-3" id="gg">
				<h3>Status</h3>
				<h1>Batch No. 44</h1>
				<p class="title"></p>
				<p>Total Student 39</p>
				<p>
					<button>Select</button>
				</p>
			</div>
		</div>
</div>
<footer>
<jsp:include page="../commons/footer.jsp"/>
</footer>
</body>
</html>