<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
     src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">     
$(document).ready(function(){
	google.charts.load('current', {'packages':['bar']});
    google.charts.setOnLoadCallback(drawChart);

 
    function drawChart() {
    	var jsonData = $.ajax({
    		url:'ajax.chart',
    		dataType:'json',
    		
    	}).responseText;
    	
    	
      var data = google.visualization.arrayToDataTable([
        ['Day', 'Sales'],
		['오늘',7000],
		['내일',9000]
      ]);

      var options = {
        chart: {
          title: 'Company Performance',
          subtitle: 'Sales, Expenses, and Profit: 2018-06-17 ~ 2018-06-23',
        },
        bars: 'vertical',
        vAxis: {format: 'decimal'},
        height: 400,
        colors: ['#1b9e77']
      };

      var chart = new google.charts.Bar(document.getElementById('chart_div'));

      chart.draw(data, google.charts.Bar.convertOptions(options));

      var btns = document.getElementById('btn-group');

      btns.onclick = function (e) {

        if (e.target.tagName === 'BUTTON') {
          options.vAxis.format = e.target.id === 'none' ? '' : e.target.id;
          chart.draw(data, google.charts.Bar.convertOptions(options));
        }
      }
    }
});
</script>  
</head>
<body>
       <div id="chart_div"></div>
</body>
</html>
