<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jspf"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="https://cdn.tailwindcss.com"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>


<style>
div>input[type="checkbox"]{
	width: 25px;
	height: 25px;
	cursor: pointer; 
	
}
</style>



<div class="pt-2 pb-2 pr-5 pl-5">

    <div class="flex ...">
        <div class="h-16 ... mt-3" style="flex: 0.48 0 1%">
            <i class="fa-solid fa-truck-medical dashboard_icon flex text-lg ">
                <p class="pl-2 text-lg font-bold">
                    응급발생
                </p>
            </i>
        </div>
    </div>
    <div class="flex ...">
        <ul class="nav nav-tabs border-stone-300 border-2" id="custom-content-above-tab" role="tablist" style="border-bottom: none;">
            <li class="nav-item" id="tab1">
                <a class="nav-link border-0 text-red-500 font-bold" id="emergency" data-toggle="pill" href="${pageContext.request.contextPath}?category=emergency" role="tab" aria-controls="custom-content-above-home" aria-selected="true">응급발생</a>
            </li>
            <li class="nav-item" id="tab2">
                <a class="nav-link border-0 text-blue-500 font-bold	" id="user" data-toggle="pill" href="${pageContext.request.contextPath}?category=user" role="tab" aria-controls="custom-content-above-profile" aria-selected="false">대상자활동</a>
            </li>
        </ul>
        <div class="grow ... pb-2 pl-3" style=" display: flex;flex-direction: column-reverse;">
            <p class="m-0">
                [응급발생 &nbsp;:&nbsp; <em class="text-red">${pageMaker.totalCount }5</em>건]
            </p>
        </div>
        <div class="shrink-1 ... pb-2">
            <button class=" px-5 py-2 bg-red-600 text-sm text-white font-semibold rounded-lg border border-blue-500 hover:text-white hover:bg-red-800 hover:border-transparent focus:outline-none" onclick="GomoveOut();">출동요청</button>
        </div>
    </div>


    <div class="tab1" style="display:none;">
        <table class="table table-hover text-nowrap border-2">
            <colgroup>
                <col width="50" />
                <col width="150" />
                <col width="200" />
                <col width="300" />
                <col width="auto" />
                <col width="200" />
                <col />
            </colgroup>
            <thead class="bg-neutral-100" style="text-align: center;">
                <tr>
                    <th><input type="checkbox" /></th>
                    <th>대상자 구분</th>
                    <th>이름</th>
                    <th>호출시간</th>
                    <th>주소</th>
                    <th>응급관리요원 배정</th>
                </tr>
            </thead>
            <tbody class="bg-white" style="text-align: center;">
                <tr>
                    <th><input type="checkbox" /></th>
                    <td>독거노인</td>
                    <td>김복순</td>
                    <td>2023-04-23 11:11</td>
                    <td>대전광역시 서구 대덕대로 179 굿모닝어학원빌딩 9층</td>
                    <td><button class="px-4 py-1 bg-blue-500 text-sm text-white font-semibold rounded-full border border-blue-500 hover:text-white hover:bg-blue-800 hover:border-transparent focus:outline-none" onclick="popOpen();">+</button></td>
                </tr>
                <tr>
                    <th><input type="checkbox" /></th>
                    <td>독거노인</td>
                    <td>김복순</td>
                    <td>2023-04-23 11:11</td>
                    <td>대전광역시 서구 대덕대로 179 굿모닝어학원빌딩 9층</td>
                    <td><button class="px-4 py-1 bg-blue-500 text-sm text-white font-semibold rounded-full border border-blue-500 hover:text-white hover:bg-blue-800 hover:border-transparent focus:outline-none">+</button></td>
                </tr>
                <tr>
                    <th><input type="checkbox" /></th>
                    <td>독거노인</td>
                    <td>김복순</td>
                    <td>2023-04-23 11:11</td>
                    <td>대전광역시 서구 대덕대로 179 굿모닝어학원빌딩 9층</td>
                    <td><button class="px-4 py-1 bg-blue-500 text-sm text-white font-semibold rounded-full border border-blue-500 hover:text-white hover:bg-blue-800 hover:border-transparent focus:outline-none">+</button></td>
                </tr>
                <tr>
                    <th><input type="checkbox" /></th>
                    <td>독거노인</td>
                    <td>김복순</td>
                    <td>2023-04-23 11:11</td>
                    <td>대전광역시 서구 대덕대로 179 굿모닝어학원빌딩 9층</td>
                    <td><button class="px-4 py-1 bg-blue-500 text-sm text-white font-semibold rounded-full border border-blue-500 hover:text-white hover:bg-blue-800 hover:border-transparent focus:outline-none">+</button></td>
                </tr>
                <tr>
                    <th><input type="checkbox" /></th>
                    <td>독거노인</td>
                    <td>김복순</td>
                    <td>2023-04-23 11:11</td>
                    <td>대전광역시 서구 대덕대로 179 굿모닝어학원빌딩 9층</td>
                    <td><button class="px-4 py-1 bg-blue-500 text-sm text-white font-semibold rounded-full border border-blue-500 hover:text-white hover:bg-blue-800 hover:border-transparent focus:outline-none">+</button></td>
                </tr>
            </tbody>
        </table>
    </div>
    <div class="tab2" style="display:none;">
        <table class="table table-hover text-nowrap border-2">
            <colgroup>
                <col width="50" />
                <col width="150" />
                <col width="200" />
                <col width="300" />
                <col width="auto" />
                <col width="200" />
                <col />
            </colgroup>
            <thead class="bg-neutral-100" style="text-align: center;">
                <tr>
                    <th><input type="checkbox" /></th>
                    <th>대상자 구분</th>
                    <th>이름</th>
                    <th>호출시간</th>
                    <th>주소</th>
                    <th>응급관리요원 배정</th>
                </tr>
            </thead>
            <tbody class="bg-white" style="text-align: center;">
                <tr>
                    <th><input type="checkbox" /></th>
                    <td>독거노인</td>
                    <td>김복순</td>
                    <td>2023-04-23 11:11</td>
                    <td> 여기는 대상자입니다~~~~~~~</td>
                    <td><button class="px-4 py-1 bg-blue-500 text-sm text-white font-semibold rounded-full border border-blue-500 hover:text-white hover:bg-blue-800 hover:border-transparent focus:outline-none" onclick="popOpen();">+</button></td>
                </tr>
                <tr>
                    <th><input type="checkbox" /></th>
                    <td>독거노인</td>
                    <td>김복순</td>
                    <td>2023-04-23 11:11</td>
                    <td>대전광역시 서구 대덕대로 179 굿모닝어학원빌딩 9층</td>
                    <td><button class="px-4 py-1 bg-blue-500 text-sm text-white font-semibold rounded-full border border-blue-500 hover:text-white hover:bg-blue-800 hover:border-transparent focus:outline-none">+</button></td>
                </tr>
                <tr>
                    <th><input type="checkbox" /></th>
                    <td>독거노인</td>
                    <td>김복순</td>
                    <td>2023-04-23 11:11</td>
                    <td>대전광역시 서구 대덕대로 179 굿모닝어학원빌딩 9층</td>
                    <td><button class="px-4 py-1 bg-blue-500 text-sm text-white font-semibold rounded-full border border-blue-500 hover:text-white hover:bg-blue-800 hover:border-transparent focus:outline-none">+</button></td>
                </tr>
                <tr>
                    <th><input type="checkbox" /></th>
                    <td>독거노인</td>
                    <td>김복순</td>
                    <td>2023-04-23 11:11</td>
                    <td>대전광역시 서구 대덕대로 179 굿모닝어학원빌딩 9층</td>
                    <td><button class="px-4 py-1 bg-blue-500 text-sm text-white font-semibold rounded-full border border-blue-500 hover:text-white hover:bg-blue-800 hover:border-transparent focus:outline-none">+</button></td>
                </tr>
                <tr>
                    <th><input type="checkbox" /></th>
                    <td>독거노인</td>
                    <td>김복순</td>
                    <td>2023-04-23 11:11</td>
                    <td>대전광역시 서구 대덕대로 179 굿모닝어학원빌딩 9층</td>
                    <td><button class="px-4 py-1 bg-blue-500 text-sm text-white font-semibold rounded-full border border-blue-500 hover:text-white hover:bg-blue-800 hover:border-transparent focus:outline-none">+</button></td>
                </tr>
            </tbody>
        </table>
    </div>





