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
			<form name="frmLogin" method="post" action="#">
				<input type="email" id="login"  class="emailInput" 
					placeholder="이메일 주소 입력" name="email" value="">
				<input type="password" id="password" class="passwordInput"
					placeholder="비밀번호 입력" name="pwd" value="">
				<button type="submit" class="loginButton">로그인</button>
				
				<a href="<%=request.getContextPath() %>/memberRegister.jsp" class="registerLink">
					<span style="color: rgb(117, 117, 117);">아직 계정이 없으신가요?</span>
					펀딩고 가입하기
				</a> 
			</form>
			
			<div class="searchPW">
				<a href="#">혹시 비밀번호를 잊으셨나요? </a>
			</div>
		</div>
	</div>

</div>

<!-- footer위치 -->
<%@ include file="inc/bottom.jsp"%>