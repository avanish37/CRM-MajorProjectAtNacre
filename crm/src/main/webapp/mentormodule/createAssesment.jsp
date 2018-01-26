<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	import="com.nacre.crm.mentor.deligate.MentorDeligate,com.nacre.crm.bo.AssismentDetailsBO,java.util.ArrayList,java.util.Iterator"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>CREATE ASSESSMENT</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<!-- jQuery -->
<script src="../js/jquery-3.2.1.js"></script>
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

<script>
$(document).ready(function(){
	
	$("#add-row").click(function(){
		$.ajax({
			url :'../fetchSubjects',
			type : 'get',
			dataType : 'json',
			success : function(data) {
				var a = "<option value='0'>Select Subject</option>";
				$.each(data, function(k, v) {
					a += "<option value='" + k + "'>" + v + "</option>";

				});
				$("#add-sub").html(a);
			}
		});
	});
	
	
	});
		 

function validate()
{
	alert('validate');
	
	return false
	}
</script>


</head>
<%
	
	MentorDeligate deligate = new MentorDeligate();
	ArrayList<AssismentDetailsBO> list = deligate.fetchAssessmentDelegate((String)session.getAttribute("batchId"));
%>

<body>
	<jsp:include page="../commons/mentorHeader.jsp" />
	<div class="container">

		<div class="table-responsive">
			<table class="table" id="table1">
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
								data-toggle="modal" data-target="#add" style="width: 68px;"></button></th>
					</tr>
				</thead>
				<tbody>
					<%
						Iterator itr = list.iterator();
						while (itr.hasNext()) {
							AssismentDetailsBO bo = (AssismentDetailsBO) itr.next();
					%>

					<tr>
						<td><%=bo.getAssisment_details_id()%></td>
						<td><%=bo.getDoa()%></td>
						<td><%=bo.getSubject()%></td>
						<td><%=bo.getType()%></td>
						<td><%=bo.getF_marks()%></td>
						<td><%=bo.getTime()%></td>
						<td><%=bo.getDuration()%>&nbsp;Hours</td>
						<td><button id="edit-row" class="glyphicon glyphicon-pencil"
								data-toggle="modal" data-target="#edit" style="width: 68px;"></button>&nbsp;&nbsp;
						</td>
					</tr>
					<%
						}
					%>

				</tbody>
			</table>
		</div>
	</div>

	<!-- Add Assessment- Modal -->
	<div class="modal fade" id="add" tabindex="-1" role="dialog"
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
				<form name="frm" action="#" method="post" onsubmit="return validate(this)">
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
									<td><select class="form-control" id="add-sub">
									
										</select>
										</td>
								</tr>
								<tr>
									<td><b>Type</b></td>
									<td><input type="text" class="form-control" id="add_type"
										placeholder="Enter Type (Objective/Descriptive)"></td>
								</tr>
								<tr>
									<td><b>Full Marks </b></td>
									<td><input type="number" class="form-control" id="fm"
										placeholder="Enter Full Marks"></td>
								</tr>
								<tr>
									<td><b>Time </b></td>
									<td><input type="text" id="add_time" class="form-control"
										placeholder="Enter Time"></td>
								</tr>
								<tr>
									<td><b>Duration</b></td>
									<td><input type="text" class="form-control" id="duration"
										placeholder="Enter Full Marks"></td>
								</tr>
								<tr><td align="left" colspan="2"><span style="text-align: left;color: red">* All fields are Mandatory</span></td></tr>
								<tr>
									<td colspan="2" align="center">
									<input type="submit" class="btn btn-primary" value="Save" >
									</td>
								</tr>
							</tbody>
						</table>
					</div>
					</form>
				</div>
			</div>
		</div>
		<!-- /.modal-content -->
		<!-- /.modal-dialog -->
	</div>

	<!-- End Modal -->


	<!-- Edit Assessment- Modal -->
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
						<span style="text-align: center">Update Assessment</span>
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
									<td><input type="text" class="form-control" id="edit_type"
										placeholder="Enter Type (Objective/Descriptive)"></td>
								</tr>
								<tr>
									<td><b>Full Marks </b></td>
									<td><input type="number" class="form-control" id="edit_fm"
										placeholder="Enter Full Marks"></td>
								</tr>
								<tr>
									<td><b>Time </b></td>
									<td><input type="text" id="edit_time" class="form-control"
										placeholder="Enter Time"></td>
								</tr>
								<tr>
									<td><b>Duration</b></td>
									<td><input type="text" class="form-control" id="edit_duration"
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