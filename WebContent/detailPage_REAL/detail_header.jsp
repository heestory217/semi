<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link rel="stylesheet" href="../css/detailPage_css.css">


<!-- 윗부분 -->
<header class="header">
<div class="container">
	<div class="detailPageTop">
			<div><a href=""><img src="../img/categ_calender.PNG" alt="문구.캘린더" class="categ_cal"></a></div>
			<div><h2>당신에게 딱 맞는 MBTI 사고성향별 다이어리</h2></div>
			<span><a href=""><img src="../img/authorLogo.png" alt="창작자 로고" class="author_logo"></a></span>
			<span><a href=""><img src="../img/authorName.png" alt="창작자 " class="author_name"></a></span>	
	</div>


  	<div class="projectMainDetail">
  		<div><img src="../img/detailPageprojImage.jpeg" id="projImage" alt="프로젝트 이미지" class="projDetailImage">
  			  <div class="projectMainDetail2">
  				<div class="projectMainDetail2_1">
  				
  					<div>모인금액</div>
  					<span><span id="word">337,548,498</span> 원 <b>485%</b></span><br>
  					<div>남은시간</div>
  					<span><span id="word">3</span> 일</span>
  					<div>후원자</div>
  					<span><span id="word">1098</span> 명</span>
  			
  				</div>
  		
  			<div id="div_box">
  				<div><p><b>펀딩 진행중</b><br>
	  				목표 금액인 7,000,000원이 모여야만 결제됩니다.
						결제는 2020년 12월 24일에 다함께 진행됩니다.
						후원이 고민되신다면 눌러보세요.</p>
  				</div>
  			</div>
  			<div>
			<span style= "float:left;">
				<button type="button" id="btn_projectPush"
					onclick="alert('이 프로젝트를 밀어주시겠습니까?')" class="btnPush"><b>프로젝트 밀어주기</b></button></span>
				<button type="button" id="images2"
					onclick="alert('이 프로젝트는 Like가 불가능합니다.')" class="btnPush"><img src="../img/likeImg.png" width="32px" height="32px" alt="좋아요" style="outline:none; border:none;margin-left:10px; margin-top: -15px"></button>
				<button type="button" id="images3"
					onclick="alert('이 프로젝트는 공유를 지원하지 않습니다.')" class="btnPush"><img src="../img/shareImg.png" width="31px" height="31px" style="margin-left: 8px; margin-top: 7.5px;" alt="공유" class=""></button></span>
			
  			</div>
  		</div>
  		</div>
  		
  	</div>
  </div>


</header>