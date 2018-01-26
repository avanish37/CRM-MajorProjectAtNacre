<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<title>Today Trainee Schedule</title>

<title>Trainee Home</title>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<!-- jQuery -->
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
<script src="../js/jquery-1.12.0.min.js"></script>
<!-- Bootstrap Js  -->
<script src="../js/bootstrap.min.js"></script>
<!-- jQuery Custom Scroller  -->
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

<style>
div.card {
	width: 300px;
	height:350px;
	box-shadow: 0 8px 8px 0 rgba(0, 0, 0, 0.2), 0 10px 20px 0; rgba (0, 0,
	0, 0.19);
	text-align: center;
}

div.header {
	background-color: rgb(82, 106, 137);
	color: white;
	padding: 20px;
	font-size: 40px;
}

div.dateContainer {
	padding: 40px;
}

</style>

</head>

<body>
	<jsp:include page="../commons/traineeHeader.jsp" />
	<div class="container">

		<center><table>
			<tr>
				<td><div class="card">
						<div class="header">
							<p style="font-size: medium; color: white">Today's Schedule</p>
						</div>
						<div class="dateContainer"><ul><li>Logical Session</li><li>Lab Session</li></ul></div>
						
							<hr><p id="pDate1"></p>
						
					</div></td>
					
				<td><div style="width: 100px"></div></td>
				
				<td><div class="card">
						<div class="header">
							<p style="font-size: medium; color: white">Exam's Schedule</p>
						</div>

						<div class="dateContainer">There is no exam today</div>
						
							<hr><p id="pDate2"></p>
						
					</div></td>
			</tr>
		</table></center>

	</div>
	<footer>
		<jsp:include page="../commons/footer.jsp" />
	</footer>

	<script type="text/javascript">
		document.getElementById("pDate1").innerHTML = Date();
		document.getElementById("pDate2").innerHTML = Date();
	</script>
</body>
</html>