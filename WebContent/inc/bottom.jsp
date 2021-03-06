<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<footer>
	<div class="footer-top" style="border-top: 1px solid #e0e0e0;">
		<div class="container">
			<div class="row">

				<div class="col-md-6 col-lg-3 footer_widget">
					<div class="inner">
						<ul>
							<li><a href="<c:url value='/coming_soon.do'/>">공지사항</a></li>
							<li><a
								href="https://www.notion.so/105a1cf14fc2461c82a65c9bf8279ee5">창작자
									가이드</a></li>
							<li><a href="<c:url value='/feeAndFundingPolicy.do'/>">수수료 정책</a></li>
						</ul>
					</div>
				</div>


				<div class="col-md-6 col-lg-3 footer_widget">
					<div class="inner">
						<ul>
							<li><a
								href="<c:url value='/helpCenter/mainCenter.do'/>">이용약관</a></li>
							<li><a
								href="<c:url value='/helpCenter/mainCenter.do'/>">개인정보
									처리방침</a></li>
							<li><a href="<c:url value='/fg_contact.do'/>">고객센터</a></li>
						</ul>
					</div>
				</div>

				<div class="col-md-6 col-lg-3 footer_widget">
					<div class="inner">
						<ul>
							<li></li>
							<li></li>
							<li></li>
						</ul>
					</div>
				</div>

				<div class="col-md-6 col-lg-3 footer_widget">
					<div class="inner">
						<div class="media">
							<a href="#"> <img
								src="<c:url value='/img/icons.JPG.png'/>"
								class="d-flex mr-3" alt="펀딩고 소셜미디어로 바로가기">
							</a>
						</div>
						<div class="media">
							<a href="<c:url value='/fg_contact.do'/>"> <img
								src="<c:url value='/img/requestbutton.png'/>"
								class="d-flex mr-3" alt="문의하기">
							</a>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="footer-bottom">
		<div class="container">
			<div class="row">
				<div class="col-lg-6-bottom">
					<p>펀딩고는 플랫폼 제공자로서 프로젝트의 당사자가 아니며, 직접적인 통신판매를 진행하지 않습니다. 프로젝트의
						완수 및 선물제공의 책임은 해당 프로젝트의 창작자에게 있으며, 프로젝트와 관련하여 후원자와 발생하는 법적 분쟁에 대한
						책임은 해당 창작자가 부담합니다.</p>

					<ul>
						<li>펀딩고(주)</li>
						<li>대표: 펀딩고패밀리 010-2332-1234</li>
						<li>서울시 펀딩구 고로 100, 펀딩캐슬 펜트하우스</li>
						<li>통신판매업 2020-1234567-52-5-02129</li>
						<li>대표전화 02-8282-9999</li>
						<li><a href="#">고객센터</a></li>
					</ul>
					<address>
						<em>&copy; Copyright</em> <a
							href="<c:url value='/mainArticle.do'/>">fundingo.co.kr</a>
						<span>All Rights Reserved</span>
					</address>
				</div>

			</div>
		</div>
	</div>
</footer>


</body>

</html>