</div>



<!-- Modal 창 -->
<div class="modal_bg" onClick="javascript:popClose();"></div>
<div class="modal_wrap" style="width:900px; height: 845px;">
    <div class="modal-content" style="height: 100%;">
        <div class="modal-header bg-info p-1">
            <h4 class="modal-title pl-2">ERS</h4>
            <h4 class="modal-title m-auto modal-title-right">응급관리요원 배정</h4>
            <button type="button" class="close ml-0" data-dismiss="modal" aria-label="Close" onClick="javascript:popClose();">
                <span aria-hidden="true">×</span>
            </button>
        </div>



        <!--모달 바디-->
        <div class="modal-body">
            <div class="row">
                <div class="col-12">
                    <div class="row my-2">
                        <div class="flex justify-center text-xl text-bold" style="width: 45%;">서구 관제센터</div>
                        <div class="flex justify-center" style="width: 10%;"></div>
                        <div class="flex justify-center text-xl text-bold" style="width: 45%;">둔산1동</div>
                    </div>

                </div>

               <div class="row m-0 pl-3 flex content-start justify-center" style="width: 46%; height:650px;">
                   <div class="col-12 text-center text-bold" style="height: 30px;">수행기관</div>
                   <div class="col-12 border-black bg-gray-200 rounded-md border-2" style="height: 100%;">
                   		<ul class="p-3">
                   			<li class="py-3"><b>둔산1동 수행기관</b></li>
                   			<li class="py-3">탄방동 수행기관</li>
                   			<li class="py-3">만년동 수행기관</li>
                   			<li class="py-3">갈마1동 수행기관</li>
                   			<li class="py-3">갈마2동 수행기관</li>
                   			<li class="py-3">월평1동 수행기관</li>
                   			<li class="py-3">월평2동 수행기관</li>
                   		</ul>
                   </div>
                   
                </div>

                <div class="row m-0 flex justify-center items-center" style="width: 8%; height:650px;">
                    <i class='fas fa-arrow-alt-circle-right' onclick="next();" style='font-size:48px;color:#17a2b8;'></i>
                </div>

                <div class="row pr-3 m-0 flex content-start justify-center" style="width: 46%; height:650px;">
                   <div class="col-12 text-center text-bold" style="height: 30px;">수행기관</div>
                   <div class="col-12 border-black  rounded-md border-2" style="height: 100%;">
                   		<div class="m-3 border-b-2 border-black" style="height: 30px;">
                   			<div >현재 대기중&nbsp;:&nbsp;<em style="color: red;">{3}</em>명</div>
                   		</div>
                   		<ul class="p-3 ">
                   			<li class="flex border-b-2 py-3 flex items-center" style="height: 100px;"><div style="flex-grow:0.5;"><input type="checkbox"></div>&ensp;<img class="p-1" src="${pageContext.request.contextPath}/resources/images/증명사진.jpg" alt="증명사진" style="width: 70px; height: 70px;">&ensp;<b>이주빈</b></li>
                   			<li class="flex border-b-2 py-3 flex items-center" style="height: 100px;"><div style="flex-grow:0.5;"><input type="checkbox"></div>&ensp;<img class="p-1" src="${pageContext.request.contextPath}/resources/images/증명사진.jpg" alt="증명사진" style="width: 70px; height: 70px;">&ensp;<b>이주빈</b></li>
                   			<li class="flex border-b-2 py-3 flex items-center" style="height: 100px;"><div style="flex-grow:0.5;"><input type="checkbox"></div>&ensp;<img class="p-1" src="${pageContext.request.contextPath}/resources/images/증명사진.jpg" alt="증명사진" style="width: 70px; height: 70px;">&ensp;<b>이주빈</b></li>
                   			<li class="flex border-b-2 py-3 flex items-center" style="height: 100px;"><div style="flex-grow:0.5;"><input type="checkbox"></div>&ensp;<img class="p-1" src="${pageContext.request.contextPath}/resources/images/증명사진.jpg" alt="증명사진" style="width: 70px; height: 70px;">&ensp;<b>이주빈</b></li>
                   			<li class="flex border-b-2 py-3 flex items-center" style="height: 100px;"><div style="flex-grow:0.5;"><input type="checkbox"></div>&ensp;<img class="p-1" src="${pageContext.request.contextPath}/resources/images/증명사진.jpg" alt="증명사진" style="width: 70px; height: 70px;">&ensp;<b>이주빈</b></li>
                   		</ul>
                   </div>
                   
                </div>

            </div>


        </div>
        <!--모달 푸터-->
        <div class="p-3 flex justify-end">
            <button class="px-4 py-2 bg-blue-500 text-sm text-white font-semibold rounded-md border border-blue-500 hover:text-white hover:bg-blue-800 hover:border-transparent focus:outline-none" type="button" data-dismiss="modal" onclick="popClose()">확인</button>
        </div>
    </div>
