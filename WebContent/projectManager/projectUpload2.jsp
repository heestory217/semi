<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
<link rel="stylesheet" href="<c:url value='/css/owl.carousel.css'/>">
<link rel="stylesheet" href="<c:url value='/css/animate.css'/>">
<link rel="stylesheet" href="<c:url value='/css/bootstrap.min.css'/>">
<link rel="stylesheet" href="<c:url value='/css/main.css'/>">
<link rel="stylesheet" href="<c:url value='/css/top.css'/>">
<link rel="stylesheet" href="<c:url value='/css/main_footer.css'/>">
<link rel="stylesheet" href="<c:url value='/css/quick-website.css'/>">
<link rel="stylesheet" href="<c:url value='/css/projectUpload.css'/>">
<link rel="stylesheet" href="<c:url value='/css/jquery-ui.css'/>">
<link rel="stylesheet" href="<c:url value='/css/gift.css'/>">

<!-- 에디터 -->
<script type="text/javascript"
	src="<c:url value='/ckeditor/ckeditor.js'/>"></script>

<!--Required JS files-->
<script src="<c:url value='/js/jquery-2.2.4.min.js'/>"></script>
<script src="<c:url value='/js/vendor/popper.min.js'/>"></script>
<script src="<c:url value='/js/vendor/bootstrap.min.js'/>"></script>
<script src="<c:url value='/js/vendor/owl.carousel.min.js'/>"></script>
<script src="<c:url value='/js/vendor/isotope.pkgd.min.js'/>"></script>
<script src="<c:url value='/js/vendor/jquery.barfiller.js'/>"></script>
<script src="<c:url value='/js/vendor/loopcounter.js'/>"></script>
<script src="<c:url value='/js/vendor/slicknav.min.js'/>"></script>
<script src="<c:url value='/js/active.js'/>"></script>

<!-- 달력 -->
<script src="<c:url value='/js/jquery-3.5.1.min.js'/>"></script>
<script src="<c:url value='/js/jquery-ui.js'/>"></script>

<!-- 시계 -->
<!-- <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css">	
<script src="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"></script> -->

<!-- Spoca Han Sans 폰트 -->
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSans-kr.css'
	rel='stylesheet' type='text/css'>
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSans-jp.css'
	rel='stylesheet' type='text/css'>


<script type="text/javascript">
	var oEditors = [];
	$(function() {
		//달력 - 프로젝트 오픈일
		$('#opendate').datepicker(
				{
					dateFormat : 'yy-mm-dd',
					changeYear : true,
					dayNamesMin : [ '일', '월', '화', '수', '목', '금', '토' ],
					monthNames : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월',
							'8월', '9월', '10월', '11월', '12월' ],
					showOn : "button",
					buttonImage : "<c:url value='/icons/calendar.svg'/>",
					buttonImageOnly : true,

					onClose : function(selectedDate) {
						// 시작일(fromDate) datepicker가 닫힐때
						// 종료일(toDate)의 선택할수있는 최소 날짜(minDate)를 선택한 시작일로 지정
						$("#duedate").datepicker("option", "minDate",
								selectedDate);
					},

					//날짜선택하면
					onSelect : function() {
						var day1 = $("#opendate").datepicker('getDate')
								.getDate();
						var month1 = $("#opendate").datepicker('getDate')
								.getMonth() + 1;
						var year1 = $("#opendate").datepicker('getDate')
								.getFullYear();
						var fullDate = year1 + "년" + month1 + "월" + day1 + "일";
						$('#page_output1').html(fullDate);
					}

				}).datepicker('setDate', new Date()).datepicker("option",
				"minDate", new Date());

		//달력 - 프로젝트 마감일
		$('#duedate').datepicker(
				{
					dateFormat : 'yy-mm-dd',
					changeYear : true,
					dayNamesMin : [ '일', '월', '화', '수', '목', '금', '토' ],
					monthNames : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월',
							'8월', '9월', '10월', '11월', '12월' ],
					showOn : "button",
					buttonImage : "<c:url value='/icons/calendar.svg'/>",
					buttonImageOnly : true,

					onClose : function(selectedDate) {
						$("#opendate").datepicker("option", "maxDate",
								selectedDate);
					},

					//날짜선택하면
					onSelect : function() {
						var day1 = $("#duedate").datepicker('getDate')
								.getDate();
						var month1 = $("#duedate").datepicker('getDate')
								.getMonth() + 1;
						var year1 = $("#duedate").datepicker('getDate')
								.getFullYear();
						var fullDate = year1 + "년" + month1 + "월" + day1 + "일";
						$('#page_output_end').html(fullDate);
					}

				}).datepicker("option", "maxDate", $("#opendate") + 60);

		//유효성 검사
		$('form[name=pjUploadFrm]').submit(function() {
			if ($('#projectName').val().length < 1) {
				alert('프로젝트 제목을 입력하세요.');
				event.preventDefault();
				$('#projectName').focus();
			} else if ($('#projectDetail').val().length < 1) {
				alert('프로젝트 요약을 입력하세요.');
				event.preventDefault();
				$('#projectDetail').focus();
			}
		});
	});//readyend
