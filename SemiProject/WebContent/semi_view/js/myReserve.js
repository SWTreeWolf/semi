$(document).ready(
		function() {

			$('#myReserve-search-btn').on(
					'click',
					function() {
						if ($('#myReserve-search-l_tipNum').val() == ''
								|| $('#myReserve-search-p_name').val() == '') {
							alert("예약번호와 이름을 입력해주세요");
							return false;
						}
						$.ajax({
							type : 'GET',
							dataType : 'json',
							url : 'myReserveRequest.do?l_tipNum='
									+ $('#myReserve-search-l_tipNum').val()
									+ '&p_name='
									+ $('#myReserve-search-p_name').val(),
							success : listMessage,
							error : function(res) {
								console.log(res);
							}

						});// end ajax
					});
		});// end jquery

function listMessage(res) {
	if (res == 1) {
		$('#no-reserve').css('display', 'block');
		$('#myReserveTable').css('display', 'none');
		return false;
	}
	$('#no-reserve').css('display', 'none');
	$('#myReserveTable').empty();
	var yes = '미납';
	var reserve = '예약대기';
	if (res.yes == 1) {
		yes = '지불완료';
		reserve = '예약확정';
	}
	var table = $('<table></table>');
	var caption = $('<caption>예약정보</caption>');
	table.append(caption);
	var tableinside = $('<tr><th>예약번호</th><td>' + res.l_tipNum + '</td></tr>'
			+ '<tr><th>객실정보</th><td>No.' + res.r_num + ' ' + res.r_name
			+ '</td></tr>' + '<tr><th>입실일</th><td>' + res.dateIn + '</td></tr>'
			+ '<tr><th>퇴실일</th><td>' + res.dateOut + '</td></tr>'
			+ '<tr><th>예약자명</th><td>' + res.p_name + '</td></tr>'
			+ '<tr><th>생년월일</th><td>' + res.p_birth + '</td></tr>'
			+ '<tr><th>전화번호</th><td>' + res.p_phoneNumber + '</td></tr>'
			+ '<tr><th>E-mail</th><td>' + res.p_email + '</td></tr>'
			+ '<tr><th>주소</th><td>' + res.p_address + '</td></tr>'
			+ '<tr><th>요청사항</th><td>' + res.p_contents + '</td></tr>'
			+ '<tr><th>객실 총 합계</th><td>' + res.r_total + '원</td></tr>'
			+ '<tr><th>지불정보</th><td>' + yes + '</td></tr>'
			+ '<tr><th>예약상태</th><td>' + reserve + '</td></tr>');
	table.append(tableinside);
	$('#myReserveTable').append(table);
	$('#myReserveTable').css('display', 'block');

}// listMessage
