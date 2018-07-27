$(document).ready(function(){
	$(".update").on("click",function(){
		$('.frm').attr('action','iq_checkForm.do'); 
		$('.frm').submit(); 
	}); 
	
	$(".del").on("click",function(){
		$('.frm').attr('action','iq_deleteForm.do'); 
		$('.frm').submit(); 
	}); 

   var b_num=$('input[name="num"]').val();
   listView(b_num); 
   
   $('.combtn').on('click', function(){
	  $('[name="c_content"]').val($('[name="c_content"]').val().replace(/\n/gi,'<br/>')); 
	   
      $.ajax({
         type:'POST',
         dataType:'text',
         url:'commentAdd.do',
         data:'b_num='+b_num+'&c_content='+$('#wr_content').val()+'&c_writer='+$('#wr_writer').val()+'&c_password='+$('#wr_password').val(),
         success:inputMessage
      });
      return false;
   });// 댓글 작성 
   
   $(document).on('click', '.re_delete', function() {
	      $('#re_wr_content').remove();
	      $('#re_password').parent().remove();
	      var c_num=$(this).attr('value');
	      $(this).parent().prepend('<span value="'+c_num+'"><input id="re_password"'+
	            'type="text"><button id="del_passwordBtn">삭제</button></span>');
	      return false;
   });//댓글 삭제 패스워드 확인폼 
   
   $(document).on('click', '#del_passwordBtn', function() {
      var c_num=$(this).parent().attr('value');
      var re_password=$(this).prev().val();
      deleteReply(b_num,c_num,re_password);
      return false;
   });//댓글 삭제 패스워드 확인
   
   $(document).on('click', '.re_update', function() {
      $('#re_wr_content').remove();
      $('#re_password').parent().remove();
      var c_num=$(this).attr('value');
      var cmDiv=$(this).parent().parent().next();
      
      /*cmDiv.val().val(cmDiv.val().replace(/\n/gi,'<br/>'));*/ 
      
   	  $(this).parent().prepend('<span value="'+c_num+'"><input id="re_password"'+
   	  'type="text"><button id="up_passwordBtn">수정</button></span>');
      
      var textArea=$('<textarea id="re_wr_content" name="re_c_content" rows="8" itemname="내용" required="" '+
       'style="width: 99%; word-break: break-all; background-image: url(../semi_view/images/wrest.gif);'+
              'background-position: right top; background-repeat: no-repeat; font-size: 12px;">'+
      cmDiv.text()+'</textarea>');
      cmDiv.append(textArea);
      return false;
   });//답변글 버튼
   
   $(document).on('click', '#up_passwordBtn', function() {
      var c_num=$(this).parent().attr('value');
      var re_password=$(this).prev().val();
      var re_c_content=$('#re_wr_content').val();
      updateReply(b_num,c_num,re_c_content,re_password);
      return false;
   });
});//end document

function updateReply(b_num,c_num,re_c_content,re_password){
    $.ajax({
        type:'POST',
        dataType:'text',
        url:'commentUpdate.do',
        data:"b_num="+b_num+"&c_num="+c_num+"&re_c_content="+re_c_content+"&re_password="+re_password,
        success:listView
     });
}//end updateReplay

function deleteReply(b_num,c_num,re_password){
    $.ajax({
         type:'POST',
         dataType:'text',
         url:'commentDelete.do',
         data:"b_num="+b_num+"&c_num="+c_num+"&re_password="+re_password,
         success:listView
      });
}//end deleteReply

function inputMessage(res){
   var b_num=res;
   $('#wr_content').val('');
   $('#wr_writer').val('');
   $('#wr_password').val('');
   listView(b_num);
}//end inputMessage

function listView(b_num){
   if(b_num==-2){
      alert("비밀번호를 확인해주세요");
      return false;
   }
   $.ajax({
      type:'GET',
      dataType:'text',
      url:'commentList.do?b_num='+b_num,
      success:viewMessage,
      error:function(res){
         console.log(res);
      }
   });
}

function viewMessage(res){
   var ress=eval(res);
   var cc=$('#commentContents');
   cc.empty();
   for(index in ress){
      var table = ('<table width="100%" cellpadding="0" cellspacing="0" border="0">'+'<tbody>'+'<tr>'+'<td height="1" colspan="3" bgcolor="#dddddd"></td><td></td></tr>'+
            '<tr><td height="1" colspan="3"></td></tr>'
            +'<tr><td valign="top">'+'<div style="height: 28px; background: url(../semi_view/images/co_title_bg.gif); clear: both; line-height: 28px; font-size:12px;">'
            +'<div style="float; left; margin; 2px 0px 20px; font-size:12px;">'
            +'<strong><span class="guest">'+ress[index].writer+'</span></strong>'
            +'&nbsp<span style="color: #888888; font-size: 11px;" >'+ress[index].rdate+'</span>'
            +'</div>'
            +'<div style="float:right; margin-top: 5px;font-size:12px;">'
            +'<a class="re_update" href="" value="'+ress[index].c_num+'"><img src="../semi_view/images/co_btn_reply.gif" border="0" align="absmiddle" alt="수정"></a>'
            +'<a class="re_delete" href="" value="'+ress[index].c_num+'"><img src="../semi_view/images/co_btn_delete.gif" border="0" align="absmiddle" alt="삭제"></a>'
            +'</div>'
            +'</div>'
            +'<div style="line-height: 20px; padding: 7px; word-break; break-all; overflow: hidden; clear: both; font-size: 12px;">'+ress[index].content
            +'</div>'
            +'<span id="editer" style="display: none;">'+'</span>'
            +'<span id="reply" style="display: none;">'+'</span>'
            +'<input type="hidden" id="comment" value>'
            +'<textarea id="comment" style="display: none;">'+'비밀글'+'</textarea>'
            +'</td>'+'</tr>'+'</tbody>'+'</table>');
      cc.append(table);
   }
}







   