</script>

</head>
<body>
	<!-- 헤더시작 -->
	<header class="header-wrap">
		<div class="container top_container">
			<div class="row">
				<div class="nav-column left-nav">
					<nav id="menu" class="d-lg-block"
						style="float: left; padding-left: 50px;">
						<a href="<c:url value='/GoMember/MypageOption.do'/>"
							class="menu-style">< 내 프로젝트</a>
					</nav>
				</div>

				<div class="logo-column">
					<a href="<c:url value='/mainArticle.do'/>" class="f_logo"> <img
						src="<c:url value='/img/topLogo.png'/>" alt="로고 이미지">
					</a>
				</div>

				<div class="nav-column">
					<nav id="menu" class="d-lg-block right-nav-detail"
						style="padding-right: 70px;">
						<a href="<c:url value='/helpCenter/mainCenter.do'/>" class="login">
							<span>헬프센터</span>
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
		<h3 class="animated infinite bounce delay-2s">2.펀딩구성 및 스토리텔링</h3>
	</div>
	<!-- 타이틀 끝 -->

	<!-- 확인사항 배너 -->
	<div class="announce_b" style="margin-bottom: 5px;">
		<p>
			<a href="<c:url value='/helpCenter/mainCenter.do'/>">공개검토 요청 전에
				어떤 것을 확인해야 할까요?</a>
		</p>
	</div>
	<div class="announce_g" style="margin-bottom: 20px;">
		<p>
			<img alt="notice" src="<c:url value='/icons/alert-circle.svg'/>">&nbsp;&nbsp;프로젝트를
			개설하려면 네 개의 섹션을 완성해야 합니다.
		</p>
	</div>
	<!-- 확인사항 배너 끝-->


	<div class="container">
			<!-- Accordion card 2 -->
				<div><!-- 가로 지정 -->
					<div class="card-body">
						<!--프로젝트 업데이트 폼 입력 시작 : 프로젝트 테이블 update-->
						<form action="<c:url value='/projectManager/projectUpdate_ok.do'/>"
							name="pjUpdateFrm" method="post">

							<p style="color: #2d3666;font-size: 1.5em;">펀딩 목표 설정</p>
							<div class="projectBox">
								<div>
									<div>
										<label for="goalAmount">목표 금액</label>
										<p>
											이번 프로젝트를 통해 모으고자 하는 펀딩 목표 금액이 얼마인가요? <br>마감일 자정까지 목표 금액을
											100% 이상 달성하셔야만 모인 후원금이 결제 됩니다. <br>막판에 후원을 취소하는 후원자들도 있는
											점을 감안해 10% 이상 초과 달성을 목표로 하시는게 안전합니다. <br>(목표 금액은 제작비, 선물
											배송비, 창작자의 인건비, 예비 비용 등을 고려하시기 바랍니다.)<br> <span
												style="color: #FF6F40;">5,000원 이상인 금액을 입력해주세요.</span>
										</p>
										<br> <input type="text" name="goalAmount"
											style="width: 200px;">원
									</div>
								</div>
							</div>
							<br>
							<p style="color: #2d3666;font-size: 1.5em;">펀딩 기간 설정</p>
							<div class="projectBox">
								<div>
									<!-- 프로젝트 공개일시 -->
									<div>
										<label for="opendate">프로젝트 공개일시</label>
										<p>
											<strong>심사 승인 후</strong>, 설정하신 일시에 <strong>프로젝트가
												자동으로 공개</strong>되니 신중하게 정해주세요. <br>설정하신 공개일시와 관계없이 프로젝트를 직접 공개하실
											수도 있습니다.
										</p>
										<p>
											<!-- 달력넣기 -->
											공개일시 : <input type="text" id="opendate" name="opendate">
											<!-- 		<span style="margin-right: 10px;"></span>
											시간넣기
											<input type="text" class="timepicker" id="opentime" name="opentime"> -->
										</p>
									</div>

									<br>

									<div>
										<!-- 프로젝트 마감일시 -->
										<!-- 공개일시를 먼저 선택해야 사용가능함 disable false -->
										<label for="duedate">프로젝트 마감일시</label>
										<p>
											마감일시 : <input type="text" id="duedate" name="duedate">
										</p>
										<p>
											<!-- 위에서 설정한 걸로 넣기 날짜 -->
											<strong>※마감일을 정할 때 주의할 점</strong><br> 프로젝트는 <span
												style="color: #FF6F40;" id="page_output1"></span>로 부터 최대 60일
											동안 진행하실 수 있고 마감일 자정에 종료됩니다. <br>이미 선물을 만드셨다면, 선물 실행일 중에
											마감일보다 이른 날짜가 있지 않은지 꼭 확인해주세요.
										</p>
										<p>
											<strong> <span style="color: #FF6F40;"
												id="page_output_end"></span>에 펀딩을 마감합니다.
											</strong>
										</p>
									</div>
								</div>
							</div>

							<br>

							<p style="color: #2d3666;font-size: 1.5em;">프로젝트 스토리텔링</p>
							<div class="projectBox">
								<div>
									<p>프로젝트에 대한 이야기를 들려주세요.</p>
									<div>
										<!-- 에디터 -->
										<textarea name="projectStory" id="projectStory"
											style="width: 100%;"></textarea>
										<script type="text/javascript">
											CKEDITOR.replace('projectStory', {
												height : 500
											});
										</script>
										<!-- 에디터 -->
									</div>
								</div>
							</div>
							<br>

							<p style="color: #2d3666;font-size: 1.5em;">펀딩 안내</p>
							<div class="projectBox">
								<div>
									<div>
										<label for="projectPolicy">환불 및 교환 정책</label>
										<p>
											펀딩 마감 후의 환불 및 교환 요청은 창작자가 약속하는 아래 정책에 따릅니다. <br>이는 후원자의
											불만 또는 분쟁 발생시 중요한 기준이 되니, 신중히 작성해 주세요.
										</p>
										<strong><span style="color: #FF6F40;">[ ] 안의
												예시 문구를 프로젝트에 적합한 내용으로 변경해주세요.</span></strong>
										<ul style="margin-left: 20px;">
											<li>'모든 프로젝트 공통' 내용은 필수로 적어주세요.</li>
											<li>'배송 필요 선물' '현장수령 선물' '디지털 콘텐츠 선물' 내용들은 이번 프로젝트에 해당되는
												사항만 골라 작성해 주세요.</li>
											<li>후원자의 단순 변심, 제품의 파손 및 불량, 창작자의 예기치 못한 선물 실행 지연 등 다양한
												상황을 고려하여 내용을 작성해 주세요.</li>
										</ul>
										<textarea rows="15" cols="130" name="projectPolicy">
