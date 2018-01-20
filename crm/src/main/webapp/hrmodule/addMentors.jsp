<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<!-- <meta charset="utf-8">
<meta name="robots" content="noindex, nofollow">
 -->
<title>SCHEDULE OF WEEKLEY PLAN</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">

<!-- this is for editing data -->	

<style type="text/css">
.panel-table .panel-body {
	padding: 0;
}

.panel-table .panel-body .table-bordered {
	border-style: none;
	margin: 0;
}

.panel-table .panel-body .table-bordered>thead>tr>th:first-of-type {
	text-align: center;
	width: 100px;
}

.panel-table .panel-body .table-bordered>thead>tr>th:last-of-type,
	.panel-table .panel-body .table-bordered>tbody>tr>td:last-of-type {
	border-right: 0px;
}

.panel-table .panel-body .table-bordered>thead>tr>th:first-of-type,
	.panel-table .panel-body .table-bordered>tbody>tr>td:first-of-type {
	border-left: 0px;
}

.panel-table .panel-body .table-bordered>tbody>tr:first-of-type>td {
	border-bottom: 0px;
}

.panel-table .panel-body .table-bordered>thead>tr:first-of-type>th {
	border-top: 0px;
}

.panel-table .panel-footer .pagination {
	margin: 0;
}

/*
used to vertically center elements, may need modification if you're not using default sizes.
*/
.panel-table .panel-footer .col {
	line-height: 34px;
	height: 34px;
}

.panel-table .panel-heading .col h3 {
	line-height: 30px;
	height: 30px;
}

.panel-table .panel-body .table-bordered>tbody>tr>td {
	line-height: 34px;
}
</style>
<script type="text/javascript" src="jquery-1.7.2.min.js"></script>
	<script type="text/javascript" src="functions.js"></script>

 <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!--  <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>  -->

 <title>MENTOR Prepare Schedule</title>
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

</head>
<body>
<jsp:include page="../commons/mentorHeader.jsp"/>
	<link
		href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css"
		rel='stylesheet' type='text/css'>

	<div class="container">
		<div class="row">

			<center>
				<h1>Mentors  Details</h1>
			</center>

			<div class="col-md-10 col-md-offset-1" align="center">

				<div>
					<div>
						<div>
							<div>
								<h6 class="panel-title">
									<center>Register Details About Mentors</center>
								</h6>
							</div>
						</div>
					</div>
					<div class="panel-body" style="width: 617px;">
						<form>
                       			
						<table class="table table-striped table-bordered table-list"
							style="width: 500px;">
							 <tbody id="myTable">
							<b>
							</b><tr><b>
								</b><td><b>Mentor Name:</b></td><b>
								</b><td><b><input type="text" name="email"></b></td><b>
							</b></tr><b>
							</b><tr><b>
								</b><td><b>Mobile Number:</b></td><b>
								</b><td><b><input type="number" name="mobileno"></b></td><b>
							</b></tr><b>
							</b><tr><b>
								</b>
								<td><b>Email-ID:</b></td><b>
								</b><td><b><input type="text" name="city"></b></td><b>
							</b></tr>
							<tr><b>
								</b>
								<td><b>Technology:</b></td><b>
								</b><td><b><input type="text" name="city"></b></td><b>
							</b></tr>
							<tr><b>
								</b>
								<td><b>Highest Qualification:</b></td><b>
								</b><td><b><input type="text" name="city"></b></td><b>
							</b></tr>
							<b>
							</b>
                           </tbody>
                           </table>							
								<center><button type="button" class="btn btn-info">SAVE</button>
							  </center>	</div>
					</form>
					<br>
					<br>
						
					</div>		
				</div>
			</div>
         </div>
	
<footer>
<jsp:include page="../commons/footer.jsp"/>
</footer>

</body>
</html>