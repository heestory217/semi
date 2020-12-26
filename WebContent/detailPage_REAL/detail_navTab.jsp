<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>디테일 페이지 탭</title>

<link rel="stylesheet" href="../css/detail_commTab.css">


<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
</head>
<body>
	<div id="detailContainer">

		<ul class="detailTab">
			<li class="current" data-tab="tab1"><a href="#">스토리</a></li>
			<li data-tab="tab2"><a href="#">커뮤니티</a></li>
			<li data-tab="tab3"><a href="#">펀딩 안내</a></li>
		</ul>

		<div id="tab1" class="tabcontent current">
			<div id="tabs-story">
				<div id="storyPage">
					<div class="storyContainer">
						<div class="storyDiv">
							<!-- 창작자 스토리 불러오기 -->
							<h1>
								<창작자가 하고 싶은 말 / 스토리>
							</h1>
							<br>
							<h1>예능 뽀시래기 팝니다</h1>
							<br> <img src="../img/story_content_example.gif"
								style="width: 84%; margin-left: 42px;"><br>
								<div>
							내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용
								내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div id="tab2" class="tabcontent">

			<div class="writerFlag" id="move2">
				<div>
					<img class="storyWriterImage" src="../img/storydivWriterImg.png"
						alt="창작자/후원자 사진" style="width: 35px;">
				</div>
				<div class="storyDivFlag">
					<p>
						<b>후원자만 글을 쓸 수 있어요</b>
					</p>
				</div>
			</div>



			<%@ include file="detail_commTab_final.jsp"%>


		</div>




		<div id="tab3" class="tabcontent">

			<div id="fundPage">
				<div id="refundPolicy_contents" id="move3">

					<p>
						<b>이 프로젝트의 환불 및 교환 정책</b>
					</p>
					<div><p>
						<!-- 창작자 정책 -->
						모든 프로젝트 공통 <br>
						- 프로젝트 마감일 후에는 즉시 제작 및 실행에 착수하는 프로젝트 특성상 단순 변심에 의한 후원금
						환불이 불가능합니다. <br>
						- 예상 전달일로부터 31일 이상 선물 전달이 이뤄지지 않을 경우, 환불을 원하시는 분들께는
						수수료를 포함한 후원금을 환불해 드립니다. <br>(플랫폼 수수료: 모금액의 5%, 부가세 별도 / 결제 수수료: 결제
						성공액의 3%, 부가세 별도 ) <br>
						- 선물 전달을 위한 배송지 및 서베이 답변은 2021. 01. 20에 일괄 취합할 예정입니다.<br> 
						- 이후 배송지 변경이나 서베이 답변 변경을 원하실 때에는 '창작자에게 문의하기'로 개별 문의하셔야
						합니다. <br>
						배송이 필요한 선물 <br>
						- 파손 또는 불량품 수령 시 7일 이내로 교환이 가능합니다. <br>
						- 교환 및 AS 문의는'창작자에게 문의하기'로 신청해 주세요. <br>
						- 파손이나 불량품 교환시 발생하는 비용은 창작자가 부담합니다. </p>
					</div>

				</div>

				<div id="productInfo_contents">
					<p>
						<b>상품정보 고시</b>
					</p>
					<div>
						<p><!-- 창작자 정책 -->
						가방 종류 크로스백 소재 외부소재 : 선인장가죽+면/ <br>
						내부소재 : 선인장가죽+면/ <br>
						안감 : 면30% 폴리에스테르 70% <br>
						색상 블랙/ 그린/ 버건디 <br>
						크기 <br>
						제조자(수입자) 월간마움 <br>
						제조국 대한민국 <br>
						취급시 주의사항 프로젝트 본문 참고<br>
						품질보증기준 관련법 및 소비자분쟁해결 기준에 따름 패션잡화 (모자,벨트,액세서리)</p>
					</div>

				</div>
			</div>
		</div>

	</div>

	<script>
		$(function() {
			$('ul.detailTab li').click(function() {
				var activeTab = $(this).attr('data-tab');
				$('ul.detailTab li').removeClass('current');
				$('.tabcontent').removeClass('current');
				$(this).addClass('current');
				$('#' + activeTab).addClass('current');
			})
		});

		
		
	</script>
</body>
</html>