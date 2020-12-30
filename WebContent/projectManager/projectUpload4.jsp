<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>펀딩고 :: FUNDINGO</title>
<link href="https://fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,500,500i,700,700i" rel="stylesheet">
<link rel="stylesheet" href="<c:url value='/css/owl.carousel.css'/>">
<link rel="stylesheet" href="<c:url value='/css/animate.css'/>">
<link rel="stylesheet" href="<c:url value='/css/bootstrap.min.css'/>">
<link rel="stylesheet" href="<c:url value='/css/main.css'/>">
<link rel="stylesheet" href="<c:url value='/css/top.css'/>">
<link rel="stylesheet" href="<c:url value='/css/main_footer.css'/>">
<link rel="stylesheet" href="<c:url value='/css/quick-website.css'/>">
<link rel="stylesheet" href="<c:url value='/css/projectUpload.css'/>">
<link rel="stylesheet" href="<c:url value='/css/jquery-ui.css'/>">
<link rel="stylesheet" href="<c:url value='/css/gift.css'/>">

<!--Required JS files-->
<script src="<c:url value='/js/jquery-2.2.4.min.js'/>"></script>
<script src="<c:url value='/js/vendor/popper.min.js'/>"></script>
<script src="<c:url value='/js/vendor/bootstrap.min.js'/>"></script>
<script src="<c:url value='/js/vendor/owl.carousel.min.js'/>"></script>
<script src="<c:url value='/js/vendor/isotope.pkgd.min.js'/>"></script>
<script src="<c:url value='/js/vendor/jquery.barfiller.js'/>"></script>
<script src="<c:url value='/js/vendor/loopcounter.js'/>"></script>
<script src="<c:url value='/js/vendor/slicknav.min.js'/>"></script>
<script src="<c:url value='/js/active.js'/>"></script>

<!-- Spoca Han Sans 폰트 -->
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSans-kr.css' rel='stylesheet' type='text/css'>
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSans-jp.css' rel='stylesheet' type='text/css'>

<script type="text/javascript">

$(function(){
	//유효성 검사
	$('form[name=BankFrm]').submit(function(){
	     if($('#bankName').val().length<1){
            alert('은행명을 입력해주세요');
            event.preventDefault();
            $('#bankName').focus();
         }else if($('#accountNum').val().length<1){
       		alert('계좌번호를 입력해주세요');
             event.preventDefault();
            $('#accountNum').focus();
         }else if($('#ownerName').val().length<1){
            alert('예금주명을 입력해주세요');
             event.preventDefault();
            $('#ownerName').focus();
         }else if($('#ownerBirth').val().length<1){
            alert('생년월일을 입력해주세요');
             event.preventDefault();
            $('#ownerBirth').focus();
         }else if(!validate_num($('#accountNum').val())){
			alert('계좌번호는 숫자만 입력가능합니다.');
			$('#accountNum').focus();
			event.preventDefault();
         }else if(!validate_num($('#ownerBirth').val())){
			alert('생년월일은 숫자 6자리로 입력해주세요(예:950217)');
			$('#ownerBirth').focus();
			event.preventDefault();
		 }
	});	
     
	function validate_num(num){
		var pattern = new RegExp(/^[0-9]*$/g);
		return pattern.test(num);
	}
	
});//readyend
	
</script>

</head>
<body>
	<!-- 헤더시작 -->
	<header class="header-wrap">
		<div class="container top_container">
			<div class="row">
				<div class="nav-column left-nav">
					<nav id="menu" class="d-lg-block"
						style="float: left; padding-left: 50px;">
						<a href="<c:url value='/GoMember/MypageOption.do'/>" class="menu-style">< 내 프로젝트</a>
					</nav>
				</div>

				<div class="logo-column">
					<a href="<c:url value='/mainArticle.do'/>" class="f_logo"> 
					<img src="<c:url value='/img/topLogo.png'/>" alt="로고 이미지">
					</a>
				</div>

				<div class="nav-column">
					<nav id="menu" class="d-lg-block right-nav-detail"
						style="padding-right: 70px;">
						<a href="<c:url value='/helpCenter/mainCenter.do'/>"
							class="login"> <span>헬프센터</span>
						</a>
					</nav>
				</div>
			</div>
		</div>
	</header>
	<!-- 헤더끝 -->
