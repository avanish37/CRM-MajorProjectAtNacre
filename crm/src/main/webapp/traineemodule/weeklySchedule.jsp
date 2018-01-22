<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Weekly Schedule</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<!-- jQuery  -->
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
<script src="../js/jquery-1.12.0.min.js"></script>
<!-- Bootstrap JS -->
<script src="../js/bootstrap.min.js"></script>
<!-- jQuery Custom Scroll  -->
<script src="../js/concat.min.js"></script>
<!-- Our Custom CSS -->
<link rel="stylesheet" href="../css/footer.css">
<!-- Bootstrap CSS-->
<link rel="stylesheet" href="../css/bootstrap.min.css">
<!-- Our Custom CSS -->
<link rel="stylesheet" href="../css/header.css">
<link rel="stylesheet" href="../css/notification.css">
<!-- Scroll bar Custom CSS -->
<link rel="stylesheet" href="../css/mCustomScrollbar.min.css">
<script type="text/javascript">
	$(document).ready(function() {
		$("#pop").hide();
		$("#shwPop").click(function(){
			$("#pop").fadeIn(300);
			$("#weekly").fadeOut(300);
		});
		$("#back").click(function(){
			$("#pop").fadeOut(300);
			$("#weekly").fadeIn(300);
		});
	});
</script>
</head>

<body>
	<jsp:include page="../commons/traineeHeader.jsp" />
	<div class="container">
		<div class="row">
			<table class="table" id="weekly">
				<thead>
					<tr>
						<th>Week List</th>
						<th>Description</th>
						<th>View More</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>Week 1 (22-Jan To 28-Jan)</td>
						<td>work of this week</td>
						<td><button class="btn btn-info" id="shwPop">See More</button></td>
					</tr>
					<tr>
						<td>Week 2 (29-Jan To 04-Feb)</td>
						<td>work of this week</td>
						<td><button class="btn btn-info" id="shwPop">See More</button></td>
					</tr>
					<tr>
						<td>Week 1 (05-Feb To 12-Feb)</td>
						<td>work of this week</td>
						<td><button class="btn btn-info" id="shwPop">See More</button></td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="row" id="pop">
			<button class="btn btn-info" id="back">Back</button>
			<table class="table">
				<thead>
					<tr>
						<th>Day</th>
						<th>Date</th>
						<th>Description</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>Tuesday</td>
						<td>22-Jan-2018</td>
						<td>OOP</td>
					</tr>
					<tr>
						<td>Wednesday</td>
						<td>23-Jan-2018</td>
						<td>OOP</td>
					</tr>
					<tr>
						<td>Thursday</td>
						<td>24-Jan-2018</td>
						<td>Exception Handling</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	<footer>
		<jsp:include page="../commons/footer.jsp" />
	</footer>
</body>
</html>