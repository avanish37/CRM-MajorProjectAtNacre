<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
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

 <title>Add Trainee</title>
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
        
        
        <script type="text/javascript">

function yesnoCheck() {
	document.getElementById('ifYes').style.visibility = 'hidden';
	document.getElementById('singleform').style.visibility = 'hidden';
	document.getElementById('multiform').style.visibility = 'hidden';
 
  document.getElementById('ifYes').style.visibility = 'visible';

}

</script>
<script>
function myFunction() {
	
	 if (document.getElementById('yesCheck').checked) {
	        document.getElementById('singleform').style.visibility = 'visible';
	    }
	    else document.getElementById('multiform').style.visibility = 'visible';

}
</script>
</head>

<body onload="onChange();">
<jsp:include page="../commons/mentorHeader.jsp"/>
	<link
		href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css"
		rel='stylesheet' type='text/css'>

	<div class="container">
		<div class="row">

			<center>
				<h1>Add Trainee</h1>
			</center>

			<div class="col-md-10 col-md-offset-1" align="center">

				<div class="panel panel-default panel-table" style="width: 525px; ">
					<div class="panel-heading"">
						<div class="row">
							<div>
								<h6 class="panel-title">
									<center>Select Trainee</center>
								</h6>
							</div>
						</div>
					</div>
					<div class="panel-body" style="width: 525px;">
						<table class="table table-striped table-bordered table-list" style="width: 525px;">
							<thead>
                                   <tr> 
									<th style="width: 123px"><center>Single : <input type="radio" onclick="javascript:yesnoCheck();" name="radio"  id="yesCheck"></center></th>
									<th style="width: 123px;"><center>Multiple : <input type="radio" onclick="javascript:yesnoCheck();" name="radio"  id="noCheck"><br></center></th>
								</tr>
							</thead>
							</table>
						
					</div>
					<div id="ifYes" style="visibility:hidden">
        Select Batch: <select   onchange="myFunction();">
                                       <option>select</option>         
                                       <option>44</option>
                                       <option>45</option>
                                       <option>46</option>
                              </select> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                             	<button class="btn btn-primary btn-xs" data-title="Edit"
												data-toggle="modal" data-target="#edit" style="width: 100px;">
												<span class="glyphicon glyphicon-pencil"></span>
											Add Batch</button>
										                   
    </div>
						<div class="panel-footer">
						<div class="clearfix"></div>
						<div class="row"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<footer>
<jsp:include page="../commons/footer.jsp"/>
</footer>
	
	 <center><div id="multiform"  style="visibility:hidden"> 
             <form>
             	<table class="table table-striped table-bordered table-list"
							style="width: 500px;">
					<th>
              SELECT FILE :</th><th><input type="file" accept="application/vnd.openxmlformats-officedocument.spreadsheetml.sheet" />
             </th></table></form></div>
             </center>
	<center>
	 <div id="singleform"   style="visibility:hidden">
	 <div class="container">
		<div class="row">

			<center>
				<h1>Trainee  Details</h1>
			</center>

			<div class="col-md-10 col-md-offset-1" align="center">

				<div>
					<div>
						<div>
							<div>
								<h6 class="panel-title">
									<center>Register Details About Trainee</center>
								</h6>
							</div>
						</div>
					</div>
					<div class="panel-body" style="width: 617px;">
						<form>
                       			
						<table class="table table-striped table-bordered table-list"
							style="width: 500px;">
							 <tbody id="myTable">
							<tr>
							<td><b>Trainee Name:</b></td>
							<td><b><input type="text" name="name"></b></td>
							</tr>
							<tr>
							<td><b>Mobile Number:</b></td>
							<td><b><input type="number" name="mobileno"></b></td>
							</tr>
							    <tr>
							    <td><b>Email Id:</b></td>
								<td><b><input type="text" name="email"></b></td>
								<tr>
								 <tr>
							    <td><b>Current City:</b></td>
								<td><b><input type="text" name="city"></b></td>
								<tr>
								 <tr>
							    <td><b>Highest Qualification:</b></td>
								<td><b><input type="text" name="qualification"></b></td>
								<tr>
								<tr>
							    <td><b>Technology:</b></td>
								<td><b><input type="text" name="technology"></b></td>
								<tr>
								<td><button type="button" class="btn btn-info">Register</button>
							
						
							</b></td>
							</b></tr><b>
						</b></table>
                       			
							</tbody>
						</table>
							</form>
						
					</div>
					
				</div>
			</div>

		</div>
	</div>
	 </div>
	 </center>
	 
     
	<div class="modal fade" id="edit" tabindex="-1" role="dialog"
		aria-labelledby="edit" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"aria-hidden="true"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>
					<h4 class="modal-title custom_align" id="Heading">
						<center>Add New  Batch</center>
					</h4>
				</div>
				<div class="modal-body">
					<div class="form-group">
											<form>
                       			
						<table class="table table-striped table-bordered table-list"
							style="width: 500px;">
							 <tbody id="myTable">
							<tr>
							<td><b>Batch Name		:</b></td>
							<td><b><input type="text" name="bname"></b></td>
							</tr>
							<tr>
							<td><b>Starting Date	:</b></td>
							<td><b><input type="date" name="sdate"></b></td>
							</tr>
							    <tr>
							    <td><b>Duration		:</b></td>
								<td><b><input type="number" name="duration"></b></td>
								<tr>
								 <tr>
							    <td><b>Technology	:</b></td>
								<td><b><input type="text" name="Technology"></b></td>
								
							</tr>
				          	</tbody>	
							</table>
                       			
					
							<div><center><button type="button" class="btn btn-info">Add Batch</button>
							</center></div>
							</form>
												
					</div>
				</div>
	


</body>
</html>