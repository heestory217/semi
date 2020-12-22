<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>펀딩고 :: FUNDINGO</title>
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,500,500i,700,700i"
	rel="stylesheet">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/owl.carousel.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/barfiller.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/animate.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/font-awesome.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/bootstrap.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/main.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/top.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/css_jayeon.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/main_footer.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/discover.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/myPageOption.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/memberRegister.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/login.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/feeAndFundingPolicy.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/project_Upload.css">

<!-- Spoca Han Sans 폰트 -->
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSans-kr.css'
	rel='stylesheet' type='text/css'>
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSans-jp.css'
	rel='stylesheet' type='text/css'>


<script
	src="<%=request.getContextPath()%>/assets/js/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
	
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
						<a href="#" class="menu-style">< 내 프로젝트</a>
					</nav>
				</div>

				<div class="logo-column">
					<a href="<%=request.getContextPath()%>/mainArticle.jsp"
						class="f_logo"> <img
						src="<%=request.getContextPath()%>/assets/img/topLogo.png"
						alt="로고 이미지">
					</a>
				</div>

				<div class="nav-column">
					<nav id="menu" class="d-lg-block right-nav-detail"
						style="padding-right: 70px;">
						<a href="<%=request.getContextPath()%>/helpCenter/mainCenter.jsp"
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
		<h3>
			<span class="button-2">준비중</span>눈길을 사로잡는 제목
		</h3>
	</div>
	<!-- 타이틀 끝 -->

	<!-- 확인사항 배너 -->
	<div class="announce_b" style="margin-bottom: 5px;">
		<p>공개검토 요청 전에 어떤 것을 확인해야 할까요?</p>
	</div>
	<div class="announce_g">
		<p>
			<i class="fa fa-bullhorn"></i>&nbsp;&nbsp;프로젝트를 개설하려면 네 개의 섹션을 완성해야
			합니다.
		</p>
	</div>
	<!-- 확인사항 배너 끝-->


	<div class="tabs-area spb" style="margin-top: 15px;">
		<div class="container">
			<ul class="nav tabs-nav" id="pills-tab" role="tablist">
				<li class="nav-item"><a class="nav-link active"
					id="pills-home-tab" data-toggle="pill" href="#프로젝트"><span>프로젝트
							개요</span> </a></li>
				<li class="nav-item"><a class="nav-link" id="pills-profile-tab"
					data-toggle="pill" href="#펀딩선물"> <span>펀딩 및 선물 구성</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" id="pills-profile-tab"
					data-toggle="pill" href="#스토리텔링"> <span>스토리텔링</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" id="pills-profile-tab"
					data-toggle="pill" href="#계좌설정"> <span>계좌 설정</span>
				</a></li>

			</ul>
			<div class="tab-content" id="pills-tabContent">
				<div class="tab-pane fade show active" id="프로젝트" role="tabpanel">
					<!-- 입력 시작 -->
					<p>프로젝트개요</p>
					<div class="projectBox">
						<form action="">
							<label for="projectName">프로젝트 제목</label> <label for="projectName">프로젝트에
								멋진 제목을 붙여주세요. 감정에 호소하는 제목보다는 만드시려는 창작물, 작품명, 혹은 프로젝트의 주제가 드러나게
								써주시는 것이 좋습니다. 공간이 부족한 곳에 쓰일 7자 이내의 짧은 제목도 정해주세요. </label> <br> <input
								type="text" name="projectName" placeholder="제목을 입력하세요"
								maxlength="22"> <br> <label for="fileName">프로젝트
								대표이미지</label> <br> <input type="file" name="fileName"> <br>
							<label for="projectDetail">프로젝트 요약</label> <br> <label
								for="projectDetail">후원자 분들에게 본 프로젝트를 간략하게 소개해 봅시다.</label>
							<textarea rows="3" cols="130" name="projectDetail"
								placeholder="프로젝트 요약을 입력해주세요"></textarea>
							<br> <label for="ctNo">프로젝트 카테고리</label> <br> <label
								for="ctNo">프로젝트의 성격에 맞는 카테고리를 선택해 주세요. (프로젝트 성격과 맞지 않는
								카테고리를 선택하실 시 후원자가 해당 프로젝트를 찾기 어려워지기에 에디터에 의해 조정될 수 있습니다.)</label> <br>
							<select name="category">
								<option value="1">제품디자인</option>
								<option value="2">문구도서</option>
								<option value="3">문화예술</option>
								<option value="4">푸드</option>
								<option value="5">패션</option>
							</select>
						</form>
					</div>
					<br>
					<p>창작자 정보</p>
					<div class="projectBox">
						<form action="">
							<label for="fileName">프로필 이미지</label> <br> 창작자님 개인이나 팀의 사진을
							올려주세요. 얼굴이 나온 사진을 넣으면 프로젝트의 신뢰성 향상에 도움이 됩니다. <br> 파일 형식은
							jpg, png 또는 gif로, 사이즈는 가로 200px, 세로 200px 이상으로 올려주세요. <input
								type="file" name="fileName"> <br> <label for="name">창작자
								이름</label> <br> <input type="text" name="name" disabled="disabled"
								value="회원이름" style="width: 20%;"> <br> <label
								for="memberIntro">창작자 소개</label> <br>
							<textarea rows="3" cols="130" name="memberIntro"
								placeholder="창작자님의 이력과 간단한 소개를 써 주세요."></textarea>
						</form>
					</div>
				</div>
				<br>

				<div class="tab-pane fade" id="펀딩선물" role="tabpanel">
					<p>펀딩선물</p>
				</div>
				<div class="tab-pane fade" id="스토리텔링" role="tabpanel">
					<p>스토리텔링</p>
				</div>
				<div class="tab-pane fade" id="계좌설정" role="tabpanel">
					<p>계좌설정</p>
				</div>
			
			
			</div>
			
			<!-- 버튼 -->
			<div class="announce_w">
				<p>
					<span class="button">이전</span> <span class="button">다음</span>
				</p>
			</div>
			<!-- 버튼 -->
		</div>


		<!-- 입력 끝-->

		<footer>
			<%@ include file="../inc/bottom.jsp"%>
		</footer>



	</div>

	<!--Required JS files-->
	<script
		src="<%=request.getContextPath()%>/assets/js/jquery-2.2.4.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/assets/js/vendor/popper.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/assets/js/vendor/bootstrap.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/assets/js/vendor/owl.carousel.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/assets/js/vendor/isotope.pkgd.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/assets/js/vendor/jquery.barfiller.js"></script>
	<script
		src="<%=request.getContextPath()%>/assets/js/vendor/loopcounter.js"></script>
	<script
		src="<%=request.getContextPath()%>/assets/js/vendor/slicknav.min.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/active.js"></script>

</body>
</html>

