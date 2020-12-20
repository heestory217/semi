<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<div class="preloader">
	<span class="preloader-spin"></span>
</div>
<div class="site">


	<!-- header 위치 -->
	<%@ include file="inc/top.jsp"%>
	
	
	<div class="simpleForm">
		<div class="loginForm">
			<form name="frmLogin" method="post" action="" >
				<h3 style="color:gray; margin-bottom:30px;">로그인</h3>
				<input type="email" id="login"  class="emailInput" 
					placeholder="이메일 주소 입력" name="email" value="">
				<input type="password" id="password" class="passwordInput"
					placeholder="비밀번호 입력" name="pwd" value="">
				<button type="submit" class="loginButton">로그인</button>
				<div>
					<span>아직 계정이 없으신가요?</span>
					<span><a href="<%=request.getContextPath() %>/memberRegister.jsp"  style="color:#FA6462;">펀딩고 가입하기</a></span>
				</div>
			</form>
		</div>
	</div>
</div>


	<!-- footer위치 -->
	<%@ include file="inc/bottom.jsp"%>