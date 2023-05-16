<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jspf"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="https://cdn.tailwindcss.com"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>


<style>

</style>



<div class="pt-2 pb-2 pr-5 pl-5">

    <div class="flex ...">
        <div class="h-16 ... mt-3" style="flex: 0.48 0 1%">
            <i class="fa-solid fa-truck-medical dashboard_icon flex text-lg ">
                <p class="pl-2 text-lg	" style="font-weight: bold;'">
                    응급발생
                </p>
            </i>
        </div>
    </div>
    <div class="flex ...">
        <ul class="nav nav-tabs" id="custom-content-above-tab" role="tablist">
            <li class="nav-item">
                <a class="nav-link active-primary" id="emergency" data-toggle="pill" href="#emergency" role="tab" aria-controls="custom-content-above-home" aria-selected="true">응급발생</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" id="user" data-toggle="pill" href="#user" role="tab" aria-controls="custom-content-above-profile" aria-selected="false">대상자활동</a>
            </li>
        </ul>
        <div class="grow ... pb-2" style=" display: flex;flex-direction: column-reverse;">
            <p class="m-0">
                [응급발생 &nbsp;:&nbsp; <em class="text-red">${pageMaker.totalCount }5</em>건]
            </p>
        </div>
        <div class="shrink-1 ... pb-2">
            <button class=" px-5 py-2 bg-red-600 text-sm text-white font-semibold rounded-lg border border-blue-500 hover:text-white hover:bg-red-800 hover:border-transparent focus:outline-none">출동요청</button>
        </div>
    </div>


<div class="tab1">
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
<div class="tab2">
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


<script>
    $(document).ready(function() {
        // thead 체크박스 클릭 시
        $("thead th input[type='checkbox']").click(function() {
            var isChecked = $(this).prop("checked");
            $("tbody tr th input[type='checkbox']").prop("checked", isChecked);
        });
    });
</script>
<script>
    // Add event listeners to the navigation tabs
    $('#emergency').on('click', function() {
        $('.tab1').show(); // Show Tab 1 content
        $('.tab2').hide(); // Hide Tab 2 content
    });

    $('#user').on('click', function() {
        $('.tab1').hide(); // Hide Tab 1 content
        $('.tab2').show(); // Show Tab 2 content
    });
    window.onload
</script>

<%@ include file="/WEB-INF/views/include/footer.jspf"%>