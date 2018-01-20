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

	<div class="container">
		<div class="row">

			<center>
				<h1>Batch Details</h1>
			</center>

			<div class="col-md-10 col-md-offset-1" align="center">

				<div>
					<div>
						<div>
							<div>
								<h6 class="panel-title">
									<center>Details About Students</center>
								</h6>
							</div>
						</div>
					</div>
					<div class="panel-body" style="width: 617px;">
						<table class="table table-striped table-bordered table-list"
							style="width: 500px;">
							<thead>
								<tr>
									<th>Student Names</th>
									<th style="width: 123px"><center>Irregular</center></th>
                                    <th style="width: 123px;"><center>Poor Performance</center></th>
									<th style="width: 123px;"><center>Others</center></th>
								    <th style="width: 123px;"><center>Submit Details</center></th>
								</tr>
							</thead>
							 <tbody id="myTable">
								<tr>
									<td style="width: 64px;"><center>Aaishvarya 
								</center></td>
                                    <td><center><input type="radio"></center>    </td>
                                    <td><center><input type="radio"></center>    </td>
									
									<td><textarea rows="1" cols="20"></textarea></td>
									<td >
										<center>
										 <button type="button" class="btn btn-info">send</button>
										</center>
									</td>
								<tr>
									<td style="width: 87px;"><center>Archana
									
									</center></td>
                                    <td><center><input type="radio"></center>    </td>
                                    <td><center><input type="radio"></center>    </td>
									
                                    <td><textarea rows="1" cols="20"></textarea>
                                    <td >
										<center>
										 <button type="button" class="btn btn-info">send</button>
										</center>
									</td>
                                    </tr>
								<tr>
									<td><center>Avanish
									</center></td>
                                    <td><center><input type="radio"></center>    </td>
                                    <td><center><input type="radio"></center>    </td>
									
                                    <td><textarea rows="1" cols="20"></textarea>
                                    <td >
										<center>
										 <button type="button" class="btn btn-info">send</button>
										</center>
									</td>
                                    	</tr>
								<tr>
									<td><center>Durgesh
									</center></td>
									<td><center><input type="radio"></center>    </td>
                                    <td><center><input type="radio"></center>    </td>
									
									<td><textarea rows="1" cols="20"></textarea>
									<td >
										<center>
										 <button type="button" class="btn btn-info">send</button>
										</center>
									</td>
								</tr>
								<tr>
									<td><center>Gaurav
									</center></td>
                                    <td><center><input type="radio"></center>    </td>
                                    <td><center><input type="radio"></center>    </td>
									
									<td><textarea rows="1" cols="20"></textarea></td>
									
                                    <td >
										<center>
										 <button type="button" class="btn btn-info">send</button>
										</center>
									</td>
                                    </tr>
								<tr>
									<td><center>Garvit
									</center></td>
									<td><center><input type="radio"></center>    </td>
                                    <td><center><input type="radio"></center>    </td>
									
									<td><textarea rows="1" cols="20"></textarea></td>
									
									<td >
										<center>
										 <button type="button" class="btn btn-info">send</button>
										</center>
									</td>
                                    				</tr>
								<tr>
									<td><center>Munwar</center></td>
									<td><center><input type="radio"></center>    </td>
                                    <td><center><input type="radio"></center>    </td>
									
									<td><textarea rows="1" cols="20"></textarea></td>
									
									<td >
										<center><button type="button" class="btn btn-info">send</button></center>
									</td>
                                    	</tr>
								<tr>
									<td><center>Tayabba</center></td>
									<td><center><input type="radio"></center>    </td>
                                    <td><center><input type="radio"></center>    </td>
									
									<td><textarea rows="1" cols="20"></textarea></td>
									
									<td >
										<center><button type="button" class="btn btn-info">send</button></center>
									</td>
                                    
								</tr>
								<tr>
									<td><center>Monika</center></td>
									<td><center><input type="radio"></center>    </td>
                                    <td><center><input type="radio"></center>    </td>
									
									<td><textarea rows="1" cols="20"></textarea></td>
									
									<td >
										<center><button type="button" class="btn btn-info">send</button></center>
									</td>
                                    
								</tr>
								<tr>
									<td><center>Rachita</center></td>
                                   <td><center><input type="radio"></center>    </td>
                                    <td><center><input type="radio"></center>    </td>
									
									<td><textarea rows="1" cols="20"></textarea></td>
									
									<td >
										<center><button type="button" class="btn btn-info">send</button></center>
									</td>
                                    								</tr>
								<tr>
									<td><center>Navya</center></td>
									<td><center><input type="radio"></center>    </td>
                                    <td><center><input type="radio"></center>    </td>
									
									<td><textarea rows="1" cols="20"></textarea></td>
									
									<td >
										<center><button type="button" class="btn btn-info">send</button></center>
									</td>
                                    
								</tr>
								<tr>
									<td><center>Navneet</center></td>
									<td><center><input type="radio"></center>    </td>
                                    <td><center><input type="radio"></center>    </td>
									
									<td><textarea rows="1" cols="20"></textarea></td>
									
									<td >
										<center><button type="button" class="btn btn-info">send</button></center>
									</td>
                                    
								</tr>
								<tr>
									<td><center>Yakaih</center></td>
									<td><center><input type="radio"></center>    </td>
                                    <td><center><input type="radio"></center>    </td>
									
									<td><textarea rows="1" cols="20"></textarea></td>
									
									<td >
										<center><button type="button" class="btn btn-info">send</button></center>
									</td>
                                    
								</tr>
								<tr>
									<td><center>Mayank</center></td>
									<td><center><input type="radio"></center>    </td>
                                    <td><center><input type="radio"></center>    </td>
									
									<td><textarea rows="1" cols="20"></textarea></td>
									
									<td >
										<center><button type="button" class="btn btn-info">send</button></center>
									</td>
                                    								</tr>
								<tr>
									<td><center>Gaurav</center></td>
									<td><center><input type="radio"></center>    </td>
                                    <td><center><input type="radio"></center>    </td>
									
									<td><textarea rows="1" cols="20"></textarea></td>
									
									<td >
										<center><button type="button" class="btn btn-info">send</button></center>
									</td>
                                    								</tr>
								<tr>
									<td><center>dc</center></td>
									<td><center><input type="radio"></center></td>
                                    <td><center><input type="radio"></center></td>
									
									<td><textarea rows="1" cols="20"></textarea></td>
									
									<td>
										<center><button type="button" class="btn btn-info">send</button></center>
									</td>
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