$(document).ready(function() {
	// 움직이는거
	$('html, body').animate({
		scrollTop : 165
	}, 600);

	$('#reserve1V').on('click', function() {
		$('html, body').animate({
			scrollTop : 1000
		}, 600);
		return false;
	});
	$('#reserve2V').on('click', function() {
		$('html, body').animate({
			scrollTop : 1900
		}, 600);
		return false;
	});
	// //

	// 카드랑 무통장입금 나오는거
	$('.radio').on('change', function() {
		if ($(this).val() == 'banking') {
			$('#bankPay').slideDown();
			$('#cardPay').slideUp();
			$('input[placeholder="카드회사이름"]').removeAttr('required');
			$('input[placeholder="카드번호"]').removeAttr('required');
			$('input[placeholder="MM/YY"]').removeAttr('required');
			$('input[placeholder="예금주"]').prop('required', 'required');
		}
		if ($(this).val() == 'card') {
			$('#cardPay').slideDown();
			$('#bankPay').slideUp();
			$('input[placeholder="예금주"]').removeAttr('required');
			$('input[placeholder="카드번호"]').prop('required', 'required');
			$('input[placeholder="MM/YY"]').prop('required', 'required');
			$('input[placeholder="카드회사이름"]').prop('required', 'required');
		}

	});
	// ///
});