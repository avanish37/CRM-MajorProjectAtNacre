<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Trainee Exam Report</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

 <!-- jQuery -->
 <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
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


</head>

<body>
<jsp:include page="../commons/traineeHeader.jsp"/>
<div class="container">


<b>EXAM REPORT</b> 
</div><br>
<div>
<table border="1" bgcolor="cyan" align="center" class="table table-bordered">
<tr><td><b>DateOfAssesment</b></td><td><b>Subject</b></td><td><b>Type</b></td><td><b>fullMarks</b></td><td><b>MarkObtain</b></td><td><b>Status</b></td></tr>
<tr><td>11-01-2018 </td><td>core java</td><td>subjective</td><td>50</td><td>45</td><td>Pass</td>
<!-- <tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr> -->
</table></div>
<footer>
<jsp:include page="../commons/footer.jsp"/>
</footer>
</body>
</html>