<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<title>ADD COMPANY</title>
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
        <link rel="stylesheet" href="../css/notification.css">
        <!-- Scrollbar Custom CSS -->
        <link rel="stylesheet" href="../css/mCustomScrollbar.min.css">
		

</head>
<body>
<jsp:include page="../commons/hr-header.jsp"/>
<!--Company info by jeevan  -->
<<<<<<< HEAD
<div align="center"><h2>ADD COMPANY INFORMATION</h2>
=======
<div align="center"><h2>Company Recruitment Information</h2>
>>>>>>> branch 'nikhil' of https://bitbucket.org/Nikhil-Nilamb/crm/src
</div>

<div align="center">
<!-- <div style="width: 75%;"> -->
<div class="panel panel-default" style="width: 75%" >
<form >
     <table class="table" >
        <tr>
        <td><b>Company Name </b></td>
        <td><input type="text" class="form-control" id="company_name"></td>   
        </tr>
        <tr>
        <td><b>Company Location </b></td>
        <td><textarea class="form-control" rows="3" id="location"></textarea></td>
        </tr>
        <tr>
        <td><b>Establishment Year </b></td>
        <td><input type="text" class="form-control" id="est_year"></td>
        </tr>
        <tr>
        <td><b>Number of Vacancies </b></td>
        <td><input type="text" class="form-control" id="vacancies"></td>
        </tr>
        <tr>
        <td><b>Technology </b></td>
        <td><select class="form-control" id="technology">
        <option>JAVA</option>
 		<option>.NET</option>
        </select>
        </td>
        </tr>
        <tr>
        <td><b>Criteria </b></td>
        <td><textarea class="form-control" rows="3" id="criteria"></textarea></td>
        </tr>
        <tr>
        <td><b>Batch </b></td>
        <td><select multiple class="form-control" id="sel2">
        <option>Batch 44</option>
        <option>Batch 45</option>
        <option>Batch 46</option>
        <option>Batch 47</option>
        <option>Batch 48</option>
      	</select></td>
        </tr>
     <tr><td colspan="2">
     <center><button type="button" class="btn btn-primary">Save</button></center> </td>
     </tr>
     </table>
     </form>
     <!--Company info end by jeevan  -->
</div>
 </div>
<!-- </div> -->

<footer>
<jsp:include page="../commons/footer.jsp"/>
</footer>
</body>
</html>