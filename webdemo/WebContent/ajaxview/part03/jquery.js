$(document).ready(function(){
	$('#btn').on('click',process)
});

function process(){
	$.ajax({
		type:'POST',
		dataType:'text',
		data:'id='+$('#id').val()+'&pass='+$('#pass').val(),
		url:'loginProcess',
		success:function(res){
			$('div').html(res);
		}
	});
}