<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<div class="preloader">
	<span class="preloader-spin"></span>
</div>
<div class="site">


	<!-- header 위치 -->
	<%@ include file="inc/top.jsp"%>


	<!-- 메인이미지 슬라이드 시작 -->
	<div class="hero-slider">
		<div class="single-slide"
			style="background-image: url(<%=request.getContextPath()%>/assets/img/mainTopBanner1.PNG)">
			<div class="inner">
				<div class="container">
					<div class="row">
						<div class="col-lg-6">
							<div class="slide-content">
								<h1>내 맘대로 조합하는</h1>
								<h2>코로나 시대 필수품!</h2>
								<p>나와 당신을 지키는 가림막, 그 이상의 가림막</p>
								<div class="slide-btn">
									<a href="#" class="button">프로젝트 구경하기</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="single-slide"
			style="background-image: url(<%=request.getContextPath()%>/assets/img/mainTopBanner2.jpg)">
			<div class="inner">
				<div class="container">
					<div class="row justify-content-center">
						<div class="col-lg-6 text-center">
							<div class="slide-content">
								<h2 style="color: white;">좋아하는 게임의 OST를 만듭니다</h2>
								<p style="color: white;">콘솔 게임 감성으로 작화까지 하는 덕후들이 있다?</p>
								<div class="slide-btn">
									<a href="#" class="button">프로젝트 구경하기</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="single-slide"
			style="background-image: url(<%=request.getContextPath()%>/assets/img/mainTopBanner3.PNG)">
			<div class="inner">
				<div class="container">
					<div class="row">
						<div class="col-lg-6">
							<div class="slide-content">
								<h3>물과 햇빛 그리고</h3>
								<h2 style="color: white;">선인장으로 빚은 가치백</h2>
								<p style="color: #244E02;">친환경 비건 소재 가방</p>
								<div class="slide-btn">
									<a href="#" class="button">프로젝트 구경하기</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 메인이미지 슬라이드 끝 -->


	<!-- 첫번 째 프로젝트 시작 부분 -->
	<div class="portfolio-area sp" style="padding-bottom: 0;">
		<div class="container">
			<div class="section-title">
				<h2>주목할만한 프로젝트</h2>
				<p>다른 사람들은 누구의 꿈에 후원했을까요?</p>
			</div>
			<div class="row">
				<div class="single-portfolio col-md-4">
					<div class="inner">
						<div class="portfolio-img">
							<img
								src="<%=request.getContextPath()%>/assets/img/projectImage_1.JPG"
								alt="project-image">
							<div class="hover-content">
								<div>
									<a href="#" class="button">프로젝트 보러가기</a>
								</div>
							</div>
						</div>
						<div class="project-content">
							<a href="#"><h5>내 소중한 취향과 공간을 지켜주는 ‘세이프보드’ 가림막</h5></a>
							<div class="goal-percent">
								<span>78</span>%달성
							</div>
						</div>
					</div>
				</div>
				<div class="single-portfolio col-md-4">
					<div class="inner">
						<div class="portfolio-img">
							<img
								src="<%=request.getContextPath()%>/assets/img/projectImage_2.jpeg"
								alt="project-image">
							<div class="hover-content">
								<div>
									<a href="#" class="button">프로젝트 보러가기</a>
								</div>
							</div>
						</div>
						<div class="project-content">
							<a href="#"><h5>일회용카메라 프로젝트: 내가 찍은 사람이 그린 사진</h5></a>
							<div class="goal-percent">
								<span>78</span>%달성
							</div>
						</div>
					</div>
				</div>
				<div class="single-portfolio col-md-4">
					<div class="inner">
						<div class="portfolio-img">
							<img
								src="<%=request.getContextPath()%>/assets/img/projectImage_3.jpg"
								alt="project-image">
							<div class="hover-content">
								<div>
									<a href="#" class="button">프로젝트 보러가기</a>
								</div>
							</div>
						</div>
						<div class="project-content">
							<a href="#"><h5>반전 매력 을지로 가게들과 함께한 근사한 패브릭 제품들</h5></a>
							<div class="goal-percent">
								<span>78</span>%달성
							</div>
						</div>
					</div>
				</div>
				<div class="single-portfolio col-md-4">
					<div class="inner">
						<div class="portfolio-img">
							<img
								src="<%=request.getContextPath()%>/assets/img/projectImage_4.jpg"
								alt="project-image">
							<div class="hover-content">
								<div>
									<a href="#" class="button">프로젝트 보러가기</a>
								</div>
							</div>
						</div>
						<div class="project-content">
							<a href="#"><h5>Souvenir de 남해! 추억에 물들여지는 당신의 공간</h5></a>
							<div class="goal-percent">
								<span>78</span>%달성
							</div>
						</div>
					</div>
				</div>
				<div class="single-portfolio col-md-4">
					<div class="inner">
						<div class="portfolio-img">
							<img
								src="<%=request.getContextPath()%>/assets/img/projectImage_5.jpg"
								alt="project-image">
							<div class="hover-content">
								<div>
									<a href="#" class="button">프로젝트 보러가기</a>
								</div>
							</div>
						</div>
						<div class="project-content">
							<a href="#"><h5>LP커버는 보이는게 더 예쁘잖아요. 두루주 원목 LP 액자</h5></a>
							<div class="goal-percent">
								<span>78</span>%달성
							</div>
						</div>
					</div>
				</div>
				<div class="single-portfolio col-md-4">
					<div class="inner">
						<div class="portfolio-img">
							<img
								src="<%=request.getContextPath()%>/assets/img/projectImage_6.jpg"
								alt="project-image">
							<div class="hover-content">
								<div>
									<a href="#" class="button">프로젝트 보러가기</a>
								</div>
							</div>
						</div>
						<div class="project-content">
							<a href="#"><h5>진리의 세상: 어디에나 있지만, 어디에도 없는 아트 오브제</h5></a>
							<div class="goal-percent">
								<span>78</span>%달성
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-12 text-center" data-margin="40px 0 0">
					<a href="#" class="button">주목할만한 프로젝트 더보기</a>
				</div>
			</div>
		</div>
	</div>
	<!-- 첫번째 프로젝트 끝 부분 -->

	<!-- 두번째 프로젝트 시작 부분 -->
	<div class="portfolio-area sp">
		<div class="container">
			<div class="section-title">
				<h2>성공 임박 프로젝트</h2>
				<p>창작자들의 꿈이 현실이 되는 시간, 얼마 남지 않았어요!</p>
			</div>
			<div class="row">
				<div class="single-portfolio col-md-4">
					<div class="inner">
						<div class="portfolio-img">
							<img
								src="<%=request.getContextPath()%>/assets/img/projectImage_7.jpg"
								alt="project-image">
							<div class="hover-content">
								<div>
									<a href="#" class="button">프로젝트 보러가기</a>
								</div>
							</div>
						</div>
						<div class="project-content">
							<a href="#"><h5>개화기를 담은 점술 카드 "모던 레노먼드"</h5></a>
							<div class="goal-percent">
								<span>78</span>%달성
							</div>
						</div>
					</div>
				</div>
				<div class="single-portfolio col-md-4">
					<div class="inner">
						<div class="portfolio-img">
							<img
								src="<%=request.getContextPath()%>/assets/img/projectImage_8.jpg"
								alt="project-image">
							<div class="hover-content">
								<div>
									<a href="#" class="button">프로젝트 보러가기</a>
								</div>
							</div>
						</div>
						<div class="project-content">
							<a href="#"><h5>f o l d r i p. 종이 팝업 드리퍼</h5></a>
							<div class="goal-percent">
								<span>78</span>%달성
							</div>
						</div>
					</div>
				</div>
				<div class="single-portfolio col-md-4">
					<div class="inner">
						<div class="portfolio-img">
							<img
								src="<%=request.getContextPath()%>/assets/img/projectImage_9.jpg"
								alt="project-image">
							<div class="hover-content">
								<div>
									<a href="#" class="button">프로젝트 보러가기</a>
								</div>
							</div>
						</div>
						<div class="project-content">
							<a href="#"><h5>
									새로운 파이를 굽자! 여성예술인 인터뷰집
									<OVEN>
								</h5></a>
							<div class="goal-percent">
								<span>78</span>%달성
							</div>
						</div>
					</div>
				</div>
				<div class="single-portfolio col-md-4">
					<div class="inner">
						<div class="portfolio-img">
							<img
								src="<%=request.getContextPath()%>/assets/img/projectImage_10.jpeg"
								alt="project-image">
							<div class="hover-content">
								<div>
									<a href="#" class="button">프로젝트 보러가기</a>
								</div>
							</div>
						</div>
						<div class="project-content">
							<a href="#"><h5>'이런 장르 처음이야!!' 졸업작품 단편영화 '배달'</h5></a>
							<div class="goal-percent">
								<span>78</span>%달성
							</div>
						</div>
					</div>
				</div>
				<div class="single-portfolio col-md-4">
					<div class="inner">
						<div class="portfolio-img">
							<img
								src="<%=request.getContextPath()%>/assets/img/projectImage_11.jpeg"
								alt="project-image">
							<div class="hover-content">
								<div>
									<a href="#" class="button">프로젝트 보러가기</a>
								</div>
							</div>
						</div>
						<div class="project-content">
							<a href="#"><h5>당신에게 딱 맞는 MBTI 사고성향별 다이어리</h5></a>
							<div class="goal-percent">
								<span>78</span>%달성
							</div>
						</div>
					</div>
				</div>
				<div class="single-portfolio col-md-4">
					<div class="inner">
						<div class="portfolio-img">
							<img
								src="<%=request.getContextPath()%>/assets/img/projectImage_12.jpeg"
								alt="project-image">
							<div class="hover-content">
								<div>
									<a href="#" class="button">프로젝트 보러가기</a>
								</div>
							</div>
						</div>
						<div class="project-content">
							<a href="#"><h5>겨울용 괴담집: 크리피파스타</h5></a>
							<div class="goal-percent">
								<span>78</span>%달성
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-12 text-center" data-margin="40px 0 0">
					<a href="#" class="button">성공 임박 프로젝트 더보기</a>
				</div>
			</div>
		</div>
	</div>
	<!-- 두번째 프로젝트 끝 부분 -->


	<!-- 자연 -->
	<div class="testimonial-area sp bg1">
		<div class="container">
			<div class="title">
				<p style="font-size: 20px; font-weight: bold;">진행중인 기획전</p>
			</div>
			<div class="testimonial-slider">
				<div class="single-slide">
					<div class="inner">
						<a title="2021캘린더" href="#">

							<div class="client-info">
								<img
									src="https://tumblbug-assets.imgix.net/collections/banner_images/000/000/347/original/collection_2021.jpg?w=656"
									alt="2021캘린더 기획전 안내 이미지 입니다.">
							</div> <span class="client-data"> <span>2021캘린더<br></span>
								<span> <em>12</em>개 프로젝트
							</span>
						</span>
						</a>
					</div>
				</div>
				<div class="single-slide">
					<div class="inner">
						<a title="Made in Busan : 부산을 담다" href="#">

							<div class="client-info">
								<img
									src="https://tumblbug-assets.imgix.net/collections/banner_images/000/000/350/original/madein_busan_main.png?w=656"
									alt="Made in Busan : 부산을 담다 기획전 안내 이미지 입니다.">
							</div> <span class="client-data"> <span>"Made in Busan :
									부산을 담다"<br>
							</span> <span> <em>9</em>개 프로젝트
							</span>
						</span>
						</a>
					</div>
				</div>
				<div class="single-slide">
					<div class="inner">
						<a title="멍냥이를 부탁해" href="#">

							<div class="client-info">
								<img
									src="https://tumblbug-assets.imgix.net/collections/banner_images/000/000/148/original/8.jpg?w=656"
									alt="멍냥이를부탁해 기획전 안내 이미지 입니다.">
							</div> <span class="client-data"> <span>멍냥이를부탁해<br></span>
								<span> <em>3</em>개 프로젝트
							</span>
						</span>
						</a>
					</div>
				</div>
			</div>
			<!-- 자연 끝 -->
		</div>
	</div>
</div>
<!-- 배너 -->
<div class="project-start-banner">
	<div class="banner-wrapper">
		<div class="banner-background"
			style="background-image:url(<%=request.getContextPath()%>/assets/img/projectstart-banner-background.png);"></div>
		<h2 class="banner-title">마음속 프로젝트 아이디어, 펀딩고에서 현실로</h2>
		<p class="banner-desc">프로젝트를 위한 자금도 마련하고, 든든한 후원자 네트워크도 확보하세요.</p>
	</div>
</div>
<!-- 배너 끝 -->

<!-- footer위치 -->
<%@ include file="inc/bottom.jsp"%>