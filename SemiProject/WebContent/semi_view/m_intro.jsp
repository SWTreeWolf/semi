<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html>

    <head>
    <meta charset="UTF-8">
    <title>intro</title>
    <link rel="stylesheet" href="../semi_view/css/reset.css">
    <link rel="stylesheet" href="../semi_view/css/intro_common.css">
    <link rel="stylesheet" href="../semi_view/css/jquery.bxslider.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="../semi_view/js/jquery.bxslider.js"></script>
    <script src="../semi_view/js/intro_js.js">
    </script>
    <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA2wV7V-mah5FhOeVAsPthFITqOgZGdUDM&callback=initMap">
    </script>
</head>

<body>
    <!--header 시작-->
    <header id="header">
        <a href="main.do" class="btn_menu"> <img
			src="../semi_view/../semi_view/images/index_image/menu_icon.png">
		</a>
        <p class="pension">pension</p>
    </header>
    <!-- intro 시작 -->
    <section class="intro">
        <div class="intro_wrap">
            <div class="txt_wrap">
                <div class="d_t">
                    <div class="d_c">
                        <p class="txt01">숲이 보이고 바다가 들리는 펜션</p>
                        <p class="obj02">
                            <a href="#"> <img
								src="../semi_view/images/index_image/btn_intro_arrow.png" alt="">
							</a>
                        </p>
                    </div>
                </div>
            </div>
            <div class="av_wrap">
                <video autoplay loop muted id="av">
					<source src="../semi_view/images/index_image/video/pension.mp4" type="video/mp4">
				</video>
            </div>
        </div>
    </section>
    <!--content 시작-->
    <section class="content" id="container">
        <div class="produce_01">
            <div class="bg_wrap"></div>
            <div class="txt_wrap">
                <p class="txt01">첫 번째 객실</p>
                <p class="txt02">바로 앞에 호수가 보이며</p>
                <p class="txt03">아름다운 풍경을 느낄수 있습니다</p>
            </div>
        </div>

        <div class="produce_02">
            <div class="bg_wrap"></div>
            <div class="txt_wrap">
                <p class="txt01">두 번째 객실</p>
                <p class="txt02">남향집 구조로</p>
                <p class="txt03">풍수지리에 좋습니다</p>
            </div>
        </div>

        <div class="produce_03">
            <div class="bg_wrap"></div>
            <div class="txt_wrap">
                <p class="txt01">세 번째 객실</p>
                <p class="txt02">모던한 분위기의 방으로서</p>
                <p class="txt03">아늑하게 지내 실 수 있습니다</p>
            </div>
        </div>

        <div class="diameter">
            <div class="diameter_bxslider">
                <div>
                    <img src="../semi_view/images/index_image/diameter_01.jpg" title="죽녹원">
                </div>
                <div>
                    <img src="../semi_view/images/index_image/diameter_02.jpg" title="보타니아">
                </div>
                <div>
                    <img src="../semi_view/images/index_image/diameter_03.jpg" title="대천해수욕장">
                </div>
            </div>
            <div class="txtwrap_01">
                <h1>죽녹원</h1>
                <p>죽녹원은 2003년 5월에 조성하여 약 31만㎡의 공간에 울창한 대나무숲과 가사문학의 산실인 담양의 정자문화 등을 볼 수 있는 시가문화촌으로 구성되어 있습니다. 죽녹원은 전망대, 쉼터, 정자, 다양한 조형물을 비롯 영화·CF촬영지와 다양한 생태문화관광 시설을 갖추고 있으며 가족, 연인, 친구, 수학여행 등 연간 관광객 130만명이 찾는 대한민국 최고의 관광명소로 자리잡고 있습니다.</p>
            </div>
            <div class="txtwrap_02">
                <h1>보타니아</h1>
                <p>외도 보타니아는 거제도에 인접해 있는 60여 개 섬 중의 하나로 거제도와 4km 정도 떨어져 있습니다. 섬이라는 지리적 여건에도 불구하고 물이 풍부하고 기후가 온난하며, 강우량이 많아서 여러 가지 난대 및 열대성 식물이 자라기 쉽고, 푸르고 맑은 바다에 둘러싸여 있는 데다가 거제도, 해금강, 홍도, 대마도 등을 관망할 수 있는 전망이 그 아름다움을 더해 주는 곳입니다.</p>
            </div>
            <div class="txtwrap_03">
                <h1>대천해수욕장</h1>
                <p>대천해수욕장의 모래질은 동양에서 유일한 패각분으로 조개 껍질이 오랜 세월을 지나는 동안 잘게 부서져 모래로 변모한 것입니다. 규사로 된 백사장이 몸에 달라붙는 점에 비해 패각분은 부드러우면서 물에 잘 씻기는 장점을 갖고 있습니다. 그리고 대천해수욕장은 바다 밑이 완만하고 일정하며, 백사장은 이물질이 섞여있지 않은 청결함을 지니고 있습니다. 얕은 수심과 함께 파도가 거칠지 않아 아이에서 노인에 이르기까지 가족 동반의 해수욕을 즐기기엔 천혜의 장소입니다.</p>
            </div>
            <div class="prev">
                <a class="prev_btn" href="#"> <img
					src="../semi_view/images/index_image/prev_btn.png"></a>
            </div>
            <div class="next">
                <a class="next_btn" href="#"><img
					src="../semi_view/images/index_image/next_btn.png"></a>
            </div>
        </div>

        <div class="directions">
            <div id="map"></div>
        </div>
    </section>

    <footer id="footer">
        <h2>확인용입니다.</h2>
        <address>
			<span>Lorem ipsum dolor sit amet</span> <span>Lorem ipsum
				dolor sit amet consectetuer adipiscing elit. Aenean </span> <span>Copyright
				(c) 2018 inthehome Inc. All rights reserved.</span>
		</address>

        <div class="footer_center">
            <div class="question">
                <p class="question_title">관련문의</p>
                <p class="question_txt">000-0000-0000</p>
            </div>
        </div>
    </footer>

    <p id="btn_top_scroll">
        <a href="#"> <img src="../semi_view/images/index_image/btn_top.png">
		</a>
    </p>

</body>

    </html>
