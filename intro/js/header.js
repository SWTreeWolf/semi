$(document).ready(function () {
    //////////////////////////////날짜선택////////////////////////////////	  
    $.datepicker.setDefaults({
        dateFormat: "yy-mm-dd",
        prevText: '이전 달',
        nextText: '다음 달',
        monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'], //월 이름
        monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'], //
        dayNames: ['일', '월', '화', '수', '목', '금', '토'],
        dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
        dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
        yearSuffix: '년'
    });
    $("#dateIn").datepicker({
        changeYear: false,
        onClose: function (selectedDate) {
            $("#dateOut").datepicker('option', 'minDate', selectedDate);
        }
    });
    $("#dateOut").datepicker({
        changeYear: false,
        onClose: function (selectedDate) {
            $("#dateIn").datepicker('option', 'maxDate', selectedDate);
        }
    });


    ////////////////////////////날짜선택/////////////////////////////////////
});
