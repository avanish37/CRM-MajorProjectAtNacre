<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Trainee Request for Leave</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

 <!-- jQuery  -->
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

<center><h3 style="color: rgb(65, 86, 102)">REQUEST FOR LEAVE</h3></center>


<form id="contactForm" method="post" class="form-horizontal">
    <div class="form-group">
        <label class="col-md-3 control-label">Subject:</label>
        <div class="col-md-6">
            <input type="text" class="form-control" name="fullName" />
        </div>
    </div>
    <div class="form-group">
        <label class="col-md-3 control-label">From-Date:</label>
        <div class="col-md-6">
            <input type="date" class="form-control" name="fromDate" />
        </div>
    </div>
    <div class="form-group">
        <label class="col-md-3 control-label">To-Date:</label>
        <div class="col-md-6">
            <input type="date" class="form-control" name="toDate" />
        </div>
    </div>
    <div class="form-group">
        <label class="col-md-3 control-label">Description</label>
        <div class="col-md-6">
            <textarea class="form-control" name="content" rows="5"></textarea>
        </div>
    </div>
    <!-- #messages is where the messages are placed inside -->
    <div class="form-group">
        <div class="col-md-9 col-md-offset-3">
            <div id="messages"></div>
        </div>
    </div>
    <div class="form-group">
        <div class="col-md-9 col-md-offset-3">
            <button type="submit" class="btn btn-default">Submit</button>
        </div>
    </div>
</form>


</div>
<footer>
<jsp:include page="../commons/footer.jsp"/>
</footer>
</body>
</html>