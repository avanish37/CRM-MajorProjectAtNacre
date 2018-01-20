<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Trainee Academic Info</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<!-- jQuery -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
<script src="../js/jquery-1.12.0.min.js"></script>
<!-- Bootstrap Js -->
<script src="../js/bootstrap.min.js"></script>
<!-- jQuery Custom Scroller -->
<script src="../js/concat.min.js"></script>
<!-- Our Footer Custom CSS -->
<link rel="stylesheet" href="../css/footer.css">
<!-- Bootstrap CSS-->
<link rel="stylesheet" href="../css/bootstrap.min.css">
<!-- Our Trainee Header Custom CSS -->
<link rel="stylesheet" href="../css/header.css">
  <link rel="stylesheet" href="../css/notification.css">
<!-- Scrollbar Custom CSS -->
<link rel="stylesheet" href="../css/mCustomScrollbar.min.css">
<!-- java script
on click on hyperlink it opens form
created by Yakaiah
 -->
<script  type="text/javascript">
function mydiv(){
	
	document.getElementById("inter").style.display='block';
	document.getElementById("link").style.display='none';
}
function mydiv1(){
	
	document.getElementById("graduation").style.display='block';
	document.getElementById("link1").style.display='none';
}
function mydiv2(){
	
	document.getElementById("pgraduation").style.display='block';
	document.getElementById("link2").style.display='none';
}
</script>

</head>

