<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Flat Pro || Buisness HTML template</title>

<!-- Required CSS files -->
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
	href="<%=request.getContextPath()%>/assets/css/slicknav.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/main.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/main_footer.css">
</head>
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

<!-- Spoca Han Sans 폰트 -->
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSans-kr.css'
	rel='stylesheet' type='text/css'>
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSans-jp.css'
	rel='stylesheet' type='text/css'>

</head>

<body>
	<header class="header-wrap">

		<div class="container top_container">
			<div class="row">
				<div class="nav-column left-nav">
					<div class="logo-column">
						<a href="<%=request.getContextPath()%>/mainArticle.jsp"
							class="f_logo"> <img
							src="<%=request.getContextPath()%>/assets/img/topLogo.png"
							alt="로고 이미지">
						</a>
						<nav id="menu" class="d-lg-block right-nav-detail">
							<a
								href="<%=request.getContextPath()%>/helpCenter/publicReviewPolicy.jsp">
								<span>헬프센터</span>
							</a>
						</nav>
					</div>
				</div>
				<div class="nav-column right-nav" style="margin-left: 54%;">
					<nav id="menu" class="d-lg-block right-nav-detail">
						</span> <a
							href="<%=request.getContextPath()%>/fg_contact.jsp" class="login">
							<span>1:1 문의하기</span>
						</a>
					</nav>
				</div>
			</div>
		</div>
	</header>
