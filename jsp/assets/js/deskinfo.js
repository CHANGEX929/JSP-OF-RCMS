$(function(){
	$("#payDiv .previous").click(function(){
		$("#payDiv").slideUp();	
		$("#deskInfo").slideDown(500);
	});
	$("#payDiv .next").click(function(){
		var flag=confirm("确定？")
		if(flag){
			$("#payDiv").slideUp();	
			$("#deskInfo").slideDown(500);
		}
	});
	
	
	$("#pay").click(function(){
		
		$("#deskInfo").slideUp();
		$("#payDiv").slideDown(500);	
	});
	$("#selectDishes .previous").click(function(){
		$("#selectDishes").slideUp();	
		$("#deskInfo").slideDown(500);
	});
	$("#selectDishes .next").click(function(){
		var flag=confirm("确定？")
		if(flag){
			$("#selectDishes").slideUp();	
			$("#deskInfo").slideDown(500);
		}
	});
	$("#diancai").click(function(){
		$("#deskInfo").slideUp();
		$("#selectDishes").slideDown(500);	
	});
});