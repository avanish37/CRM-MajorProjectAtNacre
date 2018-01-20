<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Trainee Technical Info</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<!-- jQuery  -->
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
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


<style>
    td{
        font-display: block;
        font-size: 18px;
        font-family: monospace;
        align-content: center;
    }  
 
    .footer {
   position: fixed;
   left: 0;
   bottom: 0;
   width: 100%;
   background-color: cornflowerblue;
   color: white;
   text-align: center;
   font-size: 10px;
}
    body {
   background-image: url("b.jpg");
   background-color: #cccccc;
}
    
</style>

</head>

<body>
	<jsp:include page="../commons/traineeHeader.jsp" />
	<div class="container">

		<!-- <div class="page-header">
			<h2 align="center" style="color: floralwhite; font-style: bold">
				Corporate Relationship Management!</h2>

			<div class="container">
 -->				<h2 align="center" style="color: blue;">Select Your
					'Technical Details'</h2>
				<hr />
				<form action="techServlet" method="post">
					<div class="table">

						<table class="table table-sm table table-hover " align="center"
							style="background-color: white;">

							<tr>
								<td><b>Languages Used</b></td>
								<td>::</td>
								<td><input type="checkbox" name="language" value="c">
									C</td>
								<td><input type="checkbox" name="language" value="c++">
									C++</td>
								<td><input type="checkbox" name="language" value="java">
									Java</td>
								<td><input type="checkbox" name="language" value="php">
									PHP</td>
								<td><input type="checkbox" name="language" value="android">
									Android</td>
							</tr>

							<tr>
								<td><b>Operating System</b></td>
								<td>::</td>
								<td><input type="checkbox" name="os" value="windows">
									Windows</td>
								<td><input type="checkbox" name="os" value="mac">
									Mac</td>
								<td><input type="checkbox" name="os" value="linux">
									Linux</td>
								<td><input type="checkbox" name="os" value="unix">
									Unix</td>
								<td><input type="checkbox" name="os" value="ubuntu">
									Ubuntu</td>
							</tr>

							<tr>
								<td><b>Databases Used</b></td>
								<td>::</td>
								<td><input type="checkbox" name="database" value="mysql">
									MySql</td>
								<td><input type="checkbox" name="database" value="oracle">
									Oracle</td>
								<td><input type="checkbox" name="database"
									value="sqlserver"> MS-SQLServer
								<td><input type="checkbox" name="database" value="mangodb">
									MangoDB</td>
							</tr>


							<tr>
								<td><b>UI Technologies</b></td>
								<td>::</td>
								<td><input type="checkbox" name="ui" value="html">
									HTML5</td>
								<td><input type="checkbox" name="ui" value="css3">
									CSS3</td>
								<td><input type="checkbox" name="ui" value="js">
									JavaScript</td>
							</tr>


							<tr>
								<td><b>UI Frameworks</b></td>
								<td>::</td>
								<td><input type="checkbox" name="uif" value="bootstrap">
									Bootstrap</td>
								<td><input type="checkbox" name="uif" value="jquery">
									JQuery</td>
								<td><input type="checkbox" name="uif" value="ajax">
									Ajax</td>
								<td><input type="checkbox" name="uif" value="json">
									JSon</td>
								<td><input type="checkbox" name="uif" value="angularjs">
									AngularJs</td>
							</tr>



							<tr>
								<td><b>Frameworks Used</b></td>
								<td>::</td>
								<td><input type="checkbox" name="framework" value="spring">
									Spring</td>
								<td><input type="checkbox" name="framework"
									value="hibernate"> Hibernate</td>
								<td><input type="checkbox" name="framework" value="struts">
									Struts</td>
								<td><input type="checkbox" name="framework"
									value="webservices"> Web Services</td>
							</tr>

							<tr>
								<td><b>Tools Used</b></td>
								<td>::</td>
								<td><input type="checkbox" name="tool" value="maven">
									Maven</td>
								<td><input type="checkbox" name="tool" value="svn">
									SVN</td>
								<td><input type="checkbox" name="tool" value="git">
									GIT</td>
								<td><input type="checkbox" name="tool" value="junit">
									JUnit</td>
								<td><input type="checkbox" name="tool" value="log4j">Log4j
								</td>
								<td><input type="checkbox" name="tool" value="gradle">
									Gradle</td>
							</tr>

							<tr>
								<td><b>Additional Known</b></td>
								<td>::</td>
								<td><input type="checkbox" name="database" value="logical">
									Logicals</td>
								<td><input type="checkbox" name="database" value="apti">
									Aptitude</td>
								<td><input type="checkbox" name="database" value="other">
									Reasoning</td>
							</tr>

						</table>

						<!-- <buttons> -->
						<div class="container" align="center">
							<button type="button" class="btn btn-primary" value="edit">Edit</button>
							&nbsp;&nbsp;
							<button type="reset" class="btn btn-primary" value="reset">Reset</button>
							&nbsp;&nbsp;
							<button type="submit" class="btn btn-primary active"
								value="submit">Save</button>
								<br><br><br>
						</div>

					</div>
					</form>
					</div>
					</div>
					</div>
					
					<footer>
						<jsp:include page="../commons/footer.jsp" />
					</footer>
</body>
</html>