모든 프로젝트 공통
- 프로젝트 마감일 후에는 즉시 제작 및 실행에 착수하는 프로젝트 특성상 단순 변심에 의한 후원금 환불이 불가능합니다.
- 예상 전달일로부터 [    ]일 이상 선물 전달이 이뤄지지 않을 경우, 환불을 원하시는 분들께는 [ 수수료를 제한 / 수수료를 포함한 ] 후원금을 환불해 드립니다.
(플랫폼 수수료: 모금액의 5%, 부가세 별도 / 결제 수수료: 결제 성공액의 3%, 부가세 별도 )
- 선물 전달을 위한 배송지 및 서베이 답변은 [   마감일 이후 날짜를 입력해주세요.(ex 20XX. XX. XX)   ]에 일괄 취합할 예정입니다.
- 이후 배송지 변경이나 서베이 답변 변경을 원하실 때에는 '창작자에게 문의하기'로 개별 문의하셔야 합니다.

배송이 필요한 선물
- 파손 또는 불량품 수령 시 [   ]일 이내로 교환이 가능합니다.
- 교환 및 AS 문의는 '창작자에게 문의하기'로 신청해 주세요.
- 파손이나 불량품 교환시 발생하는 비용은 창작자가 부담합니다. 선물 확인을 위한 포장 훼손 외에 아이템의 가치가 훼손된 경우에는 교환 및 환불이 불가합니다.
[ - 파손이나 불량의 예시 또는 기준이 있을 경우 추가해 주세요. ]
- 후원자가 배송지를 잘못 기재하거나 창작자에게 사전 고지 없이 배송지를 수정하여 배송사고가 발생할 경우 
창작자는 [  최대   번까지 재발송 해 드립니다. 배송비 부담은 (  창작자 / 후원자  )에게 있습니다   /   책임을 지지 않습니다  ].

공연/행사 등 현장수령으로 이루어지는 선물
- 행사 참가권은 타인에게 양도가 [  가능  /  불가능  ]합니다.
- 현장에서 수령해야 하는 선물을 수령하지 못하신 경우 환불은 [  가능   /  불가능  ]하며, 선물 배송을 위한 추가 배송비를 별도 요청드릴 수 있습니다.

디지털 콘텐츠로 이뤄진 선물
- 전달된 파일에 심각한 결함이나 저작권상 문제가 있을 경우, 수수료 [  포함  /  제외  ]하여 환불 가능합니다.
- 전달된 파일은 타인에게 양도가 [  가능  /  불가능  ]합니다.
									</textarea>
									</div>
								</div>
							</div>
							<br>

							<p style="color: #2d3666;font-size: 1.5em;">상품 정보 고시</p>
							<div class="projectBox">
								<div>
									<div>
										<textarea rows="5" cols="130" name="giftInfo">
품명 및 모델명
재질
구성품 
크기 
동일모델의 출시년월
제조자(수입자)
제조국
품질보증기준
									</textarea>
									</div>
								</div>
							</div>

							<div style="text-align: center; margin: 20px 0;">
								<input type="submit" class="button" value="저장하기">
							</div>
							
						</form><!--프로젝트 업데이트폼 입력 끝-->
					</div><!-- card -->
				</div>
			</div><!-- container -->

	<div style="text-align: center; margin-bottom: 50px;"></div>

	<footer>
		<%@ include file="../inc/bottom.jsp"%>
	</footer>

</body>
</html>

