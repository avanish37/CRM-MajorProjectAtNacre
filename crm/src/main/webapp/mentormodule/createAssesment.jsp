<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>CREATE ASSESSMENT</title>
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
	<jsp:include page="../commons/mentorHeader.jsp" />
	<div class="container">

		<div class="table-responsive">
			<table class="table">
				<thead>
					<tr>
						<th>Assessment Id</th>
						<th>D.O.A</th>
						<th>Subject</th>
						<th>Type</th>
						<th>Full Marks</th>
						<th>Time</th>
						<th>Duration</th>
						<th><button id="add-row" class="glyphicon glyphicon-plus"
								data-toggle="modal" data-target="#edit" style="width: 68px;"></button></th>
					</tr>
				</thead>
				<tbody>

					<tr>
						<td>1</td>
						<td>20/11/1992</td>
						<td>Core Java</td>
						<td>Objective</td>
						<td>100</td>
						<td>3:00 PM</td>
						<td>2 Hours</td>
						<td><button id="edit-row" class="glyphicon glyphicon-pencil"></button>&nbsp;&nbsp;
							<button class="glyphicon glyphicon-floppy-disk"></button></td>
					</tr>
					<tr>
						<td>2</td>
						<td>24/08/1992</td>
						<td>Adv Java</td>
						<td>Objective</td>
						<td>100</td>
						<td>2:00 PM</td>
						<td>2 Hours</td>
						<td><button id="edit-row" class="glyphicon glyphicon-pencil"></button>&nbsp;&nbsp;
							<button class="glyphicon glyphicon-floppy-disk"></button></td>
					</tr>

				</tbody>
			</table>
		</div>
	</div>

	<!-- Add Assessment- Modal -->
	<div class="modal fade" id="edit" tabindex="-1" role="dialog"
		aria-labelledby="edit" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">
						<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
					</button>
					<h4 class="modal-title custom_align" id="Heading">
						<span style="text-align: center">Create Assessment</span>
					</h4>
				</div>
				<div class="modal-body">
					<div class="form-group">
						<table class="table table-striped table-bordered table-list">


							<tbody>
								<tr>
									<td><b>D.O.A</b></td>
									<td><input type="date" class="form-control" id="doa"
										placeholder="Enter Date"></td>
								</tr>

								<tr>
									<td><b>Subject </b></td>
									<td><input type="text" class="form-control" id="sub"
										placeholder="Enter Subject Name"></td>
								</tr>
								<tr>
									<td><b>Type</b></td>
									<td><input type="text" class="form-control" id="type"
										placeholder="Enter Type (Objective/Descriptive)"></td>
								</tr>
								<tr>
									<td><b>Full Marks </b></td>
									<td><input type="number" class="form-control" id="fm"
										placeholder="Enter Full Marks"></td>
								</tr>
								<tr>
									<td><b>Time </b></td>
									<td><input type="text" id="time" class="form-control"
											placeholder="Enter Time">
								</td>
								</tr>
								<tr>
									<td><b>Duration</b></td>
									<td><input type="text" class="form-control" id="fm"
										placeholder="Enter Full Marks"></td>
								</tr>

								<tr>
									<td colspan="2" align="center">
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

	<!-- End Modal -->

	<footer>
		<jsp:include page="../commons/footer.jsp" />
	</footer>
</body>
</html>