<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<link rel="stylesheet" href="<c:url value='/css/memberOut.css'/>">	<!-- header 위치 -->
<%@ include file="../login/login_check.jsp" %>
<%@ include file="../inc/top.jsp"%> 


<script type="text/javascript">
	$(function(){
		$('#pwCheck').focus();
		
		$('form[name=frmOut]').submit(function(){
			if($('#pwCheck').val().length<1){
				alert('비밀번호를 입력하세요');
				$('pwCheck').focus();
				event.preventDefault();
			}else{
				if(!confirm('탈퇴하시겠습니까?')){
					event.preventDefault();
				}	
			}
		});
	});

</script>
<div class="MemOutContainer">
	<div class="MemOutinner">
	  <div class="outTitle">탈퇴</div>
		<form method="post" action="<c:url value='/GoMember/memberOutOk.do'/>" name="frmOut">
			 <label for="pwCheck" class="memOutLB">탈퇴를 원하시면 비밀번호를 입력해주세요.</label><br>
			 <input type="text" name="pwCheck" id="pwCheck"> 
			 <input type="submit" id="submit" value="회원탈퇴">
			 <input type="reset" value="취소" onclick="location.href='<c:url value="/GoMember/MypageOption.do"/>'">
			 <div class="outTooltip">탈퇴 후 재가입 시 이용했던 아이디를 사용할 수 없습니다.</div>
			 
		</form>
	</div>
</div>


 <!-- footer위치 -->
<%@ include file="../inc/bottom.jsp"%>