<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<div class="preloader">
	<span class="preloader-spin"></span>
</div>
<div class="site">


	<!-- header 위치 -->
	<%@ include file="inc/top.jsp"%>
	
	
	<div class="portfolio-area sp" style="padding-top:40px">
    <div class="container">
        <div class="row">
            <ul class="isotope-menu">
                <li data-filter="*" class="active">제품디자인</li>
                <li data-filter=".ceramics">문구도서</li>
                <li data-filter=".branding">문화예술</li>
                <li data-filter=".design">푸드</li>
                <li data-filter=".photography">패션</li>
            </ul>
        </div>
        <div class="row portfolio-isotope">
            <div class="single-portfolio col-md-4 branding photography design">
                <div class="inner">
                    <div class="portfolio-img">
                        <img src="<%=request.getContextPath()%>/img/projectImage_1.JPG" alt="portfolio-image">
                        <div class="hover-content">
                            <div>
                                <a href="#" class="button">프로젝트 보러가기</a>
                            </div>
                        </div>
                    </div>
                    <div class="project-content">
                        <a href="#"><h5>내 소중한 취향과 공간을 지켜주는 ‘세이프보드’ 가림막</h5></a>
                        <span>Ceramics, Design</span>
                    </div>
                </div>
            </div>
            <div class="single-portfolio col-md-4 ceramics design photography">
                <div class="inner">
                    <div class="portfolio-img">
                        <img src="<%=request.getContextPath()%>/img/projectImage_2.jpeg" alt="portfolio-image">
                        <div class="hover-content">
                            <div>
                                <a href="#" class="button">프로젝트 보러가기</a>
                            </div>
                        </div>
                    </div>
                    <div class="project-content">
                        <a href="#"><h5>일회용카메라 프로젝트: 내가 찍은 사람이 그린 사진</h5></a>
                        <span>Ceramics, Design</span>
                    </div>
                </div>
            </div>
            <div class="single-portfolio col-md-4 ceramics branding ceramics">
                <div class="inner">
                    <div class="portfolio-img">
                        <img src="<%=request.getContextPath()%>/img/projectImage_3.jpg" alt="portfolio-image">
                        <div class="hover-content">
                            <div>
                                <a href="#" class="button">프로젝트 보러가기</a>
                            </div>
                        </div>
                    </div>
                    <div class="project-content">
                        <a href="#"><h5>반전 매력 을지로 가게들과 함께한 근사한 패브릭 제품들</h5></a>
                        <span>Ceramics, Design</span>
                    </div>
                </div>
            </div>
            <div class="single-portfolio col-md-4 design photography">
                <div class="inner">
                    <div class="portfolio-img">
                        <img src="<%=request.getContextPath()%>/img/projectImage_4.jpg" alt="portfolio-image">
                        <div class="hover-content">
                            <div>
                                <a href="#" class="button">프로젝트 보러가기</a>
                            </div>
                        </div>
                    </div>
                    <div class="project-content">
                        <a href="#"><h5>Souvenir de 남해! 추억에 물들여지는 당신의 공간</h5></a>
                        <span>Ceramics, Design</span>
                    </div>
                </div>
            </div>
            <div class="single-portfolio col-md-4 ceramics photography branding">
                <div class="inner">
                    <div class="portfolio-img">
                        <img src="<%=request.getContextPath()%>/img/projectImage_5.jpg" alt="portfolio-image">
                        <div class="hover-content">
                            <div>
                                <a href="#" class="button">프로젝트 보러가기</a>
                            </div>
                        </div>
                    </div>
                    <div class="project-content">
                        <a href="#"><h5>LP커버는 보이는게 더 예쁘잖아요. 두루주 원목 LP 액자</h5></a>
                        <span>Ceramics, Design</span>
                    </div>
                </div>
            </div>
            <div class="single-portfolio col-md-4 branding design">
                <div class="inner">
                    <div class="portfolio-img">
                        <img src="<%=request.getContextPath()%>/img/projectImage_6.jpg" alt="portfolio-image">
                        <div class="hover-content">
                            <div>
                                <a href="#" class="button">프로젝트 보러가기</a>
                            </div>
                        </div>
                    </div>
                    <div class="project-content">
                        <a href="#"><h5>진리의 세상: 어디에나 있지만, 어디에도 없는 아트 오브제</h5></a>
                        <span>Ceramics, Design</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
	
</div>

	<!-- footer위치 -->
	<%@ include file="inc/bottom.jsp"%>