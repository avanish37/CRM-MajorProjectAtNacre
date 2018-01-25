/*var x_board = /^[A-Za-z ]$/;
var x_medium = /^[A-Za-z ]$/;
var x_year = /^[0-9 ]{4}$/;
var x_percentage = /^[0-9 ]{2}$/;
function validate(form){
	//alert("hiiiii");
	var board=form.board.value;
	var medium=form.medium.value;
	var year=form.year.value;
	var percentage=form.percentage.value;
	var errors = [];
	 if (!x_board.test(board)) {
		  errors[errors.length] = " Board shuold be String .";
		 }
	 if (errors.length > 0) {

		  reportErrors(errors);
		  return false;
		 }
		  return true;
}
function reportErrors(errors){
	 var msg = "Please Enter Valide Data...\n";
	 for (var i = 0; i<errors.length; i++) {
	 var numError = i + 1;
	  msg += "\n" + numError + ". " + errors[i];
	}
	 alert(msg);
	}*/


/*$('#addChkBox').click(function () {
    $('#txtBox').val('✔');
});*/


function validateBoard() 
{

	var regex =/^[a-zA-Z]+$/;
	var board=myform.fname.value;
    if(!regex.test(board))
    {
    	//alert("not matching");
       document.getElementById('boarderrfn').innerHTML="this is invalid give characters only";
       document.getElementById('fname').style.border='1px solid red';
       
    }
    else{
    	document.getElementById('boarderrfn').innerHTML="";
    	document.getElementById('fname').style.border='1px solid green';
    }
    
}
function validateMedium() 
{

	var regex =/^[a-zA-Z]+$/;
	var med=myform.medium.value;
    if(!regex.test(med))
    {
    	//alert("not matching");
       document.getElementById('mediumerrfn').innerHTML="this is invalid give characters only";
       document.getElementById('medium').style.border='1px solid red';
       
    }
    else{
    	document.getElementById('mediumerrfn').innerHTML="";
    	document.getElementById('medium').style.border='1px solid green';
    }
    
    
}
function validateYear() 
{

	var regex =/^(198[0-9]|200[0-9]|201[0-9])+$/;
	var year=myform.year.value;
    if(!regex.test(year))
    {
    	//alert("not matching");
       document.getElementById('yearerrfn').innerHTML="this is invalid give numbers only";
       document.getElementById('year').style.border='1px solid red';
       
    }
    else{
    	document.getElementById('yearrrfn').innerHTML="";
    	document.getElementById('year').style.border='1px solid green';
    }
    
}






