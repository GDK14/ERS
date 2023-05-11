<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>adminLogin</title>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/js-sha256/0.9.0/sha256.min.js" ></script>
	
	<!-- 제이쿼리 불러오기 -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/lodash.js/4.17.20/lodash.min.js"></script>
	
	<!-- 테일윈드 불러오기 -->
	<!-- 노말라이즈, 라이브러리까지 한번에 해결 -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/2.2.7/tailwind.min.css" />
	
	<!-- 데이지 UI -->
	<link href="https://cdn.jsdelivr.net/npm/daisyui@2.51.5/dist/full.css" rel="stylesheet" type="text/css" />
	
	<!-- 폰트어썸 불러오기 -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" />
	
	<!-- 사이트 공통 CSS -->
	<link rel="stylesheet" href="/resource/common.css" />
	<!-- 사이트 공통 JS -->
	<script src="/resource/common.js" defer="defer"></script>
</head>

<body style="max-width: 1600px; max-height: 900px;">


 <div class="hold-transition login-page">
 <div class="login-box">
 <div class="login-logo">
    <a href="#"><b>관리자 로그인</b></a>
 </div>
 <!-- /.login-logo -->
 <div class="card">
  <div class="card-body login-card-body" style="display: flex; align-items: center;">
    <p class="login-box-msg">Sign in to start your session</p>

    <form action="login.do"   method="post">
       <input name="retUrl" value="${retUrl }" type="hidden" />
       <div class="form-group has-feedback">
          <input type="text" class="form-control" name="id" placeholder="아이디를 입력하세요." value="${pastID }">
          <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
       </div>
       <div class="form-group has-feedback">
          <input type="password" class="form-control" name="pwd" placeholder="패스워드를 입력하세요."  value="">
          <span class="glyphicon glyphicon-lock form-control-feedback"></span>
       </div>
       <div class="row">
          <div class="col-sm-8">
             <div class="checkbox icheck">
                <label> <input type="checkbox" name="rememberMe" value="check"> Remember Me
                </label>
             </div>
          </div>
          <!-- /.col -->
          <div class="col-sm-4">
             <button type="submit" class="btn btn-primary btn-block btn-flat">로그인</button>
          </div>
          <!-- /.col -->
       </div>
    </form>

    <a href="#" style="font-weight:bold;">아이디/패스워드 찾기</a><br> 

 </div>
 <!-- /.login-box-body -->
  </div>   
</div>
<!-- /.login-box -->
 
</div>    
   
   <% 
      String message = (String)request.getAttribute("message");
      if(message != null && !message.isEmpty()) {
   %>
   <script>
      alert("${message}");
      location.href = "login.do?id=${param.id}";
   </script>
   <%
      }
   %>


</body>
</html>