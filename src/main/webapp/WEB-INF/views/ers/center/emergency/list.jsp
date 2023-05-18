<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jspf"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="https://cdn.tailwindcss.com"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>


<style>
    /* bottom-nav */
    .relative {
        position: relative;
    }

    .btm-nav {
        position: fixed;
        bottom: 0;
        left: 0;
        right: 0;
        display: flex;
        width: 100%;
        flex-direction: row;
        align-items: center;
        justify-content: space-around;
        padding-bottom: env(safe-area-inset-bottom);
        --tw-bg-opacity: 1;
        background-color: hsl(var(--b1)/var(--tw-bg-opacity));
        color: currentColor;
    }

    .btm-nav>*:not(.active) {
        padding-top: 1rem;
    }

    .btm-nav>* {
        position: relative;
        display: flex;
        height: 100%;
        flex-basis: 100%;
        cursor: pointer;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        gap: 0.25rem;
    }



    .btm-nav>*:where(.active) {
        --tw-bg-opacity: 1;
        background-color: hsl(var(--b1)/var(--tw-bg-opacity));
    }

    div>#title {
        border: none;
    }
</style>


<div class="pt-2 pb-2 pr-5 pl-5" style="height: 85%;">

    <div class="flex ...">
        <div class="h-16 ... mt-3" style="flex: 0.48 0 1%">
            <i class="fa-regular fa-bell dashboard_icon flex text-lg">
                <p class="pl-2 text-lg	" style="font-weight: bold;'">
                    응급발생목록
                </p>
            </i>
        </div>
    </div>
    <div class="flex ...">
        <div class="grow ... pb-2" style=" display: flex;flex-direction: column-reverse;">
            <p class="m-0">
                [총 응급발생 건수 &nbsp;:&nbsp; <em>${pageMaker.totalCount }9</em>건]
            </p>
        </div>
        <div class="shrink-1 ...">
            <label>시작일</label>&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;<label>종료일</label>
            <form>
                <input type='date' id='StartDate' class="border-2 border-black mb-2 pl-2" style="width: 130px;" />&ensp;&ensp;
                <input type="date" id="EedDate" name="SearchEnd" class="border-2 border-black mb-2 pl-2" style="width: 130px;" />
            </form>
            <!-- SELECT -->
            <label>사건분류</label>
            <select class="border-2 border-black/50">
                <option>전체</option>
                <option>응급발생</option>
                <option>119</option>
                <option>화재</option>
            </select>&ensp;&ensp;
            <!-- SELECT -->
            <label>지역구 선택</label>
            <select class="border-2 border-black/50">
                <option>전체</option>
                <option>동구</option>
                <option>중구</option>
                <option>서구</option>
                <option>유성구</option>
                <option>대덕구</option>
            </select>&ensp;&ensp;
            <label>처리상태</label>
            <select class="border-2 border-black/50">
                <option>전체</option>
                <option>처리</option>
                <option>미처리</option>
            </select>
        </div>
    </div>



    <table class="table table-hover text-nowrap border-2">
        <colgroup>
            <col width="50" />
            <col width="150" />
            <col width="200" />
            <col width="200" />
            <col width="200" />
            <col width="200" />
            <col width="auto" />
            <col width="100" />
            <col />
        </colgroup>
        <thead class="bg-neutral-100" style="text-align: center;">
            <tr>
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
        <tbody class="bg-white" style="text-align: center;">
            <tr>
                <th>1</th>
                <td>독거노인</td>
                <td><a onclick="popOpen();">김형민</a></td>
                <td>서구관제센터</td>
                <td>둔산1동 수행처</td>
                <td>119</td>
                <td>2023-04-06 11:11</td>
                <td>처리</td>
            </tr>
            <tr>
                <th>2</th>
                <td>독거노인</td>
                <td>김형민</td>
                <td>서구관제센터</td>
                <td>둔산1동 수행처</td>
                <td>119</td>
                <td>2023-04-06 11:11</td>
                <td>처리</td>
            </tr>
            <tr>
                <th>3</th>
                <td>독거노인</td>
                <td>김형민</td>
                <td>서구관제센터</td>
                <td>둔산1동 수행처</td>
                <td>119</td>
                <td>2023-04-06 11:11</td>
                <td>처리</td>
            </tr>
            <tr>
                <th>4</th>
                <td>독거노인</td>
                <td>김형민</td>
                <td>서구관제센터</td>
                <td>둔산1동 수행처</td>
                <td>119</td>
                <td>2023-04-06 11:11</td>
                <td>처리</td>
            </tr>
            <tr>
                <th>5</th>
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





<!-- pagination -->
<form id="jobForm">
    <input type='hidden' name="page" value="" />
    <input type='hidden' name="perPageNum" value="" />
    <input type='hidden' name="searchType" value="" />
    <input type='hidden' name="keyword" value="" />
</form>

<nav aria-label="Navigation" style="height: 15%;">
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









