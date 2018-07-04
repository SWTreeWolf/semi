$(document).ready(function () {
    var height = $('.intro').outerHeight();

    $(window).scroll(function () {
        var win_height = $(this).scrollTop();
        if (win_height >= height) {
            $('.produce_01 .txt_wrap').fadeIn(500);
        }
        if (win_height >= height * 2 - 200) {
            $('.produce_02 .txt_wrap').fadeIn(500);
        }
        if (win_height >= height * 3 - 300) {
            $('.produce_03 .txt_wrap').fadeIn(500);
        }
    });

    $('#btn_top_scroll').on('click', function () {
        $('html, body').animate({
            scrollTop: 0
        }, 400);
        return false;
    });

    $('.obj01').on('click', function () {
        return false;
    });

    $('.obj02').on('click', function () {
        $('html, body').animate({
            scrollTop: $('.intro').outerHeight()
        }, 600);
        return false;
    });

    var swiper = new Swiper('.swiper-container', {
        slidesPerView: 1,
        spaceBetween: 30,
        loop: true,
        autoplay:{
        	delay: 3000
        },
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
        }
    });

    $('#map').initMap;
});

function initMap() {
    var uluru = {
        lat: -22.363,
        lng: 80.044
    };
    var map = new google.maps.Map(document.getElementById('map'), {
        zoom: 4,
        center: uluru
    });
    var marker = new google.maps.Marker({
        position: uluru,
        map: map
    });
}
