<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<title>ADD TRAINEES</title>
 <style type="text/css">
 .blank_row
{
    height: 10px !important; /* overwrites any other rules */
    background-color: #FFFFFF;
}
 .blank_td
{
    width: 10px !important; /* overwrites any other rules */
    background-color: #FFFFFF;
}

 </style>
  <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- <meta name="viewport" content="width=device-width, initial-scale=1.0"> -->
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
<div class="container">
	<form action="">
<div class="container">
  <h2 align="center">Assigning Mentors To Batch</h2>
   <p></p>             
  <table class="borderless" align="center">
  
    <tbody>
    <tr class="blank_row">
    <td colspan="3"></td>
</tr>
<tr class="blank_row">
    <td colspan="3"></td>
</tr>
    
   <tr>
<td style='width:50;'>Batch:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>

<td><select name="Batch"class="form-control" data-style="btn-primary">
  <option>Batch 45</option>
  <option>Batch 46</option>
  <option>Batch 47</option>
</select>
</td>
</tr>

<tr class="blank_row">
    <td colspan="3"></td>
</tr>
<tr class="blank_row">
    <td colspan="3"></td>
</tr>

<tr>
<td>Mentor:</td>

<td><select name="Mentors" class="form-control show-tick" data-width="55%" data-style="btn btn-info" multiple title="Choose only four mentors..." data-max-options="4">
  <option>A</option>
  <option>B</option>
  <option>C</option>
  <option>D</option>
  <option>E</option>
  <option>F</option>
  <option>G</option>
  <option>H</option>
  
</select>
</td>
</tr>

<tr class="blank_row">
    <td colspan="3"></td>
</tr>
<tr class="blank_row">
    <td colspan="3"></td>
</tr>
   
    </tbody>
  
  
  <table  align="center">
  <tr>
 
  <td colspan="3" align="center"><input type="submit" class="btn btn-success btn-lg" value="ADD"></td>
        <!-- <td colspan="5" align="center"><input type="submit" class="btn btn-success btn-lg" value="SAVE"></td> -->
 
        </tr>
        </table> 
  </table>
</div>


</form>
	
</div>
<footer>
<jsp:include page="../commons/footer.jsp"/>
</footer>
</body>
</html>