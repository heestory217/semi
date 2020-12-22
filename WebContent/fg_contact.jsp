<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


	<!-- header 위치 -->
	<%@ include file="inc/top.jsp"%>

	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=de5c22ba5fabd256158cb202c3fbe747"></script>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=APIKEY&libraries=LIBRARY"></script>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=APIKEY&libraries=services,clusterer,drawing"></script>
	<script>
		$(document).ready(function() {
			var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
			mapCenter = new kakao.maps.LatLng(37.49890258909643, 127.0319105269556), // 지도의 중심좌표
			mapOption = {
				center : mapCenter, // 지도의 중심좌표
				level : 2
			// 지도의 확대 레벨
			};

			var map = new kakao.maps.Map(mapContainer, mapOption);
			
			// 마커가 표시될 위치입니다 
			var markerPosition  = new kakao.maps.LatLng(37.49890258909643, 127.0319105269556); 

			// 마커를 생성합니다
			var marker = new kakao.maps.Marker({
			    position: markerPosition
			});

			// 마커가 지도 위에 표시되도록 설정합니다
			marker.setMap(map);

			// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
			// marker.setMap(null);
			
			// 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
			var mapTypeControl = new kakao.maps.MapTypeControl();

			// 지도에 컨트롤을 추가해야 지도위에 표시됩니다
			// kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
			map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);

			// 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
			var zoomControl = new kakao.maps.ZoomControl();
			map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
		});
	</script>


	<div class="page-title sp"
		style="background-image: 
	url(<%=request.getContextPath()%>/img/contact-bg.jpg)">
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
						<p>fundingo@fundingo.com</p>
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
	<div id="map" style="width: 100%; height: 500px;"></div>

</div>

<!-- footer위치 -->
<%@ include file="inc/bottom.jsp"%>