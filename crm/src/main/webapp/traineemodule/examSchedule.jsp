<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Trainee Exam Schedule</title>
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
        <script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>

<body>
<jsp:include page="../commons/traineeHeader.jsp"/>

	<div class="container">
		
		<table class="table table-bordered">
			<thead>
				<tr>
					<th>Date Of Assessment</th>
					<th>Subject</th>
					<th>Type</th>
					<th>ExamTime</th>
					<th>FullMarks</th>
					<th>Duration</th>
				</tr>

			</thead>
			<tbody id="tb">
			<tr><td>12-02-2018</td>
			<td>java</td>
			<td>descriptive</td>
			<td>2:00:00</td>
			<td>50</td>
			<td>2hours</td>
			</tr>
			<tr><td>12-03-2018</td>
			<td>oracle</td>
			<td>descriptive</td>
			<td>2:00:00</td>
			<td>50</td>
			<td>2hours</td>
			</tr>
			<tr><td>12-04-2018</td>
			<td>advanced java</td>
			<td>descriptive</td>
			<td>2:00:00</td>
			<td>50</td>
			<td>2hours</td>
			</tr>
			
			</tbody>
		</table>
	</div>



<footer>
<jsp:include page="../commons/footer.jsp"/>
</footer>
</body>
</html>