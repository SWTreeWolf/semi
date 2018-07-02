$(document).ready(function() {
	listView(1); // 리스트 나타내기
	// 검색하기
	$('#reserveListSearchBtn').on('click', function() {
		var searchName = $('#reserveListSearch').val();
		var thisP = 1;
		searchView(thisP, searchName);
	});

	// 입금확인
	$(document).on('click', '#payCheck', function() {
		var l_num = $(this).val();
		var thisP = $('#thisP').text();
		$.ajax({
			type : 'POST',
			dataType : 'text',
			url : 'mg_payCheck.do?l_num=' + l_num,
			success : listView(thisP)
		});
		return false;
	}); // ///////////////////////////////////////////////

	// 예약삭제
	$('#cancelForm').on('submit', function() {
		if ($('.reserveListChk:checked').val() == null) {
			alert("삭제할 데이터를 선택해주세요");
			return false;
		}
		$(this).submit();

	});

	$(document).on('click', '.pageLink', function() {
		var thisP = $(this).text();
		listView(thisP);
		return false;
	});
	$(document).on('click', '.searchLink', function() {
		var thisP = $(this).text();
		var searchName = $('#reserveListSearch').val();
		searchView(thisP, searchName);
		return false;
	});
});// end documnet

function searchView(thisP, searchName) {

	$.ajax({
		type : 'GET',
		dataType : 'json',
		url : 'mg_reserveSearch.do?searchName=' + searchName + "&thisP="
				+ thisP,
		success : viewMessage
	});

}

function listView(thisP) {

	var reserveUrl = 'mg_reserveView.do?thisP=' + thisP;
	$.ajax({
		type : 'GET',
		dataType : 'json',
		url : reserveUrl,
		success : viewMessage
	});
}// listView end

function viewMessage(res) {
	$('#reserve-list-table').empty();
	$('#reserveListpage').empty();
	var table = $('<table id="reserveListTable"></table>');
	var th = $('<tr><th>선택</th><th>예약순번</th><th>예약번호</th><th>예약자명</th><th>객실번호</th><th>결제여부</th><th></th></tr>');
	table.append(th);
	var objlist = res.objlist;
	for (index in objlist) {
		var yess = '<td>결제대기</td><td><button id="payCheck" value='
				+ objlist[index].l_num + ' class="pay" style="margin-bottom:0px">입금확인</button></td>';
		if (objlist[index].yes == 1) {
			yess = '<td>결제완료</td><td></td>';
		}
		var inside = $('<tr><td><input class="reserveListChk" type="checkbox" name="reserveListChk" value="'
				+ objlist[index].l_tipNum
				+ '"/></td>'
				+ '<td>'
				+ objlist[index].l_num
				+ '</td><td>'
				+ objlist[index].l_tipNum
				+ '</td>'
				+ '<td><a style="color: black" href="mg_reserveListView.do?l_tipNum='
				+ objlist[index].l_tipNum
				+ '">'
				+ objlist[index].p_name
				+ '님의 예약</a></td><td>'
				+ objlist[index].r_num
				+ '</td>'
				+ yess
				+ '</tr>');
		table.append(inside);
	}
	var rvpdto = res.rvpdto;
	for (var i = rvpdto.blockF; i <= rvpdto.blockL; i++) {
		var pageClass = 'pageLink';
		if (res.listType == 'search') {
			pageClass = 'searchLink';
		}
		if (i != rvpdto.thisP) {
			var pageLink = '<a class="' + pageClass + '" href="" value="' + i
					+ '">' + i + '</a>';
		} else {
			var pageLink = '<a id="thisP" class="' + pageClass
					+ '" href="" style="text-decoration:none">' + i + '</a>';
		}

		$('#reserveListpage').append(pageLink);
	}

	$('#reserve-list-table').append(table);

}// viewMessage end
