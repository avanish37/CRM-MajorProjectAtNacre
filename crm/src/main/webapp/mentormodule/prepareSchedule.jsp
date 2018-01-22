<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<!-- <meta charset="utf-8">
<meta name="robots" content="noindex, nofollow">
 -->
<title>SCHEDULE OF WEEKLEY PLAN</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- this is for editing data -->	

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
<!--  <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>  -->

 <title>MENTOR Prepare Schedule</title>
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
<jsp:include page="../commons/mentorHeader.jsp"/>
	<link
		href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css"
		rel='stylesheet' type='text/css'>

	<div class="container" style="width: 619px; ">
		<div class="row">

			<!-- <center>
				<h1>WEEKLY SCHEDULE</h1>
			</center> -->

			<div  align="center">

				<div class="panel panel-default panel-table" >
					<div class="panel-heading">
						<div class="row">
							<div >
								<h6 class="panel-title">
									<center><h2>WEEKLY SCHEDULE</h2></center>
								</h6>
							</div>
						</div>
					</div>
					<div class="panel-body" style="width: 617px;">
						<table class="table table-striped table-bordered table-list"
>
							<thead>
								<tr>
									<th>Week List</th>
									<th style="width: 123px"><center>Weekly Description</center></th>

									<th style="width: 123px;"><center>Prepare Schedule</center></th>

								</tr>
							</thead>
							 <tbody id="myTable">
								<tr>
									<td style="width: 64px;"><center><b>Week 1</b>
									<label>(22-Jan To 28-Jan)</label>
									</center></td>
                                    <td></td>
									<td style="width: 56px;"><p data-placement="top"
											data-toggle="tooltip" title="Edit">
										<center>
											<button class="btn btn-primary btn-xs" data-title="Edit"
												data-toggle="modal" data-target="#edit" style="width: 68px;">
												<span class="glyphicon glyphicon-pencil"></span>
											</button>
										</center>
										</p></td>
								<tr>
									<td style="width: 87px;"><center><b>Week 2</b>
									<label>(29-Jan To 04-Feb)</label>
									</center></td>
                                       <td></td>
									<td style="width: 56px;"><p data-placement="top"
											data-toggle="tooltip" title="Edit">
										<center>
											<button class="btn btn-primary btn-xs" data-title="Edit"
												data-toggle="modal" data-target="#edit" style="width: 68px;">
												<span class="glyphicon glyphicon-pencil"></span>
											</button>
										</center>
										</p></td>
								</tr>
								<tr>
									<td><center><b>Week 3</b>
									<label>(05-Feb To 11-Feb)</label>
									</center></td>
                                     <td></td>
									<td style="width: 56px;"><p data-placement="top"
											data-toggle="tooltip" title="Edit">
										<center>
											<button class="btn btn-primary btn-xs" data-title="Edit"
												data-toggle="modal" data-target="#edit" style="width: 68px;">
												<span class="glyphicon glyphicon-pencil"></span>
											</button>
										</center>
										</p></td>
								</tr>
								<tr>
									<td><center><b>Week 4</b>
									<label>(12-Feb To 18-Feb)</label>
									</center></td>
									 <td></td>

									<td style="width: 56px;"><p data-placement="top"
											data-toggle="tooltip" title="Edit">
										<center>
											<button class="btn btn-primary btn-xs" data-title="Edit"
												data-toggle="modal" data-target="#edit" style="width: 68px;">
												<span class="glyphicon glyphicon-pencil"></span>
											</button>
										</center>
										</p></td>
								</tr>
								<tr>
									<td><center><b>Week 5</b>
									<label>(19-Feb To 25-Feb)</label>
									</center></td>
                                      <td></td>
									<td style="width: 56px;"><p data-placement="top"
											data-toggle="tooltip" title="Edit">
										<center>
											<button class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" style="width: 68px;">
												<span class="glyphicon glyphicon-pencil"></span>
											</button>
										</center>
										</p></td>
								</tr>
								<tr>
									<td><center><b>Week 6</b>
									<label>(26-Feb To 04-Mar)</label>
									</center></td>
									 <td></td>
									<td style="width: 56px;"><p data-placement="top"
											data-toggle="tooltip" title="Edit">
										<center>
											<button class="btn btn-primary btn-xs" data-title="Edit"
												data-toggle="modal" data-target="#edit" style="width: 68px;">
												<span class="glyphicon glyphicon-pencil"></span>
											</button>
										</center>
										</p></td>
								</tr>
								<tr>
									<td><center><b>Week 7</b>
									<label>(05-Mar To 11-Mar)</label>
									</center></td>
									 <td></td>
									<td style="width: 56px;"><p data-placement="top"
											data-toggle="tooltip" title="Edit">
										<center>
											<button class="btn btn-primary btn-xs" data-title="Edit"
												data-toggle="modal" data-target="#edit" style="width: 68px;">
												<span class="glyphicon glyphicon-pencil"></span>
											</button>
										</center>
										</p></td>
								</tr>
								<tr>
									<td><center><b>Week 8</b>
									<label>(12-Mar To 18-Mar)</label>
									</center></td>
									 <td></td>
									<td style="width: 56px;"><p data-placement="top"
											data-toggle="tooltip" title="Edit">
										<center>
											<button class="btn btn-primary btn-xs" data-title="Edit"
												data-toggle="modal" data-target="#edit" style="width: 68px;">
												<span class="glyphicon glyphicon-pencil"></span>
											</button>
										</center>
										</p></td>

								</tr>
								<tr>
									<td><center><b>Week 9</b>
									<label>(19-Mar To 25-Mar)</label>
									</center></td>
									 <td></td>
									<td style="width: 56px;"><p data-placement="top"
											data-toggle="tooltip" title="Edit">
										<center>
											<button class="btn btn-primary btn-xs" data-title="Edit"
												data-toggle="modal" data-target="#edit" style="width: 68px;">
												<span class="glyphicon glyphicon-pencil"></span>
											</button>
										</center>
										</p></td>
								</tr>
								<tr>
									<td><center><b>Week 10</b>
									<label>(26-Mar To 01-Apr)</label>
									</center></td>
									 <td></td>

									<td style="width: 56px;"><p data-placement="top"
											data-toggle="tooltip" title="Edit">
										<center>
											<button class="btn btn-primary btn-xs" data-title="Edit"
												data-toggle="modal" data-target="#edit" style="width: 68px;">
												<span class="glyphicon glyphicon-pencil"></span>
											</button>
										</center>
										</p></td>

								</tr>
								<tr>
									<td><center><b>Week 11</b>
									<label>(02-Apr To 08-Apr)</label>
									</center></td>
									 <td></td>

									<td style="width: 56px;"><p data-placement="top"
											data-toggle="tooltip" title="Edit">
										<center>
											<button class="btn btn-primary btn-xs" data-title="Edit"
												data-toggle="modal" data-target="#edit" style="width: 68px;">
												<span class="glyphicon glyphicon-pencil"></span>
											</button>
										</center>
										</p></td>

								</tr>
								<tr>
									<td><center><b>Week 12</b>
									<label>(09-Apr To 15-Apr)</label>
									</center></td>
									 <td></td>

									<td style="width: 56px;"><p data-placement="top"
											data-toggle="tooltip" title="Edit">
										<center>
											<button class="btn btn-primary btn-xs" data-title="Edit"
												data-toggle="modal" data-target="#edit" style="width: 68px;">
												<span class="glyphicon glyphicon-pencil"></span>
											</button>
										</center>
										</p></td>

								</tr>
								<tr>
									<td><center><b>Week 13</b>
									<label>(16-Apr To 22-Apr)</label>
									</center></td>
									 <td></td>

									<td style="width: 56px;"><p data-placement="top"
											data-toggle="tooltip" title="Edit">
										<center>
											<button class="btn btn-primary btn-xs" data-title="Edit"
												data-toggle="modal" data-target="#edit" style="width: 68px;">
												<span class="glyphicon glyphicon-pencil"></span>
											</button>
										</center>
										</p></td>

								</tr>
								<tr>
									<td><center><b>Week 14</b>
									<label>(23-Apr To 29-Apr)</label>
									</center></td>
									 <td></td>

									<td style="width: 56px;"><p data-placement="top"
											data-toggle="tooltip" title="Edit">
										<center>
											<button class="btn btn-primary btn-xs" data-title="Edit"
												data-toggle="modal" data-target="#edit" style="width: 68px;">
												<span class="glyphicon glyphicon-pencil"></span>
											</button>
										</center>
										</p></td>

								</tr>
								<tr>
									<td><center><b>Week 15</b>
									<label>(30-Apr To 06-May)</label>
									</center></td>
									 <td></td>

									<td style="width: 56px;"><p data-placement="top"
											data-toggle="tooltip" title="Edit">
										<center>
											<button class="btn btn-primary btn-xs" data-title="Edit"
												data-toggle="modal" data-target="#edit" style="width: 68px;">
												<span class="glyphicon glyphicon-pencil"></span>
											</button>
										</center>
										</p></td>

								</tr>
								<tr>
									<td><center><b>Week 16</b>
									<label>(07-May To 13-May)</label>
									</center></td>
									 <td></td>

									<td style="width: 56px;"><p data-placement="top"
											data-toggle="tooltip" title="Edit">
										<center><button class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" style="width: 68px;"><span class="glyphicon glyphicon-pencil"></span></button></center>
										</p></td>

								</tr>
								

							</tbody>
						</table>
					</div>
					<div class="col-md-12 text-center">
               <ul class="pagination pagination-lg pager" id="myPager"></ul>
              </div>


					<div class="panel-footer">
						<div class="clearfix"></div>


						<div class="row"></div>
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
						<center>Prepare Daily Schedule</center>
					</h4>
				</div>
				<div class="modal-body">
					<div class="form-group">
						<table class="table table-striped table-bordered table-list">
							<thead>
								<tr>
									<th>Days</th>
									
									<th><center style="width: 82px; ">Date</center></th>
									
									<th><center>Description</center></th>
									
									<th><center>Update</center></th>

								</tr>
							</thead>
							<tbody>
								<tr id="row1">
									<td>Monday</td>
									<td id="date1"></td>
									<td id="des1"></td>
									<td><center><input type="button" id="edit_button1" value="Edit" class="edit" onclick="edit_row('1')">
									<input type="button" id="save_button1" value="Save" class="save" onclick="save_row('1')">
									<center>
								</td></tr>
								<tr id="row2">
									<td>Tuesday</td>
									<td id="date2"></td>
									<td id="des2"></td>
									<td><center><input type="button" id="edit_button2" value="Edit" class="edit" onclick="edit_row('2')">
									<input type="button" id="save_button2" value="Save" class="save" onclick="save_row('2')">
									</center>
								</td>
									
								</tr>
								<tr id="row3">
									<td>Wednesday</td>
									<td id="date3"></td>
									<td id="des3"></td>
									<td><center><input type="button" id="edit_button3" value="Edit" class="edit" onclick="edit_row('3')">
									<input type="button" id="save_button3" value="Save" class="save" onclick="save_row('3')">
									</center>
								</td>
									
									
								</tr>
								<tr id="row4">
									<td>Thursday</td>
									<td id="date4"></td>
									<td id="des4"></td>
									<td><center><input type="button" id="edit_button4" value="Edit" class="edit" onclick="edit_row('4')">
									<input type="button" id="save_button4" value="Save" class="save" onclick="save_row('4')">
									</center>
								</td>
								</tr>
								<tr id="row5">
									<td>Friday</td>
									<td id="date5"></td>
									<td id="des5"></td>
									<td><center><input type="button" id="edit_button5" value="Edit" class="edit" onclick="edit_row('5')">
									<input type="button" id="save_button5" value="Save" class="save" onclick="save_row('5')">
									</center>
								</td>
									

								</tr>
								<tr id="row6">
									<td>Saturday</td>
									<td id="date6"></td>
									<td id="des6"></td>
									<td><center><input type="button" id="edit_button6" value="Edit" class="edit" onclick="edit_row('6')">
									<input type="button" id="save_button6" value="Save" class="save" onclick="save_row('6')">
									</center>
								</td>

								</tr>
								<tr id="row7">
									<td>Sunday</td>
									<td id="date7"></td>
									<td id="des7"></td>
									<td><center><input type="button" id="edit_button7" value="Edit" class="edit" onclick="edit_row('7')">
									<input type="button" id="save_button7" value="Save" class="save" onclick="save_row('7')">
									</center>
								</td>

								</tr>
                                	<tr id="row7">
									<td>Special Classes</td>
									<td id="date8"></td>
									<td id="des8"></td>
									<td><center><input type="button" id="edit_button8" value="Edit" class="edit" onclick="edit_row('8')">
									<input type="button" id="save_button8" value="Save" class="save" onclick="save_row('8')">
									</center>
								</td>

								</tr>
							</tbody>
						</table>
						
					</div>
				</div>
				 
				<div class="modal-footer ">
					<button type="button" class="btn btn-warning btn-lg"
						style="width: 100%;">
						<span class="glyphicon glyphicon-ok-sign"></span> Update
					</button>
				</div>
			</div>
			
		</div>
		<!-- /.modal-content -->
		<!-- /.modal-dialog -->
	</div>
