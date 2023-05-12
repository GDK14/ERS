<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/iframeHeader.jspf"%>


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
<div class="pt-5 pb-5 pr-5 pl-5">

  <label class="label">
    <span class="label-text">구 선택&nbsp;&nbsp;</span>
  </label>
  <select class="select select-bordered">
    <option>전체</option>
    <option>동구</option>
    <option>중구</option>
    <option>서구</option>
    <option>유성구</option>
    <option>대덕구</option>
  </select>
    <canvas id="chart"></canvas>
</div>
<%@ include file="/WEB-INF/views/include/iframeFooter.jspf"%>