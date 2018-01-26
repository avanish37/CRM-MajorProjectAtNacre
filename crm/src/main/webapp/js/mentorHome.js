$(document).ready(function(){
	//alert("home");
	getBatchDetails();
	
});

function getBatchDetails(){
	var mentorId =("#mentorId").val();
	$.ajax({type: "POST",
	    url: "./getMentorBatch",
	    data: {'mentorId':mentorId},
	    success: function(msg){
	    	
	    	
	    }
	
});
}