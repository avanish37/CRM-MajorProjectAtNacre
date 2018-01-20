<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Trainee Academic Info</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<!-- jQuery -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
<script src="../js/jquery-1.12.0.min.js"></script>
<!-- Bootstrap Js -->
<script src="../js/bootstrap.min.js"></script>
<!-- jQuery Custom Scroller -->
<script src="../js/concat.min.js"></script>
<!-- Our Footer Custom CSS -->
<link rel="stylesheet" href="../css/footer.css">
<!-- Bootstrap CSS-->
<link rel="stylesheet" href="../css/bootstrap.min.css">
<!-- Our Trainee Header Custom CSS -->
<link rel="stylesheet" href="../css/header.css">
  <link rel="stylesheet" href="../css/notification.css">
<!-- Scrollbar Custom CSS -->
<link rel="stylesheet" href="../css/mCustomScrollbar.min.css">


</head>

<body>
<jsp:include page="../commons/traineeHeader.jsp"/>
<div class="container">
 <div class="panel-group" align="center">

  <div class="panel panel-default" style=" width: 86%;background-color: white;">
    <div class="panel-header">	
		<nav class="navbar navbar-default">
		<div class="container-fluid">
			<ul class="nav navbar-nav">
			 
			  <li><a href="Graduation.jsp">Graduation Details</a></li>
			  <li><a href="Post_Graduation.jsp">Post Graduation</a></li>
		    </ul>
		</div>
		</nav>
		<div class="panel-body" style="width:50%;">
		  <form action="Result" method="post">
	<p style="font:small-caption;font-size: large;"><font style="color: green;"><b>Graduation Details</b></font></p>
	
			 <div class="form-group">	
			  <select class="form-control" id="graduationType">
				<option value="" disabled selected>Graduation Type</option>
				<option>B.Tech</option>
				<option>BCA</option>
				<option>BSC</option>
				<option>other</option>
			  </select>
			</div> 
			
			 <div class="form-group">
			  <select class="form-control" id="specialization">
				<option value="" disabled selected>Specialization</option>
				<option>CS/IT</option>
				<option>Mechanical</option>
				<option>E&TC</option>
				<option>Civil</option>
				<option>Other</option>
			  </select>
			</div> 
			
			 <div class="form-group">
			  <select  class="form-control" id="year" >
				<option value="" disabled selected>Year</option>
				<option>2018</option>
				<option>2017</option>
				<option>2016</option>
				<option>2015</option>
				<option>2014</option>
				<option>2013</option>
				<option>2012</option>
				<option>2011</option>
				<option>2010</option>
			  </select>
			</div> 
			
			<div class="form-group">
			  <input type="number" class="form-control" id="marks" placeholder="Marks" required="required">
			</div>

		 <div class="form-group">
			  <select class="form-control" id="university">
				<option value="" disabled selected>University</option>
				<option>BAMU</option>
				<option>SHIVAJI</option>
				<option>PHULE</option>
				<option>MUMBAI</option>
				<option>Other</option>
			  </select>
			</div> 
			
			<div class="form-group">
			  <select class="form-control" id="College Name">
				<option value="" disabled selected>College Name</option>
				<option>Shivaji collage,GOA</option>
				<option>MGM College,Mumbai</option>
				<option>DY Patile,pune </option>
				<option>Rajiv Ganghi,Pune</option>
				<option>Other</option>
			  </select>
			</div> 
				
				<div align="center">			
				<button type="Reset" class="btn btn-success  " style="width : 150px ">Reset</button>
					<button type="submit" class="btn btn-success  " style="width : 150px ">Save</button>
					<button type="submit" class="btn btn-primary  " style="width : 150px ">Update</button>
				</div>
		</form>
	</div><!--panel body-->
	</div><!--panel body-->
	</div><!--panel group-->

  </div>

</div>
<footer>
<jsp:include page="../commons/footer.jsp"/>
</footer>
</body>
</html>