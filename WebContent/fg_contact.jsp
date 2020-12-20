<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="preloader">
	<span class="preloader-spin"></span>
</div>
<div class="site">

	<!-- header 위치 -->
	<%@ include file="inc/top.jsp"%>

	<div class="page-title sp"
		style="background-image: 
	url(<%=request.getContextPath()%>/assets/img/contact-bg.jpg)">
		<div class="container text-center">
			<h2>펀딩고에 문의하기</h2>
			<p style="color: #000;">이메일로 문의를 남겨주세요. 영업일 기준 2일 내에 답변 드리겠습니다.</p>
		</div>
	</div>
	<div class="contact-area sp">
		<div class="container">
			<div class="row">
				<div class="col-md-5 contact-info">
					<div class="single-info">
						<h5>대표전화</h5>
						<p>02-8282-9999</p>
					</div>
					<div class="single-info">
						<h5>이메일</h5>
						<p>fundinggo@fundinggo.com</p>
					</div>
					<div class="single-info">
						<h5>주소</h5>
						<p>서울시 펀딩구 고로 100, 펀딩캐슬 펜트하우스</p>
					</div>
					<div class="single-info">
						<h5>소셜미디어</h5>
						<p>
							<a href="#" class="fa fa-facebook"></a> <a href="#"
								class="fa fa-twitter"></a> <a href="#" class="fa fa-linkedin"></a>
							<a href="#" class="fa fa-pinterest"></a>
						</p>
					</div>
				</div>
				<div class="col-md-7">
					<form action="#" class="contact-form">
						<div class="row">
							<div class="col-lg-6">
								<input type="text" placeholder="보내는사람">
							</div>
							<div class="col-lg-6">
								<input type="email" placeholder="이메일 주소">
							</div>
							<div class="col-lg-12">
								<input type="text" placeholder="제목">
							</div>
							<div class="col-lg-12">
								<textarea placeholder="내용"></textarea>
							</div>
							<div class="col-lg-12">
								<input class="button" type="submit" value="전송">
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<div class="google-map">
		<iframe
			src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d43546.86165317726!2d-0.1304800562216428!3d51.50205515285579!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47d8a00baf21de75%3A0x52963a5addd52a99!2sLondon%2C+UK!5e0!3m2!1sen!2sbd!4v1506591318507"></iframe>
	</div>

</div>

	<!-- footer위치 -->
	<%@ include file="inc/bottom.jsp"%>