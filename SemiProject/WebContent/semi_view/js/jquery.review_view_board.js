var titleNum;
$(document).ready(function(){
	$("#list").on('click',function(){
		$('form').attr('action','review_board.do');
		$('form').submit();
	});
	
	$("#modify").on('click',function(){
		$('form').attr('action','update_board.do');
		$('form').submit();
	});
	
	$("#del").on('click',function(){
		$('form').attr('action','delete_board.do');
		$('form').submit();
	});
	$('#write_comment').on('click', function(){
		$.ajax({
			type:'POST',
			dataType:'text',
			url:'commentInput',
			data:'num='+titleNum+'&content='+$('#wr_content').val()+'&id='+$('#wr_name').val()+'&password='+$('#wr_password').val(),
			success:inputMessage
		})
		return false;
	});
	
	$(document).on('click','[value="삭제"]',function(){
		var selEle=$(this).parents("table");
		var selEle2=$(this).parent().next().text();
		$.ajax({
			type:'GET',
			dataType:'text',
			url:'commentDelete?col='+selEle2 +'&num='+titleNum,
			success:deleteMessage
		})
		alert('done');
		return false;
	})
	
});

function inputMessage(res){
	$('#commentContents').empty();
	$('#wr_content').val('');
	listView(res);
}

function deleteMessage(res){
	$('#commentContents').empty();
	listView(res);
}
function listView(num){
	titleNum=num;
	$.ajax({
		type:'GET',
		dataType:'json',
		url:'commentList?num='+num,
		success:viewMessage
	});
}

function viewMessage(res){
	for(index in res){
		var divA=$('<div></div>');
		var table = ('<table width="100%" cellpadding="0" cellspacing="0" border="0">'+'<tbody>'+'<tr>'+'<td height="1" colspan="3" bgcolor="#dddddd">'+'</td>'+'<td>'+'</td>'+'</tr>'+
				'<tr>'+'<td height="1" colspan="3">'+'</td>'+'</tr>'
				+'<tr>'+'<td valign="top">'+'<div style="height: 28px; background: url(../merge/images/co_title_bg.gif); clear: both; line-height: 28px; font-size:12px;">'
				+'<div style="float; left; margin; 2px 0px 20x; font-size:12px;">'
				+'<strong>'+'<span>'+res[index].col+'</span>'+'&nbsp;'+'<span class="guest">'+res[index].id+'</span>'+'</strong>'
				+'&nbsp'+'<span style="color: #888888; font-size: 11px;">'+res[index].reg_date+'</span>'
				+'</div>'
				+'<div style="float:right; margin-top: 5px;font-size:12px;">'
				+'<a href="*">'+'<img src="../semi_view/images/co_btn_delete.gif" border="0" align="absmiddle" value="삭제">'+'</a>'
				+'</div>'
				+'</div>'
				+'<div style="line-height: 20px; padding: 7px; word-break; break-all; overflow: hidden; clear: both; font-size: 12px; display:inline-block">'+res[index].content
				+'</div>'
				+'<span id="editer" style="display: none;">'+'</span>'
				+'<span id="reply" style="display: none;">'+'</span>'
				+'<textarea id="comment" style="display: none;">'+'비밀글'+'</textarea>'
				+'</td>'+'</tr>'+'</tbody>'+'</table>');
		$('#commentContents').append(divA);
		$(divA).append(table);
	}
}
