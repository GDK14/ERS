<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jspf"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="https://cdn.jsdelivr.net/npm/daisyui@2.51.6/dist/full.css" rel="stylesheet" type="text/css" />
<script src="https://cdn.tailwindcss.com"></script>
<style>

</style>
<div class="pt-2 pb-2 pr-5 pl-5">

	<div class="flex ...">
		<div class="h-16 ... mt-3" style="flex: 0.48 0 1%">
		  <i class="fa-regular fa-bell dashboard_icon flex text-lg	  ">
			<p class="pl-2 text-lg	" style="font-weight: bold;'">
			응급발생목록
			</p>	
		  </i>
		</div>
	</div>
<div class="flex ...">
	<div class="grow ..." >
		<div class="board_header" style="margin-top: 10px;">
			<div class="search_result m-0" style="float: left;">
				<p class="m-0">
					[총 응급발생 건수 &nbsp;:&nbsp; <em>${pageMaker.totalCount }9</em>건]
				</p>
			</div>
		</div>
	</div>
	<div class="shrink-1 ..."  >
		<label>시작일</label>&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;<label>종료일</label>
		<form>
		   <input type='date' id='StartDate' class="border-2 border-black mb-2 pl-2" style="width: 130px;"/>&ensp;&ensp;
           <input  type="date" id="EedDate" name="SearchEnd" class="border-2 border-black mb-2 pl-2" style="width: 130px;"/>
		</form>
	</div>
</div>


<div class="overflow-x-auto">
  <table class="table table-compact w-full">
    <colgroup>	
      <col width="20"/>
      <col width="100"/>
      <col width="70"/>
      <col width="200"/>
      <col width="200"/>
      <col width="200"/>
      <col width="auto"/>
      <col width="100"/>
      <col/>
    </colgroup>
    <thead>
      <tr class="text-center">
        <th></th> 
        <th>대상자 구분</th> 
        <th>이름</th> 
        <th>접수 센터</th> 
        <th>담당 수행기관</th> 
        <th>사건분류</th> 
        <th>사건 발생 시간</th>
        <th>처리상태</th>
      </tr>
    </thead> 
    <tbody class="text-center" style="font-size: 9px;">
      <tr >
        <th>1</th> 
        <td>독거노인</td> 
        <td>김형민</td>
        <td>서구관제센터</td> 
        <td>둔산1동 수행처</td> 
        <td>119</td> 
        <td>2023-04-06 11:11</td> 
        <td>처리</td>
      </tr>
      <tr >
        <th>2</th> 
        <td>독거노인</td> 
        <td>김형민</td>
        <td>서구관제센터</td> 
        <td>둔산1동 수행처</td> 
        <td>119</td> 
        <td>2023-04-06 11:11</td> 
        <td>처리</td>
      </tr>
      <tr >
        <th>3</th> 
        <td>독거노인</td> 
        <td>김형민</td>
        <td>서구관제센터</td> 
        <td>둔산1동 수행처</td> 
        <td>119</td> 
        <td>2023-04-06 11:11</td> 
        <td>처리</td>
      </tr>
      <tr >
        <th>4</th> 
        <td>독거노인</td> 
        <td>김형민</td>
        <td>서구관제센터</td> 
        <td>둔산1동 수행처</td> 
        <td>119</td> 
        <td>2023-04-06 11:11</td> 
        <td>처리</td>
      </tr>
      <tr >
        <th>5</th> 
        <td>독거노인</td> 
        <td>김형민</td>
        <td>서구관제센터</td> 
        <td>둔산1동 수행처</td> 
        <td>119</td> 
        <td>2023-04-06 11:11</td> 
        <td>처리</td>
      </tr>
      <tr >
        <th>6</th> 
        <td>독거노인</td> 
        <td>김형민</td>
        <td>서구관제센터</td> 
        <td>둔산1동 수행처</td> 
        <td>119</td> 
        <td>2023-04-06 11:11</td> 
        <td>처리</td>
      </tr>
      <tr >
        <th>7</th> 
        <td>독거노인</td> 
        <td>김형민</td>
        <td>서구관제센터</td> 
        <td>둔산1동 수행처</td> 
        <td>119</td> 
        <td>2023-04-06 11:11</td> 
        <td>처리</td>
      </tr>
      <tr >
        <th>8</th> 
        <td>독거노인</td> 
        <td>김형민</td>
        <td>서구관제센터</td> 
        <td>둔산1동 수행처</td> 
        <td>119</td> 
        <td>2023-04-06 11:11</td> 
        <td>처리</td>
      </tr>
      <tr >
        <th>9</th> 
        <td>독거노인</td> 
        <td>김형민</td>
        <td>서구관제센터</td> 
        <td>둔산1동 수행처</td> 
        <td>119</td> 
        <td>2023-04-06 11:11</td> 
        <td>처리</td>
      </tr>

      
    </tbody> 
  </table>
</div>





<div class="btm-nav">
  <a href="chart" class="nav-link">
    <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 19v-6a2 2 0 00-2-2H5a2 2 0 00-2 2v6a2 2 0 002 2h2a2 2 0 002-2zm0 0V9a2 2 0 012-2h2a2 2 0 012 2v10m-6 0a2 2 0 002 2h2a2 2 0 002-2m0 0V5a2 2 0 012-2h2a2 2 0 012 2v14a2 2 0 01-2 2h-2a2 2 0 01-2-2z" />
    </svg>
  </a>
 
  <a href="list" class="nav-link active">
    <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h7"></path>
    </svg>
  </a>
</div>


</div>


<!-- pagination -->
<form id="jobForm">	
	<input type='hidden' name="page" value=""/>
	<input type='hidden' name="perPageNum" value=""/>
	<input type='hidden' name="searchType" value="" />
	<input type='hidden' name="keyword" value="" />
</form>


<nav aria-label="Navigation">
	<ul class="pagination justify-content-center m-0">
		<li class="page-item ">
			<a href="javascript:list_go(1);" class="page-link">
				<i class="fas fa-angle-double-left"></i>
			</a>
		</li>
		<li class="page-item">
			<a class="page-link" href="javascript:list_go(${pageMaker.prev ? pageMaker.startPage-1 :cri.page });">
				<i class="fas fa-angle-left"></i>
			</a>						
		</li>
		<c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="pageNum">
			<li class="page-item ${cri.page == pageNum?'active':''}">
				<a class="page-link" href="javascript:list_go(${pageNum });">
					${pageNum }
				</a>						
			</li>
		</c:forEach>
		<li class="page-item">
			<a class="page-link" href="javascript:list_go(${pageMaker.next ? pageMaker.endPage+1 : cri.page });">
				<i class="fas fa-angle-right"></i>
			</a>						
		</li>
		<li class="page-item ">
			<a href="javascript:list_go(${pageMaker.realEndPage });" class="page-link">
				<i class="fas fa-angle-double-right"></i>
			</a>
		</li>
	</ul>
</nav>    





<script>
  document.getElementById('StartDate').value = new Date().toISOString().substring(0, 10);;
</script>
<%@ include file="/WEB-INF/views/include/footer.jspf"%>