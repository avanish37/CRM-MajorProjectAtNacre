<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Trainee Personal Info</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

 <!-- jQuery  -->
 <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
        <script src="../js/jquery-1.12.0.min.js"></script>
        <!-- Bootstrap Js -->
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
        <script type="text/javascript">
function edit_row(no)
{
	
	document.getElementById("edit_button"+no).style.display="none";
	document.getElementById("save_button"+no).style.display="block";
    var des=document.getElementById("des"+no);
	var des_data=des.innerHTML;
	des.innerHTML="<textarea cols='20' rows='1' id=' des_text"+no+"' value='"+des_data+"'>";
}

function save_row(no)
{

	document.getElementById("edit_button"+no).style.display="block";
	document.getElementById("save_button"+no).style.display="none";

	var des_var=document.getElementById("des_text"+no).value;
	document.getElementById("des_row1"+no).innerHTML=des_var;
	
}
</script>
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


</head>

<body>
<jsp:include page="../commons/traineeHeader.jsp"/>
<link
		href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css"
		rel='stylesheet' type='text/css'>

	<div class="container">
		<div class="row">

			
				
			
<div align="center">

				
<div class="panel panel-default" style="width: 75%" >

						<table class="table">
						<thead>
							<th><h3 align="right">PERSONAL DETAILS</h3></th>
						
									<th> <p data-placement="top" data-toggle="tooltip" title="Edit" align="right"> <b>Edit</b>
									 
											<button class="btn btn-primary btn-xs" data-title="Edit"
												data-toggle="modal" data-target="#edit" style="width: 68px;">
												<span class="glyphicon glyphicon-pencil"></span>
											</button>
											</p>
										</th>
										</thead>
							 <tbody id="myTable">
								<tr>
									<td >
									<label>Name</label>
									</td>
                                    <td></td>
									<tr>
									<td >
									<label>Mobile No</label>
									</td>
                                       <td></td></tr>
									
								<tr>
									<td>
									<label>Email</label>
									</td>
                                     <td></td>
									</tr>
								<tr>
									<td>
									<label>Date of Birth</label>
									</td>
									 <td></td></tr>
									
								<tr>
									<td>
									<label>Gender</label>
									</td>
                                      <td></td>
									</tr>
								<tr>
									<td>
									<label>Country</label>
									</td>
									 <td></td>
									</tr>
								<tr>
									<td>
									<label>State</label>
									</td>
									 <td></td>
								</tr>
								<tr>
									<td>
									<label>City</label>
									</td>
									 <td></td>
								
								</tr>
								<tr>
									<td>
									<label>Pincode</label>
									</td>
									 <td></td>
									
								</tr>
								
							</tbody>
						</table>
					</div>
					
				</div>
			</div>

		</div>
	</div>
	</div>
	<div class="modal fade" id="edit" tabindex="-1" role="dialog"
		aria-labelledby="edit" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"aria-hidden="true"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>
					<h4 class="modal-title custom_align" id="Heading">
						<center>Personal Details</center>
					</h4>
				</div>
				<div class="modal-body">
					<div class="form-group">
						<table class="table table-striped table-bordered table-list">
					
								
							<tbody>
								<tr id="row1">
					 <tr>
        <td><b>Name</b></td>
        <td><input type="text" class="form-control" id="name"  placeholder="Enter Name"></td>   
        </tr>
       
        <tr>
        <td><b>Mobile </b></td>
        <td><input type="number" class="form-control" id="mobile"  placeholder="Enter Mobileno"></td>
        </tr>
         <tr>
        <td><b>Mail</b></td>
        <td><input type="email" class="form-control" id="mail"  placeholder="Enter E-mail"></td>
        </tr>
        <tr>
        <td><b>Date Of Birth </b></td>
        <td><input type="date" class="form-control" id="dob"  placeholder="Enter Date Of Birth"></td>
        </tr>
        <tr>
        <td><b>Gender </b></td>
        <td>
       <label> <input type="radio"  id="gender" name="gender" checked="checked">Female
       <input type="radio" id="gender" name="gender">Male</label></td>
        </tr>
        <tr>
        <td><b>Country </b></td>
        <td>
  <select class="form-control" id="sel1">
  <option>--select--</option>
    <option>India</option>
    <option>Japan</option>
    <option>USA</option>
    <option>Australia</option>
  </select></td>
        </tr>
        <tr>
        <td><b>State</b></td>
        <td><select  class="form-control" id="sel2">
        <option>--select--</option>
        <option>AP</option>
        <option>Telengana</option>
        <option>Tamilnadu</option>
        <option>Karnataka</option>
        <option>Kerala</option>
      </select></td>
        </tr>
         <tr>
        <td><b>City</b></td>
        <td><select  class="form-control" id="sel3">
         <option>--select--</option>
        <option>Hyderabad</option>
        <option>Chennai</option>
        <option>Bangalore</option>
        <option>Mumbai</option>
        <option>Noida</option>
      </select></td>
        </tr>
        <tr>
        <td><b>Pincode</b></td>
        <td><input type="text" class="form-control" id="pin"  placeholder="Enter pincode"></td>   
        </tr>
     <tr><td colspan="2" align="center">
     
     
     <button type="button" class="btn btn-primary">Save</button>
      </td>
     </tr>
												</tbody>
						</table>
						
					</div>
				</div>
				 
				
			</div>
			
		</div>
		<!-- /.modal-content -->
		<!-- /.modal-dialog -->
	</div>
	<br><br>
	<br>
<footer>
<jsp:include page="../commons/footer.jsp"/>
</footer>
</body>
</html>