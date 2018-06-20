$(document).ready(function(){
	
	$('#btn').on('click',process);
	
});


function process(){

	$.ajax({
		type:'GET',
		datatype:'json',
		url:"empList2?chk=1&data="+$('#data').val(),
		success:viewMessage
	});

	//$.getJSON('empList2',viewMessage);
	
}

function viewMessage(res){
	//var json=$.parseJSON('${obj}');
	
	$('#wrap table tr:gt(0)').remove(); //제목빼고 다 삭제
/*	var son = eval(res);*/
	for(var i=0;i<res.length;i++){
		var koko=$('<tr><td>'+res[i].employee_id+'</td><td>'+res[i].first_name+'</td><td>'+res[i].salary+'</td></tr>');
		$('#wrap table').append(koko);
	}
/*	var tr=$('<tr><td>'+res)
	for(var i=0;i<son.length;i++){ 
		koko+="<tr><td>"+son[i].employee_id+"</td></tr>"+"<tr><td>"+son[i].first_name+"</td></tr>";
		$('#wrap table').append(koko);
	}*/
	
	
}

