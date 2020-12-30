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

<!-- 에디터 -->
<script type="text/javascript" src="<c:url value='/ckeditor/ckeditor.js'/>"></script>

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

<!-- 달력 -->
<script src="<c:url value='/js/jquery-3.5.1.min.js'/>"></script>
<script src="<c:url value='/js/jquery-ui.js'/>"></script>

<!-- 시계 -->
<!-- <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css">	
<script src="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"></script> -->

<!-- Spoca Han Sans 폰트 -->
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSans-kr.css' rel='stylesheet' type='text/css'>
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSans-jp.css' rel='stylesheet' type='text/css'>


<script type="text/javascript">
$(function(){
	//제목 길이 안내
	$('#projectName').keyup(function(){
		if($('#projectName').val().length==50){
			$('#title_length').text('※최대 50자 이내의 제목만 입력가능합니다. (현재 글자수 : 50자)');
		}else{
			$('#title_length').text('');
		}
	});
	
	//유효성 검사
	$('form[name=pjUploadFrm]').submit(function(){
		check();
	});
	
	//카테고리 선택
 	$('#ctNo').children().each(function(){
		if($(this).val()=="${vo.ctNo}"){
			$(this).prop("selected","selected"); // attr적용안될경우 prop으로 
		}
	});
});//readyend

function check(){
	if($('#projectName').val().length<1){
		alert('프로젝트 제목을 입력하세요.');
		event.preventDefault();
		$('#projectName').focus();
	}else if($('#projectDetail').val().length<1){
		alert('프로젝트 요약을 입력하세요.');
		event.preventDefault();
		$('#projectDetail').focus();
	}
}

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
			<h3 class="animated infinite bounce delay-2s" >어서오세요, 창작자님!</h3>
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
		<!-- Accordion card 1 -->
		<div><!-- 가로 지정 -->
			<div class="card-body">
				<!-- 프로젝트 기본등록 폼 입력 시작 : 프로젝트 테이블 insert-->
				<form action="<c:url value='/projectManager/projectUpload_ok.do'/>" name="pjUploadFrm" method="post" enctype="multipart/form-data"> 
					
					<input type="text" name="projectNo" value="${projectNo}"/>
					<input type="text" name="oldfileName" value="${oldfileName}">
					
					<p style="color: #2d3666;font-size: 1.5em;" >프로젝트개요</p>
					<div class="projectBox">
						<div>
							<div>
								<label for="projectName"><span style="color: #FF6F40;">*</span>프로젝트 제목</label><br>
									<p>프로젝트에 멋진 제목을 붙여주세요. <br>감정에 호소하는 제목보다는
									만드시려는 창작물, 작품명, 혹은 프로젝트의 주제가 드러나게 써주시는 것이 좋습니다.  </p>
									<input type="text" id="projectName" name="projectName" placeholder="제목을 입력하세요" maxlength="50" value="${vo.projectName}">
									<br><span style="color: #FF6F40;" id="title_length"></span>
							</div>
							<br>
								<div>
								<label for="file"><span style="color: #FF6F40;">*</span>프로젝트 대표이미지</label><br> 
									<input type="file" name="upfile" value="${oldfileName}">
                        	   		<c:if test="${!empty vo.fileName}">
	                        			<span><b>첨부된 파일 : </b></span>
	                        	  		<span>${vo.originalFileName}</span>
                        	  		</c:if> 
								</div>
							<br>
							<br>
							<div>
								<label for="projectDetail"><span style="color: #FF6F40;">*</span>프로젝트 요약</label> <br> 
								<p>후원자 분들에게 본 프로젝트를 간략하게 소개해 봅시다.</p>
								<textarea rows="3" cols="130" name="projectDetail" id="projectDetail"
									placeholder="프로젝트 요약을 입력해주세요">${vo.projectDetail}</textarea>
							</div>
							<br>
							<div>
								<label for="ctNo"><span style="color: #FF6F40;">*</span>프로젝트 카테고리</label> <br> <p>프로젝트의 성격에 맞는 카테고리를 선택해 주세요. <br>(프로젝트 성격과 맞지
									않는 카테고리를 선택하실 시 후원자가 해당 프로젝트를 찾기 어려워지기에 에디터에 의해 조정될 수 있습니다.)</p>
								<select name="ctNo" id="ctNo">
									<option value="1">제품디자인</option>
									<option value="2">문구도서</option>
									<option value="3">문화예술</option>
									<option value="4">푸드</option>
									<option value="5">패션</option>
								</select>
							</div>
						</div>
					</div><!-- projectBox -->
				
					<div style="text-align: center; margin: 20px 0;">
						<input type="submit" class="button" value="저장하기">
						<a href="<c:url value='/projectManager/projectUpload2.do?projectNo=${projectNo }'/>" onclick="check();"><p class="button-2">다음</p></a>
					</div>
							
				</form><!-- 프로젝트 기본등록 폼 입력 끝-->
			</div>
		</div><!-- card -->
	</div><!-- container -->
		
	<div style="text-align: center; margin-bottom: 50px;"></div>

	<footer>
		<%@ include file="../inc/bottom.jsp"%>
	</footer>
	
</body>
</html>

