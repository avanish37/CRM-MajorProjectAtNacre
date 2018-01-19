<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>UPDATE ASSESSMENT</title>
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
        
<!--@Author jeevan 
js for update assessment Report -->

<script type="text/javascript">
$(function () {
        $("input[name='chkpresent']").click(function () {
            if ($("#chkYes").is(":checked")) {
                $("#marks").show();
            } else {
                $("#marks").hide();
            }
        });
    });
</script>

</head>
<body>
<jsp:include page="../commons/mentorHeader.jsp"/>
<div class="container">

<!-- @Author Jeevan 
Update Asessment Report -->

<form class="form-inline" action="">
		<div class="container">
			<div align="center">
				<div style="background: #eee; width: 50%;">
					<h2 style="color: black" align="center">UPDATE ASSESSMENT
						REPORT</h2>
				</div>
			</div>
			<div class="row">
				<div class="jumbotron">
					<div align="center">
						<div class="form-group">
							<label for="assessmentname">Assessment Name :</label> <select
								class="form-control" id="assessmentname" style="width: 100px;">
								<option>core java</option>
								<option>adv java</option>
								<option>oracle</option>
							</select>
						</div>
						<div align="center">
							<br> <br>

							<div class="row">
								<div class="col-md-6 text-left">
									<div class="form-group">
										<div class="table table-responsive">
											<table>
												<tr>
													<td><label for="date">Date:</label></td>
													<td><i><label for="date"
															class="label label-default" id="date_lbl">11-01-2018</label></i></td>
												</tr>
												<tr>
													<td><label for="time">Time:</label></td>
													<td><i><label for="time"
															class="label label-default" id="time_lbl">3 pm</label></i></td>
												</tr>
												<tr>
													<td><label for="duration">Duration:</label></td>
													<td><i><label for="duration"
															class="label label-default" id="duration_lbl">2
																hr</label></i></td>
												</tr>
											</table>
										</div>
									</div>
								</div>

								<div class="col-md-6 text-right">
									<div class="form-group">
										<div class="table table-responsive">
											<table>
												<tr>
													<td><label for="type">Exam Type:</label></td>
													<td><i><label for="type"
															class="label label-default" id="type_lbl">Descriptive</label></i></td>
												</tr>
												<tr>
													<td><label for="full_marks">Full Marks:</label></td>
													<td><i><label for="full_marks"
															class="label label-default" id="full_marks_lbl">50</label></i></td>
												</tr>
											</table>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="container">
					<div class="jumbotron">
						<div class="jumbotron-body">
							<div class="row">
								<div class="col-md-6">
									<div style="width: 120%;">
										<table class="table table-hover small-text" id="tb" border="1">
											<tr class="danger">
												<th>Trainee Name</th>
												<th>Status</th>
												<th>Marks</th>
											</tr>
											<tr class="info">
												<td><label id="trainee_name_lbl">Jeevan</label></td>
												<td><label for="chkYes"> <input type="radio"
														id="chkYes" name="chkpresent" /> Present
												</label> <label for="chkNo"> <input type="radio" id="chkNo"
														name="chkpresent" /> Absent
												</label></td>
												<td><div id="marks" style="display: none">
														<input type="text" class="form-control" id="txtmarks" />
													</div></td>
											</tr>
										</table>
									</div>
								</div>

								<div align="right">
									<div class="col-md-6">
										<div class="table table-responsive">
											<table>
												<tr>
													<td><label for="total_trainees">Total
															Trainees:</label></td>
													<td><i><label for="total_trainees"
															class="label label-default" id="total_trainees_lbl">30</label></i></td>
												</tr>
												<tr>
													<td><label for="present_trainees">Present
															Trainees:</label></td>
													<td><i><label for="present_trainees"
															class="label label-default" id="present_trainees_lbl">20</label></i></td>
												</tr>
												<tr>
													<td><label for="absent_trainees">Absent
															Trainees:</label></td>
													<td><i><label for="absent_trainees"
															class="label label-default" id="absent_trainees_lbl">10</label></i></td>
												</tr>
												<tr>
													<td><label for="good_performance">Good
															Performance:</label></td>
													<td><i><label for="good_performance"
															class="label label-default" id="good_performance_lbl">12</label></i></td>
												</tr>
												<tr>
													<td><label for="average_performance">Average
															Performance:</label></td>
													<td><i><label for="average_performance"
															class="label label-default" id="average_performance_lbl">5</label></i></td>
												</tr>
												<tr>
													<td><label for="poor_performance">Poor
															Performance:</label></td>
													<td><i><label for="poor_performance"
															class="label label-default" id="poor_performance_lbl">3</label></i></td>
												</tr>
											</table>
										</div>
									</div>
								</div>
							</div>
							<div align="center">
								<button type="submit" class="btn btn-primary btn-md"
									style="background: #ff5722">SEND</button>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</form>
	
	<!--@Author Jeevan
	end of update assessment Report code  -->
	
</div>
<footer>
<jsp:include page="../commons/footer.jsp"/>
</footer>
</body>
</html>