</div>


<script>
    $(document).ready(function() {

        // 파라미터 가져오기
        $.urlParam = function(name) {
            var results = new RegExp('[\?&]' + name + '=([^&#]*)').exec(window.location.href);
            if (results == null) {
                return null;
            } else {
                return results[1] || 0;
            }
        }


        var category = $.urlParam('category')
        // 로드시 카테고리 처리
        if (category === 'user') {
            $('.tab1').hide(); // Hide Tab 1 content
            $('.tab2').show(); // Show Tab 2 content
            $('#tab2').addClass('bg-gray');
        } else {
            $('.tab1').show(); // Show Tab 1 content
            $('.tab2').hide(); // Hide Tab 2 content
            $('#tab1').addClass('bg-gray');
        }


        // thead 체크박스 클릭 시
        $("thead th input[type='checkbox']").click(function() {
            var isChecked = $(this).prop("checked");
            $("tbody tr th input[type='checkbox']").prop("checked", isChecked);
        });




        // Add event listeners to the navigation tabs
        /*         $('#emergency').on('click', function() {
                    $('.tab1').show(); // Show Tab 1 content
                    $('.tab2').hide(); // Hide Tab 2 content
                });

                $('#user').on('click', function() {
                    $('.tab1').hide(); // Hide Tab 1 content
                    $('.tab2').show(); // Show Tab 2 content
                });
                
                 */


    });
</script>

<script>
	function GomoveOut(){
		alert("출동요청이 완료되었습니다.");
		location.reload();
	}
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
        alert("넘어가는 버튼!");
    }
</script>

<%@ include file="/WEB-INF/views/include/footer.jspf"%>