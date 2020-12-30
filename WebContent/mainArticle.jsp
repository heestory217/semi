<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

	<!-- header 위치 -->
	<%@ include file="inc/top.jsp"%>

	<!-- 메인이미지 슬라이드 시작 -->
	<div class="hero-slider">
		<div class="single-slide"
			style="background-image: url(<c:url value='/img/mainTopBanner1.PNG' />)">
			<div class="inner">
				<div class="container">
					<div class="row">
						<div class="col-lg-6">
							<div class="slide-content">
								<h1>내 맘대로 조합하는</h1>
								<h2>코로나 시대 필수품!</h2>
								<p>나와 당신을 지키는 가림막, 그 이상의 가림막</p>
								<div class="slide-btn">
									<a href="<c:url value='/detail/detail_first.do?projectNo=${dto.projectNo }'/>" class="button">프로젝트 구경하기</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="single-slide"
			style="background-image: url(<c:url value='/img/mainTopBanner2.jpg'/>)">
			<div class="inner">
				<div class="container">
					<div class="row justify-content-center">
						<div class="col-lg-6 text-center">
							<div class="slide-content">
								<h2 style="color: white;">좋아하는 게임의 OST를 만듭니다</h2>
								<p style="color: white;">콘솔 게임 감성으로 작화까지 하는 덕후들이 있다?</p>
								<div class="slide-btn">
									<a href="<c:url value='/detail/detail_first.do?projectNo=${dto.projectNo }'/>" class="button">프로젝트 구경하기</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="single-slide"
			style="background-image: url(<c:url value='/img/mainTopBanner3.PNG'/>)">
			<div class="inner">
				<div class="container">
					<div class="row">
						<div class="col-lg-6">
							<div class="slide-content">
								<h3>물과 햇빛 그리고</h3>
								<h2 style="color: white;">선인장으로 빚은 가치백</h2>
								<p style="color: #244E02;">친환경 비건 소재 가방</p>
								<div class="slide-btn">
									<a href="<c:url value='/detail/detail_first.do?projectNo=${dto.projectNo }'/>" class="button">프로젝트 구경하기</a>
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
				<c:forEach var="dto" items="${foucs_list}" begin="0" end="5" step="1">
					<div class="single-portfolio col-md-4">
						<div class="inner">
							<div class="portfolio-img">
								<img src="<c:url value='/Project_Thumbnail/${dto.fileName }'/>" alt="project-image">
								<div class="hover-content">
									<div>
										<a href="<c:url value='/detail/detail_first.do?projectNo=${dto.projectNo }'/>" class="button">프로젝트 보러가기</a>
									</div>
								</div>
							</div>
							<div class="project-content">
								<a href="<c:url value='/detail/detail_first.do?projectNo=${dto.projectNo }'/>"><h5> ${dto.projectName }</h5></a>
								<div class="goal-percent">
									<span>78</span>%달성
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
			<div class="row">
				<div class="col-12 text-center" data-margin="40px 0 0">
					<a href="<c:url value='/discover.do?type=popular'/>" class="button">주목할만한 프로젝트 더보기</a>
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
				<c:forEach var="dto" items="${foucs_list}" begin="6" end="11" step="1">
					<div class="single-portfolio col-md-4">
						<div class="inner">
							<div class="portfolio-img">
								<img src="<c:url value='/Project_Thumbnail/${dto.fileName }'/>" alt="project-image">
								<div class="hover-content">
									<div>
										<a href="<c:url value='/detail/detail_first.do?projectNo=${dto.projectNo }'/>" class="button">프로젝트 보러가기</a>
									</div>
								</div>
							</div>
							<div class="project-content">
								<a href=""<c:url value='/detail/detail_first.do?projectNo=${dto.projectNo }'/>"><h5> ${dto.projectName }</h5></a>
								<div class="goal-percent">
									<span>78</span>%달성
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
			<div class="row">
				<div class="col-12 text-center" data-margin="40px 0 0">
					<a href="<c:url value='/discover.do?type=success'/>" class="button">성공 임박 프로젝트 더보기</a>
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
			style="background-image:url(<c:url value='/img/projectstart-banner-background.png'/>);"></div>
		<h2 class="banner-title">마음속 프로젝트 아이디어, 펀딩고에서 현실로</h2>
		<p class="banner-desc">프로젝트를 위한 자금도 마련하고, 든든한 후원자 네트워크도 확보하세요.</p>
	</div>
</div>
<!-- 배너 끝 -->

<!-- footer위치 -->
<%@ include file="inc/bottom.jsp"%>