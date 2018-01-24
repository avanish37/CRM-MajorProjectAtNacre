<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
<head>
<title>MENTOR RECOMMENDATION</title>
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
<div class="container">

<h2 align="center">MENTOR RECOMMENDATION</h2>
<table class="table table-bordered">
<tr><td>
<label>Name</label></td>
<td>
<label>Reason</label>
</td>
<td>
<label>Recommendation</label>
</td>
<tr>
<td>Mayank</td>
<td>Any Reason</td>
<td>
<select name="rec" class="form-control" id="sel1" >
        <option>select</option>
        <option name="rec">Shift to next batch</option>
        <option name="rec">Terminate</option>
        <option name="rec">Special Focus</option>
</select></td>
</tr>
<tr>
<td>Manjeet</td>
<td>Any Reason</td>
<td>
<select name="rec" class="form-control" id="sel1" >
        <option>select</option>
        <option name="rec">Shift to next batch</option>
        <option name="rec">Terminate</option>
        <option name="rec">Special Focus</option>
</select></td>
</tr>
</table>
<div>
<button style="font-size: 16px">Submit</button>
</div>
</div>
<footer>
<jsp:include page="../commons/footer.jsp"/>
</footer>
</body>
</html>