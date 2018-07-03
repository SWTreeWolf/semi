$(document).ready(function(){
	$('#check-submit').on('click',function(){
		$('#room-list').empty();
		$.ajax({
			type:'GET',
			dataType:'json',
			contentType: "application/x-www-form-urlencoded; charset=euc-kr",
			url:'emptyRoomListA.do?dateIn='+$('#dateIn').val()+'&dateOut='+$('#dateOut').val()+'&guests='+$('#guests').val()+'&ajax=ajax',
			success: listMessage,
			error: function(res){
				console.log(res);
			}
		});
		return false;
	});
});

function listMessage(res){
	if(res[0] == null){
		alert('chk');
		$('#room-list').css('display','none');
		$('#no-room-list').css('display','inline-block');
	}else{
		$('#room-list').css('display','inline-block');
		$('#no-room-list').css('display','none');
	}
	for(var i in res){
		var div=$('<div class="room"></div>');
		var img=$('<img class="img" src="../semi_view/images/main_image/bed'+res[i].r_num+'.jpg"/>');
		div.append(img);
		var dtdd=$('<dl><dt>'+res[i].r_name+'</dt><dd>'+res[i].r_contents+'</dd><dd><a href="room.do?r_num='+res[i].r_num+'">객실 상세정보 보러가기</a></dd></dl>'+
				'<div class="reserve-btn"><p>'+res[i].stay+'박\\ '+res[i].r_pay+'원</p>'+
				'<a href="reserveForm.do?guests='+res[i].guests+'&r_num='+res[i].r_num+'&stay='+res[i].stay+
						'&dateIn='+res[i].dateIn+'&dateOut='+res[i].dateOut+'">예약하기</a></div>');
		div.append(dtdd);
		$('#room-list').append(div);
	}
	
}
