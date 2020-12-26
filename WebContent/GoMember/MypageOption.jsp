<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<div class="preloader">
	<span class="preloader-spin"></span>
</div>
<div class="site">


	<!-- header 위치 -->
	<%@ include file="../login/login_check.jsp" %>
	<%@ include file="../inc/top.jsp"%>
	

	<div class="dropDown-myPage">
		<div class="myPageOption-top">
			<div class="container myPageOption-container">
				<span>내 페이지</span> 	
				  <a href='<c:url value='/mainArticle.do'></c:url>' class="myPage-closeBtn"> 
				  	<img src="<c:url value='/img/closeIcon.png'/>" width="15px" height="15px" alt="닫기 아이콘" href="#">
				  </a> 
			 </div>
		</div>
		<div class="container myPage-Profile">
		
			<div class="myPageOption-middle">
				<a href="#">
					<span> ${name}</span>
					<c:if test="${empty fileName}"> 
						<img src="<c:url value='/img/user-account.png'/>" width="50px" alt="마이페이지 아이콘">
					</c:if>						
					<c:if test="${!empty fileName}"> 
						<img src="<c:url value='/GoMember_upload/${fileName}'/>" width="50px" alt="마이페이지 아이콘">
					</c:if>	
					
								
				</a>
			</div>
			<div class="myPageOption-bottom">
				<div class="myPageOption">
					<a href="#">커뮤니티</a>
				</div>
				
				<div class="myPageOption">
					<a href="#">후원현황</a>
				</div>
	
			
				<div  class="myPageOption"> 
					<a href="#">내가만든 프로젝트</a> 
				</div>
			

				<div class="myPageOption">
					<a href="<c:url value='/GoMember/memberPage.do'/>">설정</a>
				</div>
		
			</div>
		
			<div class="myPageOption-bottom2">
				<div class="myPageOption">
					<a href="<c:url value='/login/logout.do'/>">로그아웃</a>
				</div>
			</div>
			
	  </div> <!-- 마이프로필 디브 -->
	</div> <!-- myPage div -->
	
</div>

	<!-- footer위치 -->
	<%@ include file="../inc/bottom.jsp"%>