$(document).ready(function(){
	$('#btn').on('click',process);
});///////////////////////

function process(){
	$.ajax({
		type:'GET', //type : default값은 GET방식
		dataType:'text',
		url:'customer?name='+$('#name').val(),
		success:function(res){
			$('div').html(res);
		} 
	});
}////////////////////////