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
	href="<%=request.getContextPath()%>/css/owl.carousel.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/animate.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/main.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/top.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/main_footer.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/project_Upload.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/quick-website.css">

<!-- Spoca Han Sans 폰트 -->
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSans-kr.css'
	rel='stylesheet' type='text/css'>
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSans-jp.css'
	rel='stylesheet' type='text/css'>

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
		<h3 class="animated infinite bounce delay-2s">눈길을 사로잡는 제목</h3>
	</div>
	<!-- 타이틀 끝 -->

	<!-- 확인사항 배너 -->
	<div class="announce_b" style="margin-bottom: 5px;">
		<p>공개검토 요청 전에 어떤 것을 확인해야 할까요?</p>
	</div>
	<div class="announce_g" style="margin-bottom: 20px;">
		<p>
			<i data-feather="alert-circle"></i> 프로젝트를 개설하려면 네 개의 섹션을 완성해야 합니다.
		</p>
	</div>
	<!-- 확인사항 배너 끝-->

	<!-- 폼 입력 시작 -->
	<form action="" name="projectUploadFrm" method="post">

		<div class="container">
			<!-- 테스트 -->
			<div id="accordion-2" class="accordion accordion-spaced">

				<!-- Accordion card 1 -->
				<div class="card">
					<div class="card-header py-4" id="heading-2-1"
						data-toggle="collapse" role="button" data-target="#collapse-2-1"
						aria-expanded="false" aria-controls="collapse-2-1">
						<h6 class="mb-0">
							<i data-feather="file" class="mr-3"></i>1. 프로젝트 개요
						</h6>
					</div>
					<div id="collapse-2-1" class="collapse"
						aria-labelledby="heading-2-1" data-parent="#accordion-2">
						<div class="card-body">
							<p>프로젝트개요</p>
							<div class="projectBox">
								<div>

									<div>
										<label for="projectName">프로젝트 제목</label> <label
											for="projectName">프로젝트에 멋진 제목을 붙여주세요. 감정에 호소하는 제목보다는
											만드시려는 창작물, 작품명, 혹은 프로젝트의 주제가 드러나게 써주시는 것이 좋습니다. 공간이 부족한 곳에 쓰일
											7자 이내의 짧은 제목도 정해주세요. </label> <br> <input type="text"
											name="projectName" placeholder="제목을 입력하세요" maxlength="22">
									</div>

									<br>

									<div>
										<label for="fileName">프로젝트 대표이미지</label> <br> <input
											type="file" name="fileName">
									</div>

									<br>

									<div>
										<label for="projectDetail">프로젝트 요약</label> <br> <label
											for="projectDetail">후원자 분들에게 본 프로젝트를 간략하게 소개해 봅시다.</label>
										<textarea rows="3" cols="130" name="projectDetail"
											placeholder="프로젝트 요약을 입력해주세요"></textarea>
									</div>

									<br>

									<div>
										<label for="ctNo">프로젝트 카테고리</label> <br> <label
											for="ctNo">프로젝트의 성격에 맞는 카테고리를 선택해 주세요. (프로젝트 성격과 맞지
											않는 카테고리를 선택하실 시 후원자가 해당 프로젝트를 찾기 어려워지기에 에디터에 의해 조정될 수 있습니다.)</label>
										<br> <select name="category">
											<option value="1">제품디자인</option>
											<option value="2">문구도서</option>
											<option value="3">문화예술</option>
											<option value="4">푸드</option>
											<option value="5">패션</option>
										</select>
									</div>
								</div>
							</div>

							<br>

							<p>창작자 정보</p>
							<div class="projectBox">
								<div>
									<div>
										<label for="fileName">프로필 이미지</label> <br> 창작자님 개인이나 팀의
										사진을 올려주세요. 얼굴이 나온 사진을 넣으면 프로젝트의 신뢰성 향상에 도움이 됩니다. <br> 파일
										형식은 jpg, png 또는 gif로, 사이즈는 가로 200px, 세로 200px 이상으로 올려주세요. <input
											type="file" name="fileName">
									</div>

									<br>

									<div>
										<label for="name">창작자 이름</label> <br> <input type="text"
											name="name" disabled="disabled" value="회원이름"
											style="width: 20%;">
									</div>

									<br>

									<div>
										<label for="memberIntro">창작자 소개</label> <br>
										<textarea rows="3" cols="130" name="memberIntro"
											placeholder="창작자님의 이력과 간단한 소개를 써 주세요."></textarea>
									</div>
								</div>
							</div>
							<!-- box -->
						</div>
					</div>
				</div>

				<!-- Accordion card 2 -->
				<div class="card">
					<div class="card-header py-4" id="heading-2-2"
						data-toggle="collapse" role="button" data-target="#collapse-2-2"
						aria-expanded="false" aria-controls="collapse-2-2">
						<h6 class="mb-0">
							<i data-feather="unlock" class="mr-3"></i>2. 펀딩 및 선물 구성
						</h6>
					</div>
					<div id="collapse-2-2" class="collapse"
						aria-labelledby="heading-2-2" data-parent="#accordion-2">
						<div class="card-body">
							<p>펀딩 목표 설정</p>
							<div class="projectBox">
								<div>
									<div>
										<label for="goalAmount">목표 금액</label> <label for="goalAmount">이번
											프로젝트를 통해 모으고자 하는 펀딩 목표 금액이 얼마인가요? 마감일 자정까지 목표 금액을 100% 이상
											달성하셔야만 모인 후원금이 결제 됩니다. 막판에 후원을 취소하는 후원자들도 있는 점을 감안해 10% 이상 초과
											달성을 목표로 하시는게 안전합니다. (목표 금액은 제작비, 선물 배송비, 창작자의 인건비, 예비 비용 등을
											고려하시기 바랍니다.)<span style="color: #FF6F40;">5,000원 이상인
												금액을 입력해주세요.</span>
										</label> <br> <input type="number" name="goalAmount">원
									</div>
								</div>
							</div>
							<br>
							<p>펀딩 기간 설정</p>
							<div class="projectBox">
								<div>
									<div>
										<label for="goalAmount">프로젝트 공개일시</label>
										<p>
											<strong>심사 승인 후</strong>, 설정하신 일시에 <strong>프로젝트가
												자동으로 공개</strong>되니 신중하게 정해주세요. 설정하신 공개일시와 관계없이 프로젝트를 직접 공개하실 수도 있습니다.
										</p>
										<!-- 달력넣기 -->
										일
										<!-- 시간넣기 -->
										에 펀딩을 시작합니다.
									</div>
									<div>
										<!-- 공개일시를 먼저 선택해야 사용가능함 disable false -->
										<label for="duedate">프로젝트 마감일시</label>
										<p>
											<!-- 위에서 설정한 걸로 넣기 날짜 -->
											<strong>마감일을 정할 때 주의할 점</strong><br> 프로젝트는 <span
												style="color: #FF6F40;">0000년 00월 00일</span>로 부터 최대 60일 동안
											진행하실 수 있고 마감일 자정에 종료됩니다. 이미 선물을 만드셨다면, 선물 실행일 중에 마감일보다 이른 날짜가
											있지 않은지 꼭 확인해주세요.
										</p>
										<strong><p>
												0000년 00월 00일 로부터
												<!-- 위 아래 버튼 -->
												일 뒤인
												<!-- 달력 -->
												에 펀딩을 마감합니다.
											</p> </strong>
										<!-- 달력넣기 -->
										일
										<!-- 시간넣기 -->
										에 펀딩을 시작합니다.
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- Accordion card 3 -->
				<div class="card">
					<div class="card-header py-4" id="heading-2-3"
						data-toggle="collapse" role="button" data-target="#collapse-2-3"
						aria-expanded="false" aria-controls="collapse-2-3">
						<h6 class="mb-0">
							<i data-feather="folder" class="mr-3"></i>3. 스토리텔링
						</h6>
					</div>
					<div id="collapse-2-3" class="collapse"
						aria-labelledby="heading-2-3" data-parent="#accordion-2">
						<div class="card-body">
							<p>Anim pariatur cliche reprehenderit, enim eiusmod high life
								accusamus terry richardson ad squid. 3 wolf moon officia aute,
								non cupidatat skateboard dolor brunch. Food truck quinoa
								nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua
								put a bird on it squid single-origin coffee nulla assumenda
								shoreditch et.</p>
						</div>
					</div>
				</div>

				<!-- Accordion card 4 -->
				<div class="card">
					<div class="card-header py-4" id="heading-2-4"
						data-toggle="collapse" role="button" data-target="#collapse-2-4"
						aria-expanded="false" aria-controls="collapse-2-3">
						<h6 class="mb-0">
							<i data-feather="folder" class="mr-3"></i>4. 계좌 설정
						</h6>
					</div>
					<div id="collapse-2-4" class="collapse"
						aria-labelledby="heading-2-4" data-parent="#accordion-2">
						<div class="card-body">
							<p>Anim pariatur cliche reprehenderit, enim eiusmod high life
								accusamus terry richardson ad squid. 3 wolf moon officia aute,
								non cupidatat skateboard dolor brunch. Food truck quinoa
								nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua
								put a bird on it squid single-origin coffee nulla assumenda
								shoreditch et.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div style="text-align: center;margin-bottom: 50px;">
			<input type="submit" class="button" value="검토 요청하기">
		</div>
	</form>
	<!-- 테스트 -->


	<footer>
		<%@ include file="../inc/bottom.jsp"%>
	</footer>

	</div>

	<!--Required JS files-->
	<script src="<%=request.getContextPath()%>/js/jquery-2.2.4.min.js"></script>
	<script src="<%=request.getContextPath()%>/js/vendor/popper.min.js"></script>
	<script src="<%=request.getContextPath()%>/js/vendor/bootstrap.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/js/vendor/owl.carousel.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/js/vendor/isotope.pkgd.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/js/vendor/jquery.barfiller.js"></script>
	<script src="<%=request.getContextPath()%>/js/vendor/loopcounter.js"></script>
	<script src="<%=request.getContextPath()%>/js/vendor/slicknav.min.js"></script>
	<script src="<%=request.getContextPath()%>/js/active.js"></script>
	<script src="<%=request.getContextPath()%>/js/feather.min.js"></script>

</body>
</html>

