<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>MENTOR RATING</title>
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
 <div class="container"> 
<form>
<div class="container">
  <h2 align="center">Mentor Rating</h2>
               
  <table class="table table-bordered">
    <thead>
      <tr>
        <th>Name</th>
        <th>Logical</th>
        <th>Technical</th>
        <th>    </th>
        
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>Narendra</td>
        <td><select name="log" class="form-control" id="sel1" >
        <option>select</option>
        <option name="log">GooD</option>
        <option name="log">AveragE</option>
        <option name="log">PooR</option>
        </select></td>
        <td><select name="tech" class="form-control" id="sel1" >
        <option>select</option>
        <option name="tech">GooD</option>
        <option name="tech">AveragE</option>
        <option name="tech">PooR</option>
        
      </select></td>
        <td><button type="button" class="btn btn-default">EDIT</button>
        <button type="button" class="btn btn-default">SAVE</button>
        </td>
      </tr>
      <tr>
        <td>Satish</td>
        <td><select class="form-control" id="sel1">
        <option>GooD</option>
        <option>AveragE</option>
        <option>PooR</option>
        </select></td>
        <td><select class="form-control" id="sel1">
        <option>GooD</option>
        <option>AveragE</option>
        <option>PooR</option>
        </select></td>
        <td><button type="button" class="btn btn-default">EDIT</button>
        <button type="button" class="btn btn-default">SAVE</button>
        </td>
      </tr>
      <tr>
        <td>Sundar</td>
        <td><select class="form-control" id="sel1">
        <option>GooD</option>
        <option>AveragE</option>
        <option>PooR</option>
        </select></td>
        <td><select class="form-control" id="sel1">
        <option>GooD</option>
        <option>AveragE</option>
        <option>PooR</option>
        </select></td>
        <td><button type="button" class="btn btn-default">EDIT</button>
        <button type="button" class="btn btn-default">SAVE</button>
        </td>
      </tr>
      
      <tr>
        <td>Harinadh</td>
        <td><select class="form-control" id="sel1">
        <option>GooD</option>
        <option>AveragE</option>
        <option>PooR</option>
        </select></td>
        <td><select class="form-control" id="sel1">
        <option>GooD</option>
        <option>AveragE</option>
        <option>PooR</option>
        </select></td>
        <td><button type="button" class="btn btn-default">EDIT</button>
        <button type="button" class="btn btn-default">SAVE</button>
        </td>
      </tr>
      
      <tr>
        <td>Munwar</td>
        <td><select class="form-control" id="sel1">
        <option>GooD</option>
        <option>AveragE</option>
        <option>PooR</option>
        </select></td>
        <td><select class="form-control" id="sel1">
        <option>GooD</option>
        <option>AveragE</option>
        <option>PooR</option>
        </select></td>
        <td><button type="button" class="btn btn-default">EDIT</button>
        <button type="button" class="btn btn-default">SAVE</button>
        </td>
      </tr>
      
      <tr>
        <td>Manikantha</td>
        <td><select class="form-control" id="sel1">
        <option>GooD</option>
        <option>AveragE</option>
        <option>PooR</option>
        </select></td>
        <td><select class="form-control" id="sel1">
        <option>GooD</option>
        <option>AveragE</option>
        <option>PooR</option>
        </select></td>
        <td><button type="button" class="btn btn-default">EDIT</button>
        <button type="button" class="btn btn-default">SAVE</button>
        </td>
      </tr>
      
     <!--  <tr>
        <td>Axe</td>
        <td><select class="form-control" id="sel1">
        <option>GooD</option>
        <option>AveragE</option>
        <option>PooR</option>
        </select></td>
        <td><select class="form-control" id="sel1">
        <option>GooD</option>
        <option>AveragE</option>
        <option>PooR</option>
        </select></td>
        <td><button type="button" class="btn btn-default">EDIT</button>
        <button type="button" class="btn btn-default">SAVE</button>
        </td>
      </tr>
      
      <tr>
        <td>Anji</td>
        <td><select class="form-control" id="sel1">
        <option>GooD</option>
        <option>AveragE</option>
        <option>PooR</option>
        </select></td>
        <td><select class="form-control" id="sel1">
        <option>GooD</option>
        <option>AveragE</option>
        <option>PooR</option>
        </select></td>
        <td><button type="button" class="btn btn-default">EDIT</button>
        <button type="button" class="btn btn-default">SAVE</button>
        </td>
      </tr> -->
      </tbody>
      
   <table class="table" align="center">
  <tr>
 
  <td colspan="3" align="center"><input type="submit" class="btn btn-info btn-lg" value="EDIT"></td>
        <td colspan="5" align="center"><input type="submit" class="btn btn-success btn-lg" value="SAVE"></td>
 
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