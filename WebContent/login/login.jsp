<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="site">

	<!-- header 위치 -->
	 <%@ include file="../inc/top.jsp"%> 
	
	<div class="simpleForm">
		<div class="loginTitle">
			<h2>로그인</h2>
		</div>	
		<div class="loginForm" style="width: 340px">
			<form name="frmLogin" method="post" action="<c:url value='/login/login_ok.do'/>">
				<input type="email" id="email"  class="emailInput" 
					placeholder="이메일 주소 입력" name="email" value="">
				<input type="password" id="password" class="passwordInput"
					placeholder="비밀번호 입력" name="pwd" value="">
				<button type="submit" class="loginButton">로그인</button>
				
				<a href="<c:url value='/GoMember/memberRegister.do'/>" class="registerLink">
					<span style="color: rgb(117, 117, 117);">아직 계정이 없으신가요?</span>
					펀딩고 가입하기
				</a> 
			</form>
			
			<div class="searchPW">
				<a href="<c:url value='/login/searchPw.do'></c:url>">혹시 비밀번호를 잊으셨나요?</a>
			</div>
		</div>
	</div>

</div>

<!-- footer위치 -->
<%@ include file="../inc/bottom.jsp"%>