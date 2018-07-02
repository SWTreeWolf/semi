 $(document).ready(function () {
    $('#calendar').fullCalendar({
    header: {
    	center: 'title',
    	right:  'prev,next today'
    },
    selectable:true,
    dayClick: function(date, jsEvent, view) {},
    monthNames: ["1월","2월","3월","4월","5월","6월","7월","8월","9월","10월","11월","12월"],
    monthNamesShort: ["1월","2월","3월","4월","5월","6월","7월","8월","9월","10월","11월","12월"],

    events: function (start, end, timezone, callback) {	  

	    $.ajax({
		  url: 'mg_calendarViewA.do',
		  type: 'GET',
		  dataType: 'json',
		  success:function(res){
			  var events=[];
		
			  for(var i in res){		
				  if(res[i].r_num==1){
					  var colorr='#ff8080';
				  }else if(res[i].r_num==2){
					  colorr='#85e085';
				  }else if(res[i].r_num==3){
					  colorr='#66c2ff';
				  }else if(res[i].r_num==4){
					  colorr='#ff9933';
				  }else if(res[i].r_num==5){
					  colorr='#cc99ff';
				  }
				  events.push({title:res[i].p_name+'님 '+res[i].r_num+'번객실 예약',
					  start:new Date(res[i].l_dateInY,Number(res[i].l_dateInM)-1,Number(res[i].l_dateInD)),
					  end:new Date(res[i].l_dateOutY,Number(res[i].l_dateOutM)-1,Number(res[i].l_dateOutD)+1),
					  color:colorr,allDay: true});
			  }
			  callback(events);
		  	},//success
		  	error: function(data){}
	    });//ajax 
    }//events
    });//fullcalendar
    
});////