<footer>
<jsp:include page="../commons/footer.jsp"/>
</footer>
	<!-- pagination script -->
	 <script type="text/javascript">
	$.fn.pageMe = function(opts){
    var $this = this,
        defaults = {
            perPage: 7,
            showPrevNext: false,
            hidePageNumbers: false
        },
        settings = $.extend(defaults, opts);
    
    var listElement = $this;
    var perPage = settings.perPage; 
    var children = listElement.children();
    var pager = $('.pager');
    
    if (typeof settings.childSelector!="undefined") {
        children = listElement.find(settings.childSelector);
    }
    
    if (typeof settings.pagerSelector!="undefined") {
        pager = $(settings.pagerSelector);
    }
    
    var numItems = children.size();
    var numPages = Math.ceil(numItems/perPage);

    pager.data("curr",0);
    
    if (settings.showPrevNext){
        $('<li><a href="#" class="prev_link">«</a></li>').appendTo(pager);
    }
    
    var curr = 0;
    while(numPages > curr && (settings.hidePageNumbers==false)){
        $('<li><a href="#" class="page_link">'+(curr+1)+'</a></li>').appendTo(pager);
        curr++;
    }
    
    if (settings.showPrevNext){
        $('<li><a href="#" class="next_link">»</a></li>').appendTo(pager);
    }
    
    pager.find('.page_link:first').addClass('active');
    pager.find('.prev_link').hide();
    if (numPages<=1) {
        pager.find('.next_link').hide();
    }
      pager.children().eq(1).addClass("active");
    
    children.hide();
    children.slice(0, perPage).show();
    
    pager.find('li .page_link').click(function(){
        var clickedPage = $(this).html().valueOf()-1;
        goTo(clickedPage,perPage);
        return false;
    });
    pager.find('li .prev_link').click(function(){
        previous();
        return false;
    });
    pager.find('li .next_link').click(function(){
        next();
        return false;
    });
    
    function previous(){
        var goToPage = parseInt(pager.data("curr")) - 1;
        goTo(goToPage);
    }
     
    function next(){
        goToPage = parseInt(pager.data("curr")) + 1;
        goTo(goToPage);
    }
    
    function goTo(page){
        var startAt = page * perPage,
            endOn = startAt + perPage;
        
        children.css('display','none').slice(startAt, endOn).show();
        
        if (page>=1) {
            pager.find('.prev_link').show();
        }
        else {
            pager.find('.prev_link').hide();
        }
        
        if (page<(numPages-1)) {
            pager.find('.next_link').show();
        }
        else {
            pager.find('.next_link').hide();
        }
        
        pager.data("curr",page);
      	pager.children().removeClass("active");
        pager.children().eq(page+1).addClass("active");
    
    }
};

$(document).ready(function(){
    
  $('#myTable').pageMe({pagerSelector:'#myPager',showPrevNext:true,hidePageNumbers:false,perPage:4});
    
});
	</script>
</body>
</html>