$(document).ready(function(){

				/*터치 슬라이드 비주얼 영역*/
	var mySwipe=$('#mySwipe').Swipe({
		auto:3000,//3초 간격으로 베너 이동
		continuous:true,//반복해서 롤링
		callback:function(index,element){
			$('.touch_bullet .active').attr('src',
					$('.touch_bullet .active').attr('src')
					.replace('on.png','off.png'))
					.removeClass('active');
			
			$('.touch_bullet img').eq(index).attr('src',
					$('.touch_bullet img').eq(index).attr('src')
					.replace('off.png','on.png'))
					.addClass('active');
		}
	}).data('Swipe');
	//////////////////////////////////////
	$('.touch_left_btn a').on('click',function(){
		mySwipe.prev();
		return false;
	});
	$('.touch_right_btn a').on('click',function(){
		mySwipe.next();
		return false;
	});
	/*알림판 롤링 버튼 배너*/
	// 첫 번째 배너를 제외하고 숨김
	$('#roll_banner_wrap dd').not(':first').hide();
	
	// 첫 번째 버튼의 <a>를 저장 
	var onBtn =$('#roll_banner_wrap dt a:first');
		
	//버튼 1~4 클릭을 하면 반응
	$('#roll_banner_wrap dt a').on('click',function(){
		//노출되어있는 배너를 숨김
		$('#roll_banner_wrap dd:visible').hide();
		
		$('img',onBtn).attr('src',$('img',onBtn).attr('src')
					.replace('over.gif','out.gif'));
		
		$(this).parent().next().show();
		
		$('img',this).attr('src',$('img',this).attr('src')
					.replace('out.gif','over.gif'));
		
		onBtn=$(this);
		
		return false;
	});/////////////////////////////////
	
	var btnNum=0;
	
	function autoPlay(){
		btnNum++;
		if(btnNum==4)
			btnNum=0;
		
		$('#roll_banner_wrap dt a').eq(btnNum).trigger('click');
		//$('#roll_banner_wrap dt a').eq(btnNum).click();
		auto1=setTimeout(autoPlay,4000);
	}////////////////////////////
	
	
	//최초 로딩시 3초 후에 autoPlay()호출
	var auto1=setTimeout(autoPlay,3000);
	
	//스톱에서 클릭 이벤트 발생
	$('.stopBtn').on('click',function(){
		
		//auto1에 할당된 setTimeout()을 제거
		clearTimeout(auto1);
		
		// 재생 버튼에 "src"속성을 비활성화된 버튼 이미지로 바꿈
		$('.playBtn img').attr("src",$('.playBtn img').attr("src").replace("on.gif","off.gif"));
		
		// 스톱 버튼에 "src"속성을 활성화된 버튼 이미지로 바꿈
		$('img',this).attr('src',$("img",this).attr("src").replace("off.gif","on.gif"));
		
		return false;
	});////////////////////////////////////////////
	
	$('.playBtn').on('click',function(){
		//auto1에 할당된 setTimeout을 제거
		clearTimeout(auto1);
		
		//1초후 autoPlay 함수를 실행
		auto1 = setTimeout(autoPlay,1000);
		
		//스톱 버튼에 "src"속성을 비활성화된 버튼이미지로 바꿈
		$('.stopBtn img').attr("src",$('.stopBtn img').attr("src").replace("on.gif","off.gif"));
		
		//재생버튼에 "src"속성을 활성화된 버튼 이미지로 바꿈
		$('img',this).attr('src',$("img",this).attr("src").replace("off.gif","on.gif"));
		
		return false;
	});/////////////////////////////////////////
	
	/*탭메뉴*/
	var onTab=$('#tabmenu dt a:first');
	
	$('#tabmenu dt a').on('mouseover focus',function(){
		$('#tabmenu dd:visible').hide();
		
		$(this).parent().next().show();
		
		//onTab에 할당된 요소의 하위<img>에"src"속성을 비활성화 버튼 이미지로 바꿈 
		$('img',onTab).attr('src',$('img',onTab).attr('src').replace('over.gif','out.gif'));
		
		//클릭한 <a>에 하위 버튼 이미지를 활성화된 이미지로 바꿈
		$('img',this).attr('src',$('img',this).attr('src').replace('out.gif','over.gif'));
		
		onTab=$(this);
		
		return false;
	});/////////////////////////////////////////
	
	/*더보기*/
	$('#tabmenu dd p').on('click',function(){
		var chkP=$('#tabmenu dd p').index(this);
		if(chkP==0)
				window.open('first.html');
		else if(chkP==1)
			window.open('second.html');
		else if(chkP==2)
			window.open('third.html');
	});//////////////////////////////////////////
	
	/*베스트북 슬라이더*/
	var mySlider = $("#best_bg ul").bxSlider({
		mode:"horizontal",
		speed:500,
		moveSlides:1,
		slideWidth:125,
		minSlides:5,
		maxSlides:5,
		slideMargin:30,
		auto:true,
		autoHover:true,
		controls:false,
		pager:false
	});//////////////////////
	
	//슬라이더 왼쪽 버튼
	$(".prev_btn").on("click",function(){
		mySlider.goToPrevSlide();
		return false;
	});/////////////////////
	
	//슬라이더 오른쪽 버튼
	$(".next_btn").on("click",function(){
		mySlider.goToNextSlide();
		return false;
	});/////////////////////////////
	
	//팝업 연동
	//cookie는 클라이언트 정보를 클라이언트에 저장하는것
	//세션은  클라이언트 정보를 서버에 저장하는것
	if($.cookie('pop')!='no'){
		$('#pop_wrap').show();
	}
	
	$('#pop_wrap').css({'cursor':'move'}).draggable();
	
	//창닫기
	$('#pop_wrap area:eq(0)').on('click',function(){
		$('#pop_wrap').fadeOut('fast');
		return false;
	});////////////////////////////////////////
	
	//하루동안 창닫기
	$('#pop_wrap area:eq(0)').on('click',function(){
			$.cookie('pop','no',{expires:1});
			$('#pop_wrap').fadeOut('fast');
			return false;
	});	
});