<body>
<jsp:include page="../commons/traineeHeader.jsp"/>
<div class="container">
<center><h2 style="color: red">Academic Inforamation</h2></center>
<form action="" method="">
    <div class="form-group">
    <div class="form-row align-items-center">
    <div class="container">
      <div class="row">
      <div class="col-sm-4"></div>
    <div class="col-sm-4" style="background-color: ">
    <!-- <h3 class="text">X Details</h3> -->
   <div><h6>X Board </h6><p>
    <input list="boards" name="board" class="form-control">
  <datalist id="boards">
    <option value="CBSC">
    <option value="SSC">
    <option value="SCHOOL">
    <option value="IBSC">
    
  </datalist>
    <h6>Medium</h6>
   <input list="boards" name="board" class="form-control">
  <datalist id="boards">
    <option value="CBSC">
    <option value="SSC">
    <option value="SCHOOL">
    <option value="IBSC">
    
  </datalist>
  <h6>School</h6>
  <input list="boards" name="board" class="form-control">
  <datalist id="boards">
    <option value="CBSC">
    <option value="SSC">
    <option value="SCHOOL">
    <option value="IBSC">
    
  </datalist>
  
      <h6>Year Of Passedout</h6>
     <input list="boards" name="board" class="form-control">
  <datalist id="boards">
    <option value="CBSC">
    <option value="SSC">
    <option value="SCHOOL">
    <option value="IBSC">
    
  </datalist>
  
        <h6>X Marks(%)</h6>
      <input type="text" class="form-control"  placeholder="enter marks" id="marks" required="required"><!-- &nbsp;&nbsp; -->
     
        </div>
        <div>
        <a href="#"  id="link" onclick="mydiv();" style="color:blue">Add class XII</a>&nbsp;&nbsp;
        </div>
 
    <div style="display: none; "  id="inter">
    ----------------------------------------------------
            <h6 for="sel2">XII Board </h6><input list="boards" name="board" class="form-control">
  <datalist id="boards">
    <option value="CBSC">
    <option value="SSC">
    <option value="SCHOOL">
    <option value="IBSC">
    
  </datalist>
  <!-- &nbsp;&nbsp; -->
     <h6>Medium</h6>
    <input list="boards" name="board" class="form-control">
  <datalist id="boards">
    <option value="CBSC">
    <option value="SSC">
    <option value="SCHOOL">
    <option value="IBSC">
    
  </datalist>
   <h6>College</h6>
  <input list="boards" name="board" class="form-control">
  <datalist id="boards">
    <option value="CBSC">
    <option value="SSC">
    <option value="SCHOOL">
    <option value="IBSC">
    
  </datalist>
  
      
      <h6>Year Of Passedout</h6>
     
      <input list="boards" name="board" class="form-control">
  <datalist id="boards">
    <option value="CBSC">
    <option value="SSC">
    <option value="SCHOOL">
    <option value="IBSC">
    
  </datalist>
  
     
    <h6>XII Marks(%)</h6>
      <input type="text" class="form-control"  placeholder="enter marks" id="marks" required="required"><!-- &nbsp;&nbsp; -->
     
      
  </div>
  <div>
        <a href="#"  id="link1" onclick="mydiv1();" style="color:blue">Add Graduation</a>
        </div>
    <div  style="display: none" id="graduation">
    ----------------------------------------------------
    <h6>Graduation</h6>
    <input list="boards" name="board" class="form-control">
  <datalist id="boards">
    <option value="CBSC">
    <option value="SSC">
    <option value="SCHOOL">
    <option value="IBSC">
    
  </datalist>
  
    <h6>Branch</h6>
    <input list="boards" name="board" class="form-control">
  <datalist id="boards">
    <option value="CBSC">
    <option value="SSC">
    <option value="SCHOOL">
    <option value="IBSC">
    
  </datalist>
  <h6>College</h6>
  <input list="boards" name="board" class="form-control">
  <datalist id="boards">
    <option value="CBSC">
    <option value="SSC">
    <option value="SCHOOL">
    <option value="IBSC">
    
  </datalist>
  <h6>Univercity</h6>
  <input list="boards" name="board" class="form-control">
  <datalist id="boards">
    <option value="CBSC">
    <option value="SSC">
    <option value="SCHOOL">
    <option value="IBSC">
    
  </datalist>
  <h6>Year of passed out</h6>
  <input list="boards" name="board" class="form-control">
  <datalist id="boards">
    <option value="CBSC">
    <option value="SSC">
    <option value="SCHOOL">
    <option value="IBSC">
    
  </datalist>
  <h6>Marks(%)</h6>
   <input type="text" class="form-control"  placeholder="enter marks" id="marks" required="required"><!-- &nbsp;&nbsp; -->
     
      
    </div>
    
  <div>
        <a href="#"  id="link2" onclick="mydiv2();" style="color:blue">Add PostGraduation</a>
        </div>
    <div  style="display: none;" id="pgraduation">
    ----------------------------------------------------
    <h6>Post Graduation</h6>
    <input list="boards" name="board" class="form-control">
  <datalist id="boards">
    <option value="CBSC">
    <option value="SSC">
    <option value="SCHOOL">
    <option value="IBSC">
    
  </datalist>
  
    <h6>Branch</h6>
    <input list="boards" name="board" class="form-control">
  <datalist id="boards">
    <option value="CBSC">
    <option value="SSC">
    <option value="SCHOOL">
    <option value="IBSC">
    
  </datalist>
  <h6>College</h6>
  <input list="boards" name="board" class="form-control">
  <datalist id="boards">
    <option value="CBSC">
    <option value="SSC">
    <option value="SCHOOL">
    <option value="IBSC">
    
  </datalist>
  <h6>Univercity</h6>
  <input list="boards" name="board" class="form-control">
  <datalist id="boards">
    <option value="CBSC">
    <option value="SSC">
    <option value="SCHOOL">
    <option value="IBSC">
    
  </datalist>
  <h6>Year of passed out</h6>
  <input list="boards" name="board" class="form-control">
  <datalist id="boards">
    <option value="CBSC">
    <option value="SSC">
    <option value="SCHOOL">
    <option value="IBSC">
    
  </datalis t>
  <h6>Marks(%)</h6>
   <input type="text" class="form-control"  placeholder="enter marks" id="marks" required="required"><!-- &nbsp;&nbsp; -->
     
      
 </div><center>
 <button class="btn btn-success navbar-btn">SAVE</button>
    <button class="btn btn-danger navbar-btn">EDIT</button>
 </center> 
      <div class="col-sm-4"></div>
 </div> 
 </div>
 </div>
 </div>
 
  
</div>
</form>
</div>
<footer>
<jsp:include page="../commons/footer.jsp"/>
</footer>
</body>
</html>