<body>
		<!-- 타이틀 시작 -->
		<div class="announce_title">
			<h3 class="animated infinite bounce delay-2s" >4. 창작자 정보 및 계좌 설정</h3>
		</div>
		<!-- 타이틀 끝 -->
	
		<!-- 확인사항 배너 -->
		<div class="announce_b" style="margin-bottom: 5px;">
			<p><a href="<c:url value='/helpCenter/mainCenter.do'/>">공개검토 요청 전에 어떤 것을 확인해야 할까요?</a></p>
		</div>
		<div class="announce_g" style="margin-bottom: 20px;">
			<p>
				<img alt="notice" src="<c:url value='/icons/alert-circle.svg'/>">&nbsp;&nbsp;프로젝트를 개설하려면 네 개의 섹션을 완성해야 합니다.
			</p>
		</div>
		<!-- 확인사항 배너 끝-->
	
	
	<div class="container">
		<!-- Accordion card 4 -->
			<div><!-- 가로 지정 -->
				<div class="card-body">
					<!--계좌 정보 폼 입력 시작 : bank 테이블 insert-->
					<!--창작자 정보 수정 (회원 수정 페이지로 이동): /GoMember/memberEdit.do-->
					<form action="<c:url value='/projectManager/projectUpload4_ok.do'/>" name="BankFrm" method="post">
						
						<input type="hidden" name="projectNo" value="${projectNo}"/>
							
							<p style="color: #2d3666;font-size: 1.5em;">이메일</p>
							<div class="projectBox">
								<div>
									<div>
										<label for="email">이메일 주소</label>
										<span id="email">${email}</span>
									</div>
								</div>
							</div><!-- projectBox -->
							
<!--							<br>
							
 							<p style="color: #2d3666;font-size: 1.5em;">본인 인증</p>
							<div class="projectBox">
								<div>
									<div>
										<label for="hp">휴대폰 번호</label>
										<input type="text" name="hp">
									</div>
								</div>
							</div> projectBox -->
							
							<br>

							<p style="color: #2d3666;font-size: 1.5em;">입금 계좌</p>
							<div class="projectBox">
								<div>
									<div>
										<label for="private" style="cursor:pointer;">
										<input type="radio" name="businessFlag" id="private" value="N"
											<c:if test="${bVo.businessFlag eq'N'}">checked</c:if>
											<c:if test="${empty bVo.businessFlag}">checked</c:if>/>개인</label>
										<label for="business" style="cursor:pointer;width: 250px;">
										<input type="radio" name="businessFlag" id="business" value="B"
											<c:if test="${bVo.businessFlag eq'B'}">checked</c:if>/>사업자(개인사업자 포함)</label>
									</div>
									<br>
									
									<input type="hidden" name="bankNo" value="${bVo.bankNo}"> 
									
									<div>
										<label for="bankName">은행명</label> 
										<input type="text" name="bankName" id="bankName" maxlength="6" value="${bVo.bankName}" >
									</div>
										
									<div>
										<label for="bankName">계좌번호</label>
										<input type="text" name="accountNum" id="accountNum" maxlength="16" value="${bVo.accountNum}">
									</div>
									
									<div>
										<label for="bankOwner">예금주명</label> 
										<input type="text" name="ownerName" id="ownerName" maxlength="6" value="${bVo.ownerName}">
									</div>
										
									<div>
										<label for="birth">예금주 생년월일</label> 
										<input type="text" name="ownerBirth" id="ownerBirth" maxlength="6" value="${bVo.ownerBirth}">
									</div>
									
								</div>
							</div><!-- projectBox -->
							<br>
							<p style="color: #2d3666;font-size: 1.5em;">창작자 정보</p>
							<div class="projectBox">
								<div>
									<div>
										<label for="name">창작자 이름</label> <br> 
										<p>${name }</p>
									</div>
									<div>
										<p style="color: #FF6F40;">※회원정보 수정페이지에서 프로필 이미지등록 및 창작자님의 이력과 간단한 소개를 써 주세요.</p> 
										<p style="font-size: 0.9em">프로필 이미지는 창작자님 개인이나 팀의 사진을 올려주세요.
										<br>얼굴이 나온 사진을 넣으면 프로젝트의 신뢰성 향상에 도움이 됩니다.
										<br>파일 형식은 jpg, png 또는 gif로, 사이즈는 가로 200px, 세로 200px 이상으로 올려주세요.</p> 
									</div>
								</div>
							</div><!-- projectBox -->
																
							<!-- 검토버튼 -->
							<div style="text-align: center; margin: 20px 0;">
								<a href="<c:url value='/projectManager/projectUpload3.do?projectNo=${projectNo }'/>"><p class="button-2">이전</p></a>
								<input type="submit" class="button" value="프로젝트 검토요청">
							</div>
							
						</form><!-- 입력폼 끝 -->
					</div>
				</div><!-- card -->
		</div><!-- container -->
	<div style="text-align: center; margin-bottom: 50px;"></div>

	<footer>
		<%@ include file="../inc/bottom.jsp"%>
	</footer>
	
</body>
</html>
