<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
         <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
         <meta name="viewport" content="width=device-width, initial-scale=1.0">
         <meta http-equiv="X-UA-Compatible" content="IE=edge">

		<link rel="stylesheet" type="text/css" href="../css/bootstrap-datepicker3.min.css">
		<link rel="stylesheet" type="text/css" href="../css/bootstrap-datetimepicker.min.css">
		<link rel="stylesheet" type="text/css" href="../css/leave.css">
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
<body >
<jsp:include page="../commons/traineeHeader.jsp"/>
<div class="container main-div">
<center>
		<label><h2>REQUEST FOR LEAVE</h2></label></center>
			<form class="row form">
				<div class="col-sm-12">
					<label>Subject:</label>
					<div class="input-group col-sm-12">
		  				<input type="text" name="subject" class="form-control">
					</div>
				</div>
		

				<div class="col-sm-12">
				    <div class="">
				        <div class="col-sm-12">
				        	<div class="row">
				            	<div class="form-group">
									<label>From Date:</label>
				                	<div class="input-group date" id="from_date">
				                    	<input type="text" class="form-control" name="from-date">
				                    	<span class="input-group-addon">
				                        	<span class="glyphicon glyphicon-calendar"></span>
				                    	</span>
				                	</div>
	    						</div>
	    					</div>
				        </div>
				    </div>
				</div>


				<div class="col-sm-12">
				    <div class="">
				        <div class="col-sm-12">
				        	<div class="row">
				            	<div class="form-group">
									<label>To Date:</label>
				                	<div class="input-group date" id="to_date" name="to-date">
				                    	<input type="text" class="form-control">
				                    	<span class="input-group-addon">
				                        	<span class="glyphicon glyphicon-calendar"></span>
				                    	</span>
				                	</div>
	    						</div>
	    					</div>
				        </div>
				    </div>
				</div>
				
						<div class="col-sm-12">
					<div class="input-group col-sm-12">
						<div class="">
	  						<label for="Description">Description:</label>
	  							<textarea class="form-control description" name="description" rows="5" id="Description"></textarea>
	    				</div>
	    			</div><br>
	    		</div>
	    		
				<div class="col-md-12">
					<input type="submit" name="form-submit" value="submit" class="btn btn-info">
				</div>
			</form>
		</div>
		<br>
		<br>
		
		

<footer>
<jsp:include page="../commons/footer.jsp"/>
</footer>

</body>
</html>

<script type="text/javascript" src="../js/bootstrap-datepicker.min.js"></script>
		<script>
			$(document).ready(function(){
				$('#to_date').datepicker({
    				format: 'mm/dd/yyyy'
				});
				$('#from_date').datepicker({
    				format: 'mm/dd/yyyy'
				});
			});
		</script>