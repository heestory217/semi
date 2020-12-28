<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- header 위치 -->
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<link rel="stylesheet" href=" <c:url value='/css/searchPw.css'/>">	

<%@ include file="../inc/top.jsp"%> 

<div class="searchPWContainer">
	<div class="searchPWBorder">
		<div class="searchPWinner">
			<fieldset>
				<legend class="searchPWTitle">비밀번호 찾기</legend>
					<form action="<c:url value='/login/emailChkAndMailing.do'/>" method="post" name="frmSch">
						<label class="myEmailLB" for="myEmail">가입한 이메일</label>
						<input type="text" name="myEmail" id="myEmail">
						<button name="btSchPW">비밀번호 찾기</button>
							<div class="informP">가입하신 email로 비밀번호를 보내드립니다.</div>
					</form>
			</fieldset>
		</div>
	</div>
</div>







<!-- footer위치 -->
<%@ include file="../inc/bottom.jsp"%>