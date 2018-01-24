<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Trainee Academic Info</title>
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
<!-- <script type="text/javascript" src="jquery-1.7.2.min.js"></script>
	<script type="text/javascript" src="functions.js"></script>

 <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
 -->

</head>

<body>
<jsp:include page="../commons/traineeHeader.jsp"/>
<link
		href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css"
		rel='stylesheet' type='text/css'>

	<div class="container">
		<div class="row">

			<div class="panel-group" align="center">

  <div class="panel panel-default" style=" width: 70%;">
    <div class="panel-header">	
		<nav class="navbar navbar-default">
		<div class="container-fluid">
			<ul class="nav navbar-nav">
			<li><a href="academic-info.jsp">X Details</a></li>
			  <li><a href="XIIdetails.jsp" >XII Details</a></li>
		    <li><a href="Graduation.jsp">Graduation Details</a></li>
			  <li class="active"><a href="Post_Graduation.jsp">Post Graduation</a></li>
		    </ul>
		</div>
		</nav>
		<div class="panel-body"   id="mainDiv" style="width:80%;">
		  
	
				
			
<div align="center">

				
<div class="panel panel-default" style="width: 75%" >

						<table class="table">
						<thead>
						<th><h3 align="right">POST GRADUATION </h3></th>
						
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
									<label>Graduation Type</label>
									</td>
                                    <td></td>
									<tr>
									<td >
									<label>Specialization</label>
									</td>
                                       <td></td></tr>
									
								<tr>
									<td>
									<label>College</label>
									</td>
                                     <td></td>
									</tr>
								<tr>
									<td>
									<label>University</label>
									</td>
									 <td></td></tr>
									<tr>
									<td>
									<label>Address</label>
									</td>
									 <td></td></tr>
								
								<tr>
									<td>
									<label>Year</label>
									</td>
                                      <td></td>
									</tr>
								<tr>
									<td>
									<label>Percentage</label>
									</td>
                                      <td></td>
									</tr>
								<tr>
															</tbody>
						</table>
					</div>
					
				</div>
			</div>

		</div>
	</div>
	</div>
	</div><!-- panel body -->
	</div><!-- panel header -->
	</div><!-- panel group -->
	
	<div class="modal fade" id="edit" tabindex="-1" role="dialog"
		aria-labelledby="edit" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"aria-hidden="true"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>
					<h4 class="modal-title custom_align" id="Heading">
						<center>Post Graduation</center>
					</h4>
				</div>
				<div class="modal-body">
					<div class="form-group">
						<table class="table table-striped table-bordered table-list">
					<form action="" method="">
								
							<tbody>
								<tr id="row1">
		<tr>
        <td><b>PostGraduation Type</b></td>
        <td>
        	 <input list="pgraduation" name="grad" class="form-control" placeholder="Graduation">
  				<datalist id="pgraduation">
  
			    <option value="M.Tech"></option>
			    <option value="msc"></option>
			    <option value="MCA"></option>
			    
  				</datalist>
		</td>   
        </tr>
       
        <tr>
        <td><b>Specialization </b></td>
        <td><input list="specialization" name="Specialization" class="form-control" placeholder="Specialization">
  				<datalist id="specialization">
    				<option value="ECE"></option>
    				<option value="CSE"></option>
    				<option value="EEE"></option>
    				<option value="COMPUTERS"></option>
   				</datalist>	
   				</td>
  	 </tr>
  	 <tr>
        <td><b>College </b></td>
        <td><input list="college" name="College" class="form-control" placeholder="College">
  				<datalist id="college">
    				<option value="Jits"></option>
    				<option value="Bits"></option>
    				<option value="CBIT"></option>
    				<option value="VBIT"></option>
   				</datalist>	
   				</td>
  	 </tr>
  	 <tr>
        <td><b>University </b></td>
        <td><input list="university" name="University" class="form-control" placeholder="University">
  				<datalist id="university">
    				<option value="JNTUH"></option>
    				<option value="KU"></option>
    				<option value="JNTUK"></option>
    				<option value="JNTUA"></option>
   				</datalist>	
   				</td>
  	 </tr>
    <tr>
        <td><b>Address </b></td>
        <td>
        <textarea rows="2" cols="20" name="address" class="form-control" placeholder="Enter Address"></textarea>
        </td>
  	 </tr>
         <tr>
        <td><b>Year</b></td>
        <td><input list="year" name="year" class="form-control" placeholder="Year">
				  <datalist id="year">
				    <option value="2011"></option>
				    <option value="2012"></option>
				    <option value="2013"></option>
				    <option value="2014"></option>
				    
				  </datalist>
				  </td>
					 </tr>
        
        <tr>
        <td><b>Percentage</b></td>
        <td><input type="text" class="form-control"   placeholder="Enter Percentage"></td>   
        </tr>
     <tr><td colspan="2" align="center">
     
     
     <button type="button" class="btn btn-primary">Save</button>
      </td>
     </tr>
												</tbody>
												</form>
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