<div class="btm-nav bg-gray" style="height: 5%;">
    <a href="chart" class="nav-link">
        <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 19v-6a2 2 0 00-2-2H5a2 2 0 00-2 2v6a2 2 0 002 2h2a2 2 0 002-2zm0 0V9a2 2 0 012-2h2a2 2 0 012 2v10m-6 0a2 2 0 002 2h2a2 2 0 002-2m0 0V5a2 2 0 012-2h2a2 2 0 012 2v14a2 2 0 01-2 2h-2a2 2 0 01-2-2z" />
        </svg>
    </a>

    <a href="list" class="nav-link active" style="background-color: #17a2b8;">
        <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h7"></path>
        </svg>
    </a>
</div>





<!-- Modal 창 -->
<div class="modal_bg" onClick="javascript:popClose();"></div>
<div class="modal_wrap" style="width:900px; height: 845px;">
    <div class="modal-content" style="height: 100%;">
        <div class="modal-header bg-info p-1">
            <h4 class="modal-title pl-2">ERS</h4>
            <h4 class="modal-title m-auto modal-title-right">응급발생 처리</h4>
            <button type="button" class="close ml-0" data-dismiss="modal" aria-label="Close" onClick="javascript:popClose();">
                <span aria-hidden="true">×</span>
            </button>
        </div>



        <!--모달 바디-->
        <div class="modal-body">
            <div class="row">

                <div class="row m-0 flex justify-center items-center" style="width: 45%; height:500px;">
                    <div class="border-gray border-2 items-center " style="width: 100%; height: 400px; ">
                        <img class="p-1" src="${pageContext.request.contextPath}/resources/images/김형민.png" alt="김형민" style="width: 100%; height: 100%;">
                    </div>
                </div>


                <div class="row m-0 flex content-start justify-center" style="width: 55%; height:500px;">
                    <div class="col-12 mt-2" style="height: 60px;">
                        <div class="row m-0 py-1 px-3">
                            <div id="title" class="col-4  modal-content-title">접수센터</div>
                            <div class="col-8 flex justify-center items-cetner px-3 m-0 modal-content-content border-black">
                                <div class=" ">서구관제센터</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 mt-2" style="height: 60px;">
                        <div class="row m-0 py-1 px-3">
                            <div id="title" class="col-4  modal-content-title">구분</div>
                            <div class="col-8 flex justify-center items-cetner px-3 m-0 modal-content-content border-black">
                                <div class=" ">독거노인</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 mt-2" style="height: 60px;">
                        <div class="row m-0 py-1 px-3">
                            <div id="title" class="col-4  modal-content-title">이름</div>
                            <div class="col-8 flex justify-center items-cetner px-3 m-0 modal-content-content border-black">
                                <div class=" ">김형민</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 mt-2" style="height: 60px;">
                        <div class="row m-0 py-1 px-3">
                            <div id="title" class="col-4  modal-content-title">사건분류</div>
                            <div class="col-8 flex justify-center items-cetner px-3 m-0 modal-content-content border-black">
                                <div class=" ">응급호출</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 mt-2" style="height: 60px;">
                        <div class="row m-0 py-1 px-3">
                            <div id="title" class="col-4  modal-content-title">사건발생일시</div>
                            <div class="col-8 flex justify-center items-cetner px-3 m-0 modal-content-content border-black">
                                <div class=" ">2023-05-05 14:02</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 mt-2" style="height: 60px;">
                        <div class="row m-0 py-1 px-3">
                            <div id="title" class="col-4  modal-content-title">출동지시시간</div>
                            <div class="col-8 flex justify-center items-cetner px-3 m-0 modal-content-content border-black">
                                <div class=" ">2023-05-05 15:02</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 mt-2" style="height: 60px;">
                        <div class="row m-0 py-1 px-3">
                            <div id="title" class="col-4  modal-content-title">담당수행기관</div>
                            <div class="col-8 flex justify-center items-cetner px-3 m-0 modal-content-content border-black">
                                <div class=" ">탄방동 수행기관</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 mt-2" style="height: 60px;">
                        <div class="row m-0 py-1 px-3">
                            <div id="title" class="col-4  modal-content-title">담당응급관리요원</div>
                            <div class="col-8 flex justify-center items-cetner px-3 m-0 modal-content-content border-black">
                                <div class=" ">박제성</div>
                            </div>
                        </div>
                    </div>





                </div>
                <!--모달 푸터-->
            </div>
            <br />
            <div class="row p-3">
                <p><i><b>사건내용</b></i></p>
                <div class="col-12 border-2 h-40" style="overflow-y:scroll;"></div>
            </div>
            <div class="flex justify-center">
                <button class="px-4 py-2 bg-blue-500 text-sm text-white font-semibold rounded-md border border-blue-500 hover:text-white hover:bg-blue-800 hover:border-transparent focus:outline-none" type="button" data-dismiss="modal" onclick="popClose()">확인</button>
            </div>
        </div>






        <!--캘린더 현재 날짜-->
        <script>
            document.getElementById('StartDate').value = new Date().toISOString().substring(0, 10);;
        </script>

        <script>
            function popOpen() {
                var modalPop = $('.modal_wrap');
                var modalBg = $('.modal_bg');

                $(modalPop).show();
                $(modalBg).show();

            }

            function popClose() {
                var modalPop = $('.modal_wrap');
                var modalBg = $('.modal_bg');

                $(modalPop).hide();
                $(modalBg).hide();

            }

            function next() {
                alert("온다온다");
            }
        </script>




        <%@ include file="/WEB-INF/views/include/footer.jspf"%>