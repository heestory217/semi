<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<div class="preloader">
	<span class="preloader-spin"></span>
</div>
<div class="site">


	<!-- header 위치 -->
	<%@ include file="inc/top.jsp"%>
	
	
	<div class="dropDown-myPage">
		<div class="myPageOption-top">
			<span>내 페이지</span> 	
			  <a href="#"> 
			  	<img src="<%=request.getContextPath() %>/assets/img/closeIcon.png" width="15px" height="15px" alt="닫기 아이콘">
			  </a> 
		 
		</div>
		<div class="myPage-Profile">
		
			<div class="myPageOption-middle">
				<a href="#">
					<img src="<%=request.getContextPath() %>/assets/img/mypageIcon.png" width="30px" height="30px" alt="마이페이지 아이콘">
					<span>Nn(이름)</span>
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
					<a href="#">설정</a>
				</div>
		
			</div>
		
			<div class="myPageOption-bottom2">
				<div class="myPageOption">
					<a href="#">로그아웃</a>
				</div>
			</div>
			
	  </div> <!-- 마이프로필 디브 -->
	</div> <!-- myPage div -->
	
	
	
</div>


	<!-- footer위치 -->
	<%@ include file="inc/bottom.jsp"%>