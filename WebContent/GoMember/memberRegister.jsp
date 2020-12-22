<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script type="text/javascript" src= "<%=request.getContextPath() %>/js/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
$(function(){
	$('#btRegister').click(function(){
		if($('#email').val()!=$('#emailConfirm').val()){
			alert('email이 일치하지 않습니다!');
			$('#email').focus();
			event.preventDefault();
		}else if($('#password').val()!=$('#passwordConfirm').val()){
			alert('password가 일치하지 않습니다!');
			$('#password').focus();	
			event.preventDefault();
		}	
	});
	
});

</script>

<div class="site">


	<!-- header 위치 -->
 <%@ include file="../inc/top.jsp"%> 
<div class="registerContainer">
<div class="registerWrapper"> 
	<div class="registerWrapperBody"> 
 	
		<h3>회원가입</h3>
		
		<form autocomplete="on" method="post" action="<c:url value='/GoMember/memberRegister_ok.do'/>" name="frmRegister" id="frmRegister">
			<div class="registerInputDiv">
				<label for="userName" class="registerInputLabel">이름</label>
				<input id="userName" type="text" name="userName" autocomplete="username" placeholder="사용하실 이름을 입력해주세요" required="" class="registerInputText" value="">
			</div>
			
			
			<div class="registerInputDiv">
				<label for="email" class="registerInputLabel">이메일 주소</label>
				<input id="email" type="email" name="email" placeholder="이메일 주소를 입력해주세요" autocomplete="email" required="" class="registerInputText" value=""><br>
				<input id="emailConfirm" type="email" name="emailConfirm" autocomplete="email" required="" placeholder="이메일 주소를 확인합니다" class="registerInputText" value=""><br>
<!--에러메세지를 클래스로 만들어서 넣나? 	<span class="registerErrorMessage"></span>	 -->
			</div>
			
			<div class="registerInputDiv" style="margin-bottom: 10px;">
				<label for="password" class="registerInputLabel">비밀번호</label>
				<input id="password" type="password" required="" name="password" placeholder="비밀번호를 입력해주세요" autocomplete="new-password" autocapitalize="off" autocorrect="off" spellcheck="off" class="registerInputText" value=""><br>
				<input id="passwordConfirm" type="password" required="" name="passwordConfirm" autocapitalize="off" autocorrect="off" autocomplete="new-password" spellcheck="off" placeholder="비밀번호를 확인합니다" class="registerInputText" value="">		
			</div>
			
			<div class="registerInputDiv" style="margin-bottom: 10px;">
				<p class="agreeP">원활한 서비스 제공을 위해 개인정보 수집/이용에 동의해주세요.</p>
				
				<input id="ckbAgree" type="checkbox" required="">
				<label for="ckbAgree" >개인정보 수집·이용에 동의합니다. (필수)</label>
								
			</div>
			
			<button label="가입하기" id="btRegister" class="btRegister">가입하기</button>
		</form>
		
		<div class="register-loginWrapper">
			<p style="color:#757575;margin-bottom:0">이미 계정이 있으신가요?</p>
			<a href="<c:url value='/login/login.do'/>">기존 계정으로 로그인하기</a>
		</div>
	</div>  <!-- register bodyWrapper -->
	</div>
</div>	<!-- registerWrapper -->
	
</div>
	<!-- footer위치 -->
	<%@ include file="../inc/bottom.jsp"%>