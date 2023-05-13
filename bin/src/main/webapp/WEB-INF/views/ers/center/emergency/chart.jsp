<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/iframeHeader.jspf"%>

<link href="https://cdn.jsdelivr.net/npm/daisyui@2.51.6/dist/full.css" rel="stylesheet" type="text/css" />
<script src="https://cdn.tailwindcss.com"></script>
<!-- chart.js -->
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.3/dist/Chart.min.js"></script>
 <script type="text/javascript"> 
        var barChartData = {        
            labels: ["1월", "2월", "3월", "4월", "5월", "6월","7월","8월","9월","10월","11월","12월"],
            datasets: [{
                label: '화재발생',
                backgroundColor: "#FF3B30",
                data: [
                    22,
                     48,
                    Math.random()*100,
                    Math.random()*100,
                    Math.random()*100,
                    Math.random()*100,
                    Math.random()*100,
                    Math.random()*100,
                    Math.random()*100,
                    Math.random()*100,
                    Math.random()*100,
                    Math.random()*100

               ]
            
            }, {
                label: '응급호출',
                backgroundColor: "#4CD964",
                data: [
                    Math.random()*100,
                    Math.random()*100,
                    Math.random()*100,
                    Math.random()*100,
                    Math.random()*100,
                    Math.random()*100,
                    Math.random()*100,
                    Math.random()*100,
                    Math.random()*100,
                    Math.random()*100,
                    Math.random()*100,
                    Math.random()*100
                ]
            }, {
                label: '119',
                backgroundColor: "#FFC041",
                data: [
                    Math.random()*100,
                    Math.random()*100,
                    Math.random()*100,
                    Math.random()*100,
                    Math.random()*100,
                    Math.random()*100,
                    Math.random()*100,
                    Math.random()*100,
                    Math.random()*100,
                    Math.random()*100,
                    Math.random()*100,
                    Math.random()*100
                ]
            }]
        };
        
        window.onload = function() {
            var ctx = $('#chart').get(0).getContext("2d"); 
            window.theChart = new Chart(ctx, {
                type: 'bar',
                data: barChartData,
                options: {}
            });
        }
    </script>
   
<div class="pt-2 pb-2 pr-5 pl-5">

	<div class="flex ...">
		<div class="h-16 ... mt-3" style="flex: 0.48 0 1%">
		  <i class="fa-regular fa-bell dashboard_icon flex text-lg	  ">
			<p class="pl-2 text-lg	" style="font-weight: bold;'">
			지역별 응급발생
			</p>	
		  </i>
		</div>
		<div class="shrink-1 w-18 ... mt-3"  >
			<div class="btn-group">
			  <button class="btn btn-active bg-white">월별</button>
			  <button class="btn">주별</button>
			  <button class="btn">일별</button>
			</div>
		</div>
	</div>
	




<div class="btm-nav">
  <a href="javascript:goPage('/emergency/chart')" class="nav-link active">
    <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 19v-6a2 2 0 00-2-2H5a2 2 0 00-2 2v6a2 2 0 002 2h2a2 2 0 002-2zm0 0V9a2 2 0 012-2h2a2 2 0 012 2v10m-6 0a2 2 0 002 2h2a2 2 0 002-2m0 0V5a2 2 0 012-2h2a2 2 0 012 2v14a2 2 0 01-2 2h-2a2 2 0 01-2-2z" />
    </svg>
  </a>
 
  <a href="javascript:goPage('/emergency/list')" class="nav-link ">
    <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h7"></path>
    </svg>
  </a>
</div>



<select class="border-2 border-black">
    <option>전체</option>
    <option>동구</option>
    <option>중구</option>
    <option>서구</option>
    <option>유성구</option>
    <option>대덕구</option>
</select>
	<!-- 그래프 -->
	
<!--     
	<div class="text-end">→&nbsp;&nbsp;<a class="link">리스트 바로가기</a></div> 
-->
    <canvas id="chart" style="max-width: 1550px; max-height: 700px;"></canvas>
    
</div>
<script>
  function goPage(url) {
    window.location.href = url;
  }
</script>

<%@ include file="/WEB-INF/views/include/iframeFooter.jspf"%>