$(document).ready(function () {
    $('#btn_top_scroll').on('click', function () {
        $('html, body').animate({
            scrollTop: 0
        }, 400);
        return false;
    });

    $('.diameter_bxslider').bxSlider({
        auto: true,
        cation: true,
        mode: 'fade',
        captions: true,
        slideWidth: 2000
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
