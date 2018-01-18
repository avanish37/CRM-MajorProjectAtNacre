
<div class="wrapper">
	<!-- Sidebar Holder -->
	<nav id="sidebar">
		<div id="dismiss">
			<i class="glyphicon glyphicon-arrow-left"></i>
		</div>

		<div class="sidebar-header">
		<br>
			<h3>NACRE SOFTWARE SERVICES</h3>
		</div>

		<ul class="list-unstyled components">
			
			<li><a href="mentorHome.jsp">HOME</a></li>
			<li><a href="prepareSchedule.jsp">PREPARE SCHEDULE</a></li>
			<li class="active"><a href="#assesment" data-toggle="collapse"
				aria-expanded="false">ASSESSMENT</a>
				<ul class="collapse list-unstyled" id="assesment">
					<li><a href="createAssesment.jsp">Create Assessment</a></li>
					<li><a href="updateAssesment.jsp">Update Assessment Report</a></li>
				</ul></li>
			<li><a href="mentorRating.jsp">Mentor Rating</a></li>
			<li><a href="mentorRecomendation.jsp">Mentor Recommendation</a></li>
			<li><a href="reportTrainee.jsp">Report Trainee</a></li>
		</ul>


	</nav>

	<!-- horizontal nav -->

	<nav class="navbar navbar-default">
		<div class="container-fluid">

			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        		<span class="icon-bar"></span>
        		<span class="icon-bar"></span>
        		<span class="icon-bar"></span>                        
      		</button>

			<div class="navbar-header">
				<button type="button" id="sidebarCollapse"
					class="btn btn-info navbar-btn">
					<i class="glyphicon glyphicon-tasks"></i> <span>MENU</span>
				</button>
			</div>

			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-right">
				
					<li><a href="#myModal" data-toggle="modal" data-target="#myModal">Change Password</a></li>
					<li><a href="#">LogOut</a></li>
				</ul>
			</div>
		</div>
	</nav>
	</div>

<!--pop up to change password  -->

<div class="modal fade" id="myModal">
	<div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
          <h4 class="modal-title">Change Password</h4>
        </div>
        <form action="#" method="post" onsubmit="return validateform()">
        <div class="modal-body">
          <div class="form-group">
    		<label for="oldPassword">Enter Old Password</label>
    		<input class="form-control" id="oldPassword" name="oldPassword" placeholder="Enter Old Password" type="password" required>
  		  </div>
		  <div class="form-group">
		  	<label for="newPassword">New Password</label>
			<input class="form-control" id="newPassword" name="newPassword" placeholder="New Password" type="password" required>
		  </div>
		  <div class="form-group">
		  	<label for="confirmNewPassword">Confirm New Password</label>
			<input class="form-control" id="confirmNewPassword" name="confirmNewPassword" placeholder="Confirm New Password" type="password" required>
		  </div>
        </div>
        <div class="modal-footer">
          <a href="#" data-dismiss="modal" class="btn">Close</a>
          <button type="submit" class="btn btn-success btn-primary">Change Password</button>
        </div>
        </form>
      </div>
    </div>
</div>

	<script type="text/javascript">
		$(document).ready(function() {
			$("#sidebar").mCustomScrollbar({
				theme : "minimal"
			});

			$('#dismiss, .overlay').on('click', function() {
				$('#sidebar').removeClass('active');
				$('.overlay').fadeOut();
			});

			$('#sidebarCollapse').on('click', function() {
				$('#sidebar').addClass('active');
				$('.overlay').fadeIn();
				$('.collapse.in').toggleClass('in');
				$('a[aria-expanded=true]').attr('aria-expanded', 'false');
			});
		});
	</script>
	</html>