<body>
	<div class="page-title sp"
		style="background-image: url(assets/img/page-title.jpg)">
		<div class="container text-center">
			<h2>약관 및 정책</h2>
			<p>펀딩고의 약관 및 정책 정보를 담은 페이지입니다.<br>상세 문의는 1:1 문의하기를 이용해주세요.</p>
		</div>
	</div>
	<div class="skill-area spb">
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<div class="skill-title">
						<h2>Our skills</h2>
						<p>Lorem ipsum dolor sit amet conse</p>
						<a href="#" class="button">See our work</a>
					</div>
				</div>
				<div class="col-md-8">
					<div class="row">
						<div class="col-sm-6 single-skill">
							<h4>HTML</h4>
							<div class="barfiller">
								<span class="tip"></span> <span class="fill"
									data-percentage="50"></span>
							</div>
						</div>
						<div class="col-sm-6 single-skill">
							<h4>PHP</h4>
							<div class="barfiller">
								<span class="tip"></span> <span class="fill"
									data-percentage="50"></span>
							</div>
						</div>
						<div class="col-sm-6 single-skill">
							<h4>JavaScript</h4>
							<div class="barfiller">
								<span class="tip"></span> <span class="fill"
									data-percentage="50"></span>
							</div>
						</div>
						<div class="col-sm-6 single-skill">
							<h4>CSS</h4>
							<div class="barfiller">
								<span class="tip"></span> <span class="fill"
									data-percentage="50"></span>
							</div>
						</div>
						<div class="col-sm-6 single-skill">
							<h4>AJAX</h4>
							<div class="barfiller">
								<span class="tip"></span> <span class="fill"
									data-percentage="50"></span>
							</div>
						</div>
						<div class="col-sm-6 single-skill">
							<h4>Database</h4>
							<div class="barfiller">
								<span class="tip"></span> <span class="fill"
									data-percentage="50"></span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="tabs-area spb">
		<div class="container">
			<ul class="nav tabs-nav" id="pills-tab" role="tablist">
				<li class="nav-item"><a class="nav-link active"
					id="pills-home-tab" data-toggle="pill" href="#mission"> <i
						class="fa fa-puzzle-piece"></i> <span>이용약관</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" id="pills-profile-tab"
					data-toggle="pill" href="#vision"> <i class="fa fa-binoculars"></i>
						<span>개인정보 처리방침</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" id="pills-profile-tab"
					data-toggle="pill" href="#funds"> <i class="fa fa-pie-chart"></i>
						<span>공개검토 기준</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" id="pills-profile-tab"
					data-toggle="pill" href="#history"> <i class="fa fa-qrcode"></i>
						<span>프로젝트 선정 기준</span>
				</a></li>

			</ul>
			<div class="tab-content" id="pills-tabContent">
				<div class="tab-pane fade show active" id="mission" role="tabpanel">
					<div class="row">
						<div class="col-md-6">
							<img src="http://lorempicsum.com/simpsons/490/200/2" alt="">
						</div>
						<div class="col-md-6">
							<p>When I was just starting 6th grade I got my first job.
								Paperboy! Boy, was I excited. At that time I had spent a lot of
								time actually playing the video official game Paperboy disked.</p>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
								sed do eiusmod tempor incididunt ut labore et dolore magna
								aliqua. Ut enim ad minim veniam, quis nostrud exercitation
								ullamco laboris nisi ut aliquip. You would need to research
								online, for newspapers that are in your area.</p>
						</div>
					</div>
				</div>
				<div class="tab-pane fade" id="vision" role="tabpanel">
					<div class="row">
						<div class="col-md-6">
							<p>
								<strong>When I was just starting 6th grade I got my
									first job. Paperboy! Boy, was I excited. At that time I had
									spent a lot of time actually playing the video official game
									Paperboy disked.</strong>
							</p>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
								sed do eiusmod tempor incididunt ut labore et dolore magna
								aliqua. Ut enim ad minim veniam, quis nostrud exercitation
								ullamco laboris nisi ut aliquip.</p>
						</div>
						<div class="col-md-6">
							<p>When I was just starting 6th grade I got my first job.
								Paperboy! Boy, was I excited. At that time I had spent a lot of
								time actually playing the video official game Paperboy disked.</p>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
								sed do eiusmod tempor incididunt ut labore et dolore magna
								aliqua. Ut enim ad minim veniam, quis nostrud exercitation
								ullamco laboris nisi ut aliquip. You would need to research
								online, for newspapers that are in your area.</p>
						</div>
					</div>
				</div>
				<div class="tab-pane fade" id="funds" role="tabpanel">
					<div class="row">
						<div class="col-md-6">
							<p>
								<strong>When I was just starting 6th grade I got my
									first job. Paperboy! Boy, was I excited. At that time I had
									spent a lot of time actually playing the video official game
									Paperboy disked.</strong>
							</p>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
								sed do eiusmod tempor incididunt ut labore et dolore magna
								aliqua. Ut enim ad minim veniam, quis nostrud exercitation
								ullamco laboris nisi ut aliquip.</p>
						</div>
						<div class="col-md-6">
							<img src="http://lorempicsum.com/simpsons/490/200/3" alt="">
						</div>
					</div>
				</div>
				<div class="tab-pane fade" id="history" role="tabpanel">
					<div class="row">
						<div class="col-md-6">
							<img src="http://lorempicsum.com/simpsons/490/100/3" alt="">
							<br> <br>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
								sed do eiusmod tempor incididunt ut labore et dolore magna
								aliqua. Ut enim ad minim veniam, quis nostrud exercitation
								ullamco laboris nisi utad minim veniam, quis nostrud
								exercitation ullamco laboris nisi ut aliquip.</p>
						</div>
						<div class="col-md-6">
							<p>
								<strong>When I was just starting 6th grade I got my
									first job. Paperboy! Boy, was I excited. At that time I had
									spent a lot of time actually playing the video official game
									Paperboy disked.</strong>
							</p>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
								sed do eiusmod tempor incididunt ut labore et dolore magna
								aliqua. Ut enim ad minim veniam, quis nostrud exercitation
								ullamco laboris nisi ut aliquip. You would need to research
								online, for newspapers that are in your area.</p>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
	<div class="spb">
		<div class="brand-area">
			<div class="container">
				<div class="row">
					<div class="col-md-3 col-6 single-brand">
						<div class="inner">
							<a href="#"> <img src="assets/img/brand1.png" alt="">
							</a>
						</div>
					</div>
					<div class="col-md-3 col-6 single-brand">
						<div class="inner">
							<a href="#"> <img src="assets/img/brand2.png" alt="">
							</a>
						</div>
					</div>
					<div class="col-md-3 col-6 single-brand">
						<div class="inner">
							<a href="#"> <img src="assets/img/brand3.png" alt="">
							</a>
						</div>
					</div>
					<div class="col-md-3 col-6 single-brand">
						<div class="inner">
							<a href="#"> <img src="assets/img/brand4.png" alt="">
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

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

