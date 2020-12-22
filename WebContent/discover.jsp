<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="preloader">
	<span class="preloader-spin"></span>
</div>
<div class="site">


	<!-- header 위치 -->
	<%@ include file="inc/top.jsp"%>
	
	<div>
		<div class="container">
			<div class="search-desc">
				<span class="search-title">모든 프로젝트</span>
				<span class="search-qty">20개</span>가 있습니다.
			</div>
		</div>
	</div>
	

	<!-- 첫번 째 프로젝트 시작 부분 -->
	<div class="portfolio-area">
		<div class="container">
			<!-- <div class="section-title">
				<h2>주목할만한 프로젝트</h2>
				<p>다른 사람들은 누구의 꿈에 후원했을까요?</p>
			</div> -->
			<div class="row">
				<div class="single-portfolio col-md-4">
					<div class="inner">
						<div class="portfolio-img">
							<img
								src="<%=request.getContextPath()%>/img/projectImage_1.JPG"
								alt="project-image">
							<div class="hover-content">
								<div>
									<a href="#" class="button">프로젝트 보러가기</a>
								</div>
							</div>
						</div>
						<div class="project-content">
							<a href="#"><h5>내 소중한 취향과 공간을 지켜주는 ‘세이프보드’ 가림막</h5></a>
							<div class="goal-percent"><span>78</span>%달성</div>
						</div>
					</div>
				</div>
				<div class="single-portfolio col-md-4">
					<div class="inner">
						<div class="portfolio-img">
							<img
								src="<%=request.getContextPath()%>/img/projectImage_2.jpeg"
								alt="project-image">
							<div class="hover-content">
								<div>
									<a href="#" class="button">프로젝트 보러가기</a>
								</div>
							</div>
						</div>
						<div class="project-content">
							<a href="#"><h5>일회용카메라 프로젝트: 내가 찍은 사람이 그린 사진</h5></a>
							<div class="goal-percent"><span>78</span>%달성</div>
						</div>
					</div>
				</div>
				<div class="single-portfolio col-md-4">
					<div class="inner">
						<div class="portfolio-img">
							<img
								src="<%=request.getContextPath()%>/img/projectImage_3.jpg"
								alt="project-image">
							<div class="hover-content">
								<div>
									<a href="#" class="button">프로젝트 보러가기</a>
								</div>
							</div>
						</div>
						<div class="project-content">
							<a href="#"><h5>반전 매력 을지로 가게들과 함께한 근사한 패브릭 제품들</h5></a>
							<div class="goal-percent"><span>78</span>%달성</div>
						</div>
					</div>
				</div>
				<div class="single-portfolio col-md-4">
					<div class="inner">
						<div class="portfolio-img">
							<img
								src="<%=request.getContextPath()%>/img/projectImage_4.jpg"
								alt="project-image">
							<div class="hover-content">
								<div>
									<a href="#" class="button">프로젝트 보러가기</a>
								</div>
							</div>
						</div>
						<div class="project-content">
							<a href="#"><h5>Souvenir de 남해! 추억에 물들여지는 당신의 공간</h5></a>
							<div class="goal-percent"><span>78</span>%달성</div>
						</div>
					</div>
				</div>
				<div class="single-portfolio col-md-4">
					<div class="inner">
						<div class="portfolio-img">
							<img
								src="<%=request.getContextPath()%>/img/projectImage_5.jpg"
								alt="project-image">
							<div class="hover-content">
								<div>
									<a href="#" class="button">프로젝트 보러가기</a>
								</div>
							</div>
						</div>
						<div class="project-content">
							<a href="#"><h5>LP커버는 보이는게 더 예쁘잖아요. 두루주 원목 LP 액자</h5></a>
							<div class="goal-percent"><span>78</span>%달성</div>
						</div>
					</div>
				</div>
				<div class="single-portfolio col-md-4">
					<div class="inner">
						<div class="portfolio-img">
							<img
								src="<%=request.getContextPath()%>/img/projectImage_6.jpg"
								alt="project-image">
							<div class="hover-content">
								<div>
									<a href="#" class="button">프로젝트 보러가기</a>
								</div>
							</div>
						</div>
						<div class="project-content">
							<a href="#"><h5>진리의 세상: 어디에나 있지만, 어디에도 없는 아트 오브제</h5></a>
							<div class="goal-percent"><span>78</span>%달성</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-12 text-center more-btn">
					<a href="#" class="button">프로젝트 더보기</a>
				</div>
			</div>
		</div>
	</div>
	<!-- 첫번째 프로젝트 끝 부분 -->


</div>

<!-- footer위치 -->
<%@ include file="inc/bottom.jsp"%>