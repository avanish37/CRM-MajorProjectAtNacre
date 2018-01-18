
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
			
			<li><a href="traineeHome.jsp">HOME</a></li>
			<li class="active"><a href="#profileDetails" data-toggle="collapse"
				aria-expanded="false">PROFILE DETAILS</a>
				<ul class="collapse list-unstyled" id="profileDetails">
					<li><a href="personal-Info.jsp">Personal Info</a></li>
					<li><a href="academic-info.jsp">Academic Info</a></li>
					<li><a href="technical-info.jsp">Technical Info</a></li>
				</ul></li>
			<li> <a href="#viewSchedule"
				data-toggle="collapse" aria-expanded="false">VIEW SCHEDULE</a>
				<ul class="collapse list-unstyled" id="viewSchedule">
					<li><a href="todaySchedule.jsp">Today's Schedule</a></li>
					<li><a href="weeklySchedule.jsp">Weekly Schedule</a></li>
					<li><a href="examSchedule.jsp">Exam Schedule</a></li>
				</ul></li>
			<li><a href="#viewReport"
				data-toggle="collapse" aria-expanded="false">VIEW REPORT</a>
				<ul class="collapse list-unstyled" id="viewReport">
				<li><a href="examReport.jsp">Exam Report</a></li>
				</ul></li>
				
			<li><a href="#request"
				data-toggle="collapse" aria-expanded="false">REQUEST</a>
				<ul class="collapse list-unstyled" id="request">
				<li><a href="leaveRequest.jsp">Leave Request</a></li>
				<li><a href="batchChangeRequest.jsp">Batch Change Request</a></li>
				<li><a href="otherRequest.jsp">Other</a></li>
				</ul></li>
			
			<li><a href="traineeFeedback.jsp">FEEDBACK/SUGGESTION</a></li>
			
			<!-- <li><a href="recruitmentInfo.jsp">RECRUITMENT INFO</a></li> -->
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
				
				<li id="noti_Container">
                <div id="noti_Counter"></div> <!--SHOW NOTIFICATIONS COUNT.-->
                
                <!--A CIRCLE LIKE BUTTON TO DISPLAY NOTIFICATION DROPDOWN.-->
                <div id="noti_Button"  class="glyphicon glyphicon-bell"></div>    

                <!--THE NOTIFICAIONS DROPDOWN BOX.-->
                <div id="notifications">
                    <h3>Notifications</h3>
                     <div style="height:300px;">5555555</div>
                    <div class="seeAll">
						<a href="recruitmentInfo.jsp">See All</a>
					</div>
                </div>
            </li>
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

	<!-- SCRIPT FOR NOTIFICATION -->
	<script>
    $(document).ready(function () {

        // ANIMATEDLY DISPLAY THE NOTIFICATION COUNTER.
        $('#noti_Counter')
            .css({ opacity: 0 })
            .text('7')              // ADD DYNAMIC VALUE (YOU CAN EXTRACT DATA FROM DATABASE OR XML).
            .css({ top: '-10px' })
            .animate({ top: '-2px', opacity: 1 }, 500);

        $('#noti_Button').click(function () {

            // TOGGLE (SHOW OR HIDE) NOTIFICATION WINDOW.
            $('#notifications').fadeToggle('fast', 'linear', function () {
                if ($('#notifications').is(':hidden')) {
                    $('#noti_Button').css('background-color', '#2E467C');
                }
                else $('#noti_Button').css('background-color', '#FFF');  // CHANGE BACKGROUND COLOR OF THE BUTTON.
            });

            $('#noti_Counter').fadeOut('slow');    // HIDE THE COUNTER.

            return false;
        });

        // HIDE NOTIFICATIONS WHEN CLICKED ANYWHERE ON THE PAGE.
        $(document).click(function () {
            $('#notifications').hide();

            // CHECK IF NOTIFICATION COUNTER IS HIDDEN.
            if ($('#noti_Counter').is(':hidden')) {
                // CHANGE BACKGROUND COLOR OF THE BUTTON.
                $('#noti_Button').css('background-color', '#2E467C');
            }
        });

        $('#notifications').click(function () {
            return false;       // DO NOTHING WHEN CONTAINER IS CLICKED.
        });
    });
</script>
