<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>직원로그인</title>


<!-- 데이지UI+TailWind -->
<link href="https://cdn.jsdelivr.net/npm/daisyui@2.51.6/dist/full.css" rel="stylesheet" type="text/css" />
<script src="https://cdn.tailwindcss.com"></script>

<!-- font-awesome -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"/>
</head>

<body>



<div class="hero min-h-screen bg-base-200" style="background-image: url(../resources/images/LoginForm-BG.jpg); opacity: inherit;">
  <div class="hero-content flex-col lg:flex-row-reverse" style="width: 450px;">
    <div class="card flex-shrink-0 w-full max-w-sm shadow-2xl bg-base-100">
      
        <div class="card-body bg-sky-700 h-16 items-center">
	    	<h2 class="item-center justify-center card-title text-white">직원로그인</h2>
	  	</div>
      <div class="card-body">
       
	  	
        <div class="form-control">
          <label class="label">
            <span class="label-text">아이디</span>
          </label>
          <input type="text" placeholder="ID" class="input input-bordered" />
        </div>
       
        <div class="form-control">
          <label class="label">
            <span class="label-text">비밀번호
            </span>
		  </label>
          <input type="text" placeholder="password" class="input input-bordered" />
          <label class="label">
            <a href="#" class="label-text-alt link link-info link-hover">회원가입</a>
            <a href="#" class="label-text-alt link link-info link-hover">아이디찾기</a>
            <a href="#" class="label-text-alt link link-info link-hover">비밀번호찾기</a>
          </label>
        </div>
        
        <div class="form-control mt-6">
          <button class="btn bg-amber-500">로그인</button>
        </div>
        
      </div>
    </div>
  </div>
</div>



</body>
</html>
