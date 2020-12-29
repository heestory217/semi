<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>펀딩고 :: FUNDINGO</title>
<link href="https://fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,500,500i,700,700i" rel="stylesheet">
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
<script type="text/javascript" src="<c:url value='/ckeditor/ckeditor.js'/>"></script>

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
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSans-kr.css' rel='stylesheet' type='text/css'>
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSans-jp.css' rel='stylesheet' type='text/css'>


<script type="text/javascript">
var itemNum = 0;
$(function(){
	//유효성 검사
	$('form[name=pjUploadFrm]').submit(function(){
		if($('#projectName').val().length<1){
			alert('프로젝트 제목을 입력하세요.');
			event.preventDefault();
			$('#projectName').focus();
		}else if($('#projectDetail').val().length<1){
			alert('프로젝트 요약을 입력하세요.');
			event.preventDefault();
			$('#projectDetail').focus();
		}
	});
	
	//-----------------------------------가은-------------------------------
	//선물구성 - 선물 전달일 선택
	$('#deliveryDay').datepicker(
			{
				dateFormat : 'yy-mm-dd',
				changeYear : true,
				dayNamesMin : [ '일', '월', '화', '수', '목', '금', '토' ],
				monthNames : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월',
						'8월', '9월', '10월', '11월', '12월' ]
			});
	//선물 전달일
	$('button').click(function() {
		//.datepicker('메서드');
		var curDate = $('#deliveryDay').datepicker('getDate');
		/* alert(curDate); */
	});
	
});//readyend

	//선물-아이템 추가할때마다 테이블  tr 추가
	function tableCreate(){
		var tc = new Array();
		var html = '';
		var itemName = $("#inItemName").val();
		
		html+='<tr style="display:flex; padding:0.5rem 1rem;">';
		html+='<td style="flex-basis:92%; margin-right:5px;"><div class="itemName'+ itemNum +'">'+ itemName + '</div></td>';
		html+='<td style="flex-basis:65px;">'+ '<div style="display:flex">'+'<button id="minusBtn" type="button" onclick="calCount(\'m\',\''+ itemNum +'\')" style="width:27px; border:none;"><i></i></button>'+
			'<div style="display:flex; justify-content:center; align-items:center;">'+
			'<span id="itemNum'+itemNum+'" style="padding:0 4px">'+1+'</span>'
			+'</div><button id="plusBtn" type="button" onclick="calCount(\'p\',\''+ itemNum +'\')" style="width:27px; border:none;"><i></i></button></div></td>';
		html+='</tr>';
		
		$("#dynamicTable").append(html);
		
		$("#inItemName").val('');
		itemNum++;	
	}
	
	//아이템 수량 +-로 설정
	function calCount(cal,itemNum){
		var itemNum_ = $('span#itemNum' + itemNum).text();
		
		switch(cal){
			case 'p' :
				$('span#itemNum' + itemNum).text(++itemNum_);	
			 	break;
			case 'm':
				if(itemNum_>0){
					$('span#itemNum' + itemNum).text(--itemNum_);
					if(itemNum_==0){
						alert("수량이 0이면 아이템에 포함되지않습니다.");
					}
				}else{
					alert("수량이 0보다 작을 수 없습니다.");
				}
				break;
		}
	
	}
	//-----------------------------------가은-------------------------------
	
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
						<a href="<c:url value='/GoMember/MypageOption.do'/>" class="menu-style">< 내 프로젝트</a>
					</nav>
				</div>

				<div class="logo-column">
					<a href="<c:url value='/mainArticle.do'/>" class="f_logo"> 
					<img src="<c:url value='/img/topLogo.png'/>" alt="로고 이미지">
					</a>
				</div>

				<div class="nav-column">
					<nav id="menu" class="d-lg-block right-nav-detail"
						style="padding-right: 70px;">
						<a href="<c:url value='/helpCenter/mainCenter.do'/>"
							class="login"> <span>헬프센터</span>
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
			<h3 class="animated infinite bounce delay-2s" >3. 선물구성</h3>
		</div>
		<!-- 타이틀 끝 -->
	
		<!-- 확인사항 배너 -->
		<div class="announce_b" style="margin-bottom: 5px;">
			<p><a href="<c:url value='/helpCenter/mainCenter.do'/>">공개검토 요청 전에 어떤 것을 확인해야 할까요?</a></p>
		</div>
		<div class="announce_g" style="margin-bottom: 20px;">
			<p>
				<img alt="notice" src="<c:url value='/icons/alert-circle.svg'/>">&nbsp;&nbsp;프로젝트를 개설하려면 네 개의 섹션을 완성해야 합니다.
			</p>
		</div>
		<!-- 확인사항 배너 끝-->
	
	
	<div class="container">
		<!-- Accordion card 3 -->
			<div><!-- 가로 지정 -->
				<div class="card-body">
					<!--선물 정보 폼 입력 시작 : gift 테이블 insert (+item table)-->
					<!-- *******************************************가은 추가************************************ -->
					<form action="" name="GiftFrm" method="post">
							
						<input type="text" name="projectNo" value="${projectNo}"/>
							
						<p style="color: #2d3666;font-size: 1.5em;">선물 구성</p>
						<div class="projectBox">
							<div>
								<div>
									<!-- 선물 추가하기 -->
									<div>
										<label for="addGift">선물 추가하기</label>
										<p>후원자 분들에게 드릴 선물 내용을 입력해주세요</p>
									</div>
									<!-- 선물 추가하기 끝 -->
									<hr>
									<!-- 최소 후원금액  -->
									<div>
										<label for="addGift">최소 후원금액</label>
										<p>
											인기 금액대인 1만원대 선물부터 특별한 의미를 담은 10만원 이상 선물까지, 다양한 금액대로 구성하면 성공률이
											더욱 높아집니다. 배송이 필요한 선물의 경우<strong>배송비 포함</strong>된 금액으로 작성해
											주세요.
										</p>
										<br> <input type="text" name="giftPrice" value="5,000" style="text-align:right; margin-right: 10px;"><strong>원이상
											밀어주시는 분께 드리는 선물입니다.</strong>
									</div>
									<!-- 최소 후원금액 끝 -->
									<hr>
									<!-- 선물에 포함된 아이템 -->
									<div>
										<label for="addGift">선물에 포함된 아이템</label>
										<p>
											아이템은 <strong>선물에 포함되는 구성 품목</strong>을 말합니다. 이 금액대의 선물을 선택한
											후원자에게 어떤 아이템들을 얼마나 전달하실건가요?
										</p>
										<div>
											<div class="itemBox">
												<div class="itemBoxWrapper">
													<label>아이템 이름</label>
													<div class="itemSave">
														<input type="text" placeholder="새로 만들 아이템의 이름을 입력해주세요." id="inItemName" style="width:90%; padding:0 8px;">
														<button onclick="tableCreate()" class="itemSaveBtn" type="button">저장</button>
													</div>
													<br>
													<div class="itemAddList">
														<label>아이템 목록</label>
														<div>
															<table id="dynamicTable">
																<thead>
																	<tr style="display:flex; width:100%">
																		<th style="flex-basis:92%; margin-right:5px;">아이템 이름</th>
																		<th style="flex-basis:65px;">수량 설정</th>
																	</tr>
																</thead>
																<tbody id="dynamicTbody">
																	<!-- 아이템 추가할때마다 tr생성 -->
																</tbody>
															</table>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<!-- 선물에 포함된 아이템 끝 -->
									<hr>
									<div>
										<!-- 선물 설명 -->
										<label for="giftDesc">선물 설명</label>
										<p>
											구성된 선물에 대해 추가적으로 알리고 싶은 내용을적어주세요.
										</p>
										<textarea rows="1" cols="130" name="memberIntro" placeholder="예) 배송비 포함, 얼리버드, <선물 세트 A> 등" style="padding:8px;"></textarea>
									</div>
									<hr>
									<div>
										<!-- 선물카드 정렬 순서 -->
										<label for="giftCard">선물 카드 정렬 순서</label>
										<p>
											선물 카드의 순서를 정해주세요. 혜택이 많은 선물 카드부터 나오도록 등록하시는 것이 좋습니다.
										</p>
										<br> 
										<input type="number" name="giftCardSeq" value="1" style="width: 70px; padding:0 8px; margin-right: 5px;">
										<strong>번째로 보일 선물 카드입니다.</strong>
									</div>
									<hr>
									<!-- 예상 전달일 -->
									<div>
										<label for="expecDeliveryDate">예상 전달일</label>
										<p>
											이 선물을 선택한 후원자들에게 선물을 배송 또는 공개하기로 약속하는 날입니다. <strong>결제 종료일 이후의 날짜</strong>인지 확인해서 정해주세요.
										</p>
										<br> 
										<strong>결제 종료일로부터</strong>
										<span><input type="number" name="giftCardSeq" value="1" style="width: 70px; padding:0 8px; margin:0 5px;">
											<strong>일 뒤인</strong>
											 <input type="text" id="deliveryDay" style="margin:0 5px;"> <strong>에 선물을 전달하겠습니다.</strong>
										</span>
									</div>
									<!-- 예상 전달일 끝 -->
									<hr>
									<!-- 선물 설정 -->
									<div>
										<label for="giftSetting">선물 설정</label>
										<p>
											한정판 선물을 선택할 수 있는 인원을 제한해주세요. 배송이 필요한 선물인 경우 후원자에게 주소지를 요청합니다.
										</p>
										<br>
										<div style="display:flex;">
											<div style="width:60%;">
												<input type="checkbox" style="margin-right:5px;"><span ><strong>선물을</strong></span>
												<input type="number" value="0" style="width: 70px; padding:0 8px; margin:0 5px; vertical-align:middle">
												<span><strong>개로 제한합니다.</strong></span>
											</div>
											<div>
												<input type="checkbox" style="margin-right:5px;"><span><strong>배송이 필요한 선물입니다.</strong></span>
											</div>
										</div>
									</div>
									<!-- 선물 설정 끝 -->
								</div>
							</div>
						</div>
						<!-- 선물 구성 끝 -->
						<!-- ***********************************************가은 추가 끝*********************************************** -->
													
						<div style="text-align: center; margin: 20px 0;">
							<a href="<c:url value='/projectManager/projectUpload2.do?projectNo=${projectNo }'/>"><p class="button-2">이전</p></a>
							<input type="submit" class="button" value="저장하기">
							<a href="<c:url value='/projectManager/projectUpload4.do?projectNo=${projectNo }'/>"><p class="button-2">다음</p></a>
						</div>

					</form><!--선물 정보 폼 입력 끝-->
				</div><!-- card -->
			</div>
		</div><!-- container -->
	<div style="text-align: center; margin-bottom: 50px;"></div>

	<footer>
		<%@ include file="../inc/bottom.jsp"%>
	</footer>
	
</body>
</html>

