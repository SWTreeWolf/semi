var titleNum;

$(document).ready(function(){
	$(document).on('click','[value="수정"]',function(){
		$('#divUpdate').css({'display' : 'block'});
		$('#commentAdd').css({'display' : 'none'});
		var selEle=$(this).parent();
		$('#textCol').val(selEle.children('p:nth-child(1)').text());
		$('#textUpdate').val(selEle.children('p:nth-child(2)').text());
		
	});///////////////////////////////
	$('#btnUpdate').on('click',function(){
		alert(titleNum);
			$.ajax({
				type:'POST',
				dataType:'text',
				url:'commentUpdate',
				data:'col='+$('#textCol').val()+'&content='+$('#textUpdate').val()+'&num='+titleNum,
				success:updateMessage
			});
	});

	$(document).on('click','[value="삭제"]',function(){
		var selEle=$(this).parent();
		$.ajax({
			type:'GET',
			dataType:'text',
			url:'commentDelete?col='+selEle.children('p:nth-child(1)').text()+'&num='+titleNum,
			success:deleteMessage
		});
	});
	$('#btnInput').on('click',function(){
		$.ajax({
			type:'POST',
			dataType:'text',
			url:'commentInput',
			data:'num='+titleNum+'&content='+$('#textInput').val(),
			success:inputMessage
		});
	});////////
	
});//end ready////////////////////////////////////
////////////////////////////////

//댓글 삽입 응답
function inputMessage(res){
	$('#commentList').empty();
	$('#textInput').val('');
	listView(res);
}//end inputMassge

//댓글 삭제 응답
function deleteMessage(res){
	$('#commentList').empty();
	listView(res);
}//end DELETEMASSGE


//댓글 수정 응답
function updateMessage(res){
	$('#commentList').empty();
	listView(res);
	$('#divUpdate').css({'display' : 'none'});
	$('#commentAdd').css({'display' : 'block'});
}

function listView(num){
	titleNum=num;
		$.ajax({
			type:'GET',
			dataType:'json',
			url:'commentList?num='+num,
			success:viewMessage
		});
}////////////////////////////////////////////////

//댓글 리스트 응답
function viewMessage(res){
		for(index in res){
			var div=$('<div></div>');
			$('#commentList').append(div);
			var p1=$('<p>'+res[index].col+'</p>');
			$(div).append(p1);
			var p2=$('<p>'+res[index].content+'</p>');
			$(div).append(p2);
			var inputupdate=$('<input type="button" value="수정"/>');
			$(div).append(inputupdate);
			var inputdelete=$('<input type="button" value="삭제"/>');
			$(div).append(inputdelete);
		}
}//////////////////////////////////////