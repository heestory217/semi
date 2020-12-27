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
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css">	
<script src="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"></script>

<!-- Spoca Han Sans 폰트 -->
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSans-kr.css' rel='stylesheet' type='text/css'>
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSans-jp.css' rel='stylesheet' type='text/css'>


<script type="text/javascript">
var oEditors = [];
var itemNum = 0;

$(function(){
	//달력 - 프로젝트 오픈일
	$('#opendate').datepicker({
		dateFormat: 'yy-mm-dd',
		changeYear : true,
		dayNamesMin : ['일','월','화','수','목','금','토'],
		monthNames : ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
		showOn: "button",
        buttonImage: "<c:url value='/icons/calendar.svg'/>",
        buttonImageOnly: true,
        
        onClose: function( selectedDate ) {    
            // 시작일(fromDate) datepicker가 닫힐때
            // 종료일(toDate)의 선택할수있는 최소 날짜(minDate)를 선택한 시작일로 지정
            $("#duedate").datepicker( "option", "minDate", selectedDate );
        },    
        
	    //날짜선택하면
		onSelect: function(){
	        var day1 = $("#opendate").datepicker('getDate').getDate();                 
	        var month1 = $("#opendate").datepicker('getDate').getMonth() + 1;             
	        var year1 = $("#opendate").datepicker('getDate').getFullYear();
	        var fullDate = year1 + "년" + month1 + "월" + day1 + "일";
	        $('#page_output1').html(fullDate);
	    }

	}).datepicker('setDate',new Date()).datepicker("option", "minDate", new Date());
	
	//달력 - 프로젝트 마감일
	$('#duedate').datepicker({
		dateFormat: 'yy-mm-dd',
		changeYear : true,
		dayNamesMin : ['일','월','화','수','목','금','토'],
		monthNames : ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
		showOn: "button",
        buttonImage: "<c:url value='/icons/calendar.svg'/>",
        buttonImageOnly: true,
        
        onClose: function( selectedDate ) {
            // 종료일(toDate) datepicker가 닫힐때
            // 시작일(fromDate)의 선택할수있는 최대 날짜(maxDate)를 선택한 종료일로 지정 
            $("#opendate").datepicker( "option", "maxDate", selectedDate );
        },
        
	    //날짜선택하면
		onSelect: function(){
	        var day1 = $("#duedate").datepicker('getDate').getDate();                 
	        var month1 = $("#duedate").datepicker('getDate').getMonth() + 1;             
	        var year1 = $("#duedate").datepicker('getDate').getFullYear();
	        var fullDate = year1 + "년" + month1 + "월" + day1 + "일";
	        $('#page_output_end').html(fullDate);
	    }

	}).datepicker("option", "maxDate", $("#opendate")+60); 

	//프로젝트 시간지정	
	$('.timepicker').timepicker({
	    timeFormat: 'HH:mm p',
	    interval: 60,
	    defaultTime: '24',
	    startTime: '00:00',
	    dynamic: false,
	    dropdown: true,
	    scrollbar: true
	});
	
	//22자 제목 안내
	$('#projectName').keyup(function(){
		if($('#projectName').val().length==50){
			$('#title_length').text('※최대 50자 이내의 제목만 입력가능합니다. (현재 글자수 : 50자)');
		}else{
			$('#title_length').text('');
		}
	});
	
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
	
	//카테고리 선택
 	$('#ctNo').children().each(function(){
		if($(this).val()=="${vo.ctNo}"){
			$(this).prop("selected","selected"); // attr적용안될경우 prop으로 
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
			<h3 class="animated infinite bounce delay-2s" >어서오세요, 창작자님!</h3>
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
			<!-- 테스트 -->
			<div id="accordion-2" class="accordion accordion-spaced">

			<!-- Accordion card 1 -->
			<div class="card">
				<div class="card-header py-4" id="heading-2-1"
					data-toggle="collapse" role="button" data-target="#collapse-2-1"
					aria-expanded="false" aria-controls="collapse-2-1">
					<h6 class="mb-0">1. 프로젝트 개요</h6>
				</div>
				<div id="collapse-2-1" class="collapse"
					aria-labelledby="heading-2-1" data-parent="#accordion-2">
					<div class="card-body">
					
						<!-- 프로젝트 기본등록 폼 입력 시작 : 프로젝트 테이블 insert-->
						<form action="<c:url value='/projectManager/projectUpload_ok.do'/>" name="pjUploadFrm" method="post">
								<input type="text" name="projectNo" value="${param.projectNo}"/>
								<p>프로젝트개요</p>
								<div class="projectBox">
									<div>
										<div>
											<label for="projectName"><span style="color: #FF6F40;">*</span>프로젝트 제목</label><br>
												<p>프로젝트에 멋진 제목을 붙여주세요. <br>감정에 호소하는 제목보다는
												만드시려는 창작물, 작품명, 혹은 프로젝트의 주제가 드러나게 써주시는 것이 좋습니다.  </p>
												<input type="text" id="projectName" name="projectName" placeholder="제목을 입력하세요" maxlength="50" value="${vo.projectName}">
												<br><span style="color: #FF6F40;" id="title_length"></span>
										</div>
										<br>
										<div>
											<label for="projectDetail"><span style="color: #FF6F40;">*</span>프로젝트 요약</label> <br> 
											<p>후원자 분들에게 본 프로젝트를 간략하게 소개해 봅시다.</p>
											<textarea rows="3" cols="130" name="projectDetail" id="projectDetail"
												placeholder="프로젝트 요약을 입력해주세요">${vo.projectDetail}</textarea>
										</div>
										<br>
										<div>
											<label for="ctNo"><span style="color: #FF6F40;">*</span>프로젝트 카테고리</label> <br> <p>프로젝트의 성격에 맞는 카테고리를 선택해 주세요. <br>(프로젝트 성격과 맞지
												않는 카테고리를 선택하실 시 후원자가 해당 프로젝트를 찾기 어려워지기에 에디터에 의해 조정될 수 있습니다.)</p>
											<select name="ctNo" id="ctNo">
												<option value="1">제품디자인</option>
												<option value="2">문구도서</option>
												<option value="3">문화예술</option>
												<option value="4">푸드</option>
												<option value="5">패션</option>
											</select>
										</div>
									</div>
								</div><!-- projectBox -->
							
							<div style="text-align: center; margin: 20px 0;">
								<input type="submit" class="button" value="저장하기">
							</div>
							
				<!-- 프로젝트 기본등록 폼 입력 끝-->
				</form>
							
				<br>
							
				<!--창작자 정보 폼 입력 시작 : 회원 테이블 insert | 파일업로드-->
				<form action="<c:url value='/GoMember/memberProfileEdit_ok.do'/>" name="CreaterFrm" method="post" enctype="multipart/form-data" autocomplete="off">
	        			<input type="hidden" name="projectNo" value="${param.projectNo}">
        		<p>창작자 정보</p>
						<div class="projectBox">
							<div>
							
								<div>
									<label for="upfile">프로필 이미지</label> <br> 창작자님 개인이나 팀의
									사진을 올려주세요. <br>얼굴이 나온 사진을 넣으면 프로젝트의 신뢰성 향상에 도움이 됩니다. <br> 파일
									형식은 jpg, png 또는 gif로, 사이즈는 가로 200px, 세로 200px 이상으로 올려주세요. <br><input
										type="file" id="upfile" name="upfile">
								</div>
								<br>
								<div>
									<label for="name">창작자 이름</label> <br> <input type="text"
										name="name" disabled="disabled" value="${name }"
										style="width: 20%;">
								</div>
								<br>
								<div>
									<label for="memberIntro">창작자 소개</label> <br>
									<textarea rows="3" cols="130" name="memberIntro"
										placeholder="창작자님의 이력과 간단한 소개를 써 주세요."></textarea>
								</div>
								
							</div>
						</div><!-- projectBox -->
															
						<div style="text-align: center; margin: 20px 0;">
							<input type="submit" class="button" value="저장하기">
						</div>

				<!--창작자 정보 폼 입력 끝-->
				</form>
			</div>
		</div>
	</div>
				<!-- Accordion card 2 -->
				<div class="card">
					<div class="card-header py-4" id="heading-2-2"
						data-toggle="collapse" role="button" data-target="#collapse-2-2"
						aria-expanded="false" aria-controls="collapse-2-2">
						<h6 class="mb-0">2. 펀딩구성 및 스토리텔링</h6>
					</div>
					<div id="collapse-2-2" class="collapse"
						aria-labelledby="heading-2-2" data-parent="#accordion-2">
						<div class="card-body">
					
						<!--프로젝트 업데이트 폼 입력 시작 : 프로젝트 테이블 update-->
						<form action="" name="pjUpdateFrm" method="post">
				
							<p>펀딩 목표 설정</p>
							<div class="projectBox">
								<div>
									<div>
										<label for="goalAmount">목표 금액</label> <p>이번
											프로젝트를 통해 모으고자 하는 펀딩 목표 금액이 얼마인가요? <br>마감일 자정까지 목표 금액을 100% 이상
											달성하셔야만 모인 후원금이 결제 됩니다. <br>막판에 후원을 취소하는 후원자들도 있는 점을 감안해 10% 이상 초과
											달성을 목표로 하시는게 안전합니다. <br>(목표 금액은 제작비, 선물 배송비, 창작자의 인건비, 예비 비용 등을
											고려하시기 바랍니다.)<br><span style="color: #FF6F40;">5,000원 이상인
												금액을 입력해주세요.</span>
										</p> <br> <input type="text" name="goalAmount" style="width:200px;">원
									</div>
								</div>
							</div>
							<br>
							<p>펀딩 기간 설정</p>
							<div class="projectBox">
								<div>
									<!-- 프로젝트 공개일시 -->
									<div>
										<label for="goalAmount">프로젝트 공개일시</label>
										<p>
											<strong>심사 승인 후</strong>, 설정하신 일시에 <strong>프로젝트가
												자동으로 공개</strong>되니 신중하게 정해주세요. <br>설정하신 공개일시와 관계없이 프로젝트를 직접 공개하실 수도 있습니다.
										</p>
										<p>
											<!-- 달력넣기 -->
											공개일시 : 
											<input type="text" id="opendate">
											<span style="margin-right: 10px;"></span>
											<!-- 시간넣기 -->
											<input type="text" class="timepicker" id="opentime">
										</p>
									</div>
									
									<br>
									
									<div>
										<!-- 프로젝트 마감일시 -->
										<!-- 공개일시를 먼저 선택해야 사용가능함 disable false -->
										<label for="duedate">프로젝트 마감일시</label>
										<p>마감일시 : <input type="text" id="duedate"></p>
										<p>
											<!-- 위에서 설정한 걸로 넣기 날짜 -->
											<strong>마감일을 정할 때 주의할 점</strong><br> 프로젝트는 <span
												style="color: #FF6F40;" id="page_output1"></span>로 부터 최대 60일 동안
											진행하실 수 있고 마감일 자정에 종료됩니다. <br>이미 선물을 만드셨다면, 선물 실행일 중에 마감일보다 이른 날짜가
											있지 않은지 꼭 확인해주세요.
										</p>
										<p><strong> <span style="color: #FF6F40;" id="page_output_end"></span>에 펀딩을 마감합니다. </strong></p> 
									</div>
								</div>
							</div>
							
							<br>
							
							<p>프로젝트 대표이미지</p>
							<div class="projectBox">
								<div>
									<input type="file" name="fileName">
								</div>
							</div>
							<br>
							
							<p>프로젝트 스토리텔링</p>
							<div class="projectBox">
								<div>
									<p>프로젝트에 대한 이야기를 들려주세요.</p>
									<div>
										<!-- 에디터 -->
											<textarea name="content" id="p_content" style="width: 100%;"></textarea>
											<script type="text/javascript">
											 CKEDITOR.replace('p_content', {height: 500});
											</script>
										<!-- 에디터 -->
									</div>
								</div>
							</div>
							<br>
							
							<p>펀딩 안내</p>
							<div class="projectBox">
								<div>
									<div>
										<label for="projectPolicy">환불 및 교환 정책</label>
										<p>펀딩 마감 후의 환불 및 교환 요청은 창작자가 약속하는 아래 정책에 따릅니다. <br>이는 후원자의 불만 또는 분쟁 발생시 중요한 기준이 되니, 신중히 작성해 주세요.</p>
										<strong><span style="color: #FF6F40;">[    ] 안의 예시 문구를 프로젝트에 적합한 내용으로 변경해주세요.</span></strong>
										<ul style="margin-left: 20px;">
											<li>'모든 프로젝트 공통' 내용은 필수로 적어주세요.</li>
											<li>'배송 필요 선물' '현장수령 선물' '디지털 콘텐츠 선물' 내용들은 이번 프로젝트에 해당되는 사항만 골라 작성해 주세요.</li>
											<li>후원자의 단순 변심, 제품의 파손 및 불량, 창작자의 예기치 못한 선물 실행 지연 등 다양한 상황을 고려하여 내용을 작성해 주세요.</li>
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
							
							<p>상품 정보 고시</p>
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
					<!--프로젝트 업데이트폼 입력 끝-->
					</form>
					
					</div>
				</div>
			</div>
				
				
				<!--선물 정보 폼 입력 시작 : gift 테이블 insert (+item table)-->
				<form action="" name="GiftFrm" method="post">
					<fieldset>
					<!-- Accordion card 3 -->
					<div class="card">
						<div class="card-header py-4" id="heading-2-3"
							data-toggle="collapse" role="button" data-target="#collapse-2-3"
							aria-expanded="false" aria-controls="collapse-2-3">
							<h6 class="mb-0">3. 선물 구성</h6>
						</div>
						<div id="collapse-2-3" class="collapse"
							aria-labelledby="heading-2-3" data-parent="#accordion-2">
							<div class="card-body">
							<!-- *******************************************가은 추가************************************ -->
							<!-- 선물 구성 -->
							<p>선물 구성</p>
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
											<textarea rows="1" cols="130" name="memberIntro"
												placeholder="예) 배송비 포함, 얼리버드, <선물 세트 A> 등" style="padding:8px;"></textarea>
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
							</div>
														
							<div style="text-align: center; margin: 20px 0;">
								<input type="submit" class="button" value="저장하기">
							</div>
	
							<!--선물 정보 폼 입력 끝-->
						</div>
					</div>
					</fieldset>
				</form>
				
				
				<!--계좌 정보 폼 입력 시작 : bank 테이블 insert-->
			<form action="" name="BankFrm" method="post">
				<fieldset>
					<!-- Accordion card 4 -->
					<div class="card">
						<div class="card-header py-4" id="heading-2-4"
							data-toggle="collapse" role="button" data-target="#collapse-2-4"
							aria-expanded="false" aria-controls="collapse-2-3">
							<h6 class="mb-0">4. 계좌 설정</h6>
						</div>
						<div id="collapse-2-4" class="collapse"
							aria-labelledby="heading-2-4" data-parent="#accordion-2">
							<div class="card-body">
							
								<p>이메일</p>
								<div class="projectBox">
									<div>
										<div>
											<label for="email">이메일 주소</label>
											<input type="text" name="email" value="${email}">
										</div>
										
									</div>
								</div>
									<br>
<!-- 								<p>본인 인증</p>
								<div class="projectBox">
									<div>
										<div>
											<label for="hp">휴대폰 번호</label>
											<input type="text" name="hp">
										</div>
										
									</div>
								</div> -->
									<br>
								<p>입금 계좌</p>
								<div class="projectBox">
									<div>
										<div>
											<label for="private" style="cursor:pointer;">
											<input type="radio" name="bank" id="private" value="private"/>개인</label>
											<label for="business" style="cursor:pointer;width: 250px;">
											<input type="radio" name="bank" id="business" value="business"/>사업자(개인사업자 포함)</label>
										</div>
										<br>
										
										<div>
											<label for="bankName">은행명</label> 
											<input type="text" name="bankName" maxlength="6">
										</div>
											
										<div>
											<label for="bankName">계좌 번호</label>
											<input type="text" name="bankName" maxlength="16">
										</div>
										
										<div>
											<label for="bankOwner">예금주명</label> 
											<input type="text" name="bankOwner" maxlength="6">
										</div>
											
										<div>
											<label for="birth">예금주 생년월일</label> 
											<input type="text" name="birth" maxlength="6">
										</div>
										
									</div>
								</div>
							
								<div style="text-align: center; margin: 20px 0;">
									<input type="submit" class="button" value="저장하기">
								</div>
			
							</div>
						</div>
					</div>
				</fieldset>
				<!--계좌 정보 폼 입력 끝-->
			</form>
		</div>
		<div style="text-align: center; margin-bottom: 50px;"></div>
	<!-- 내용 끝 -->

	</div><!-- container -->

	<footer>
		<%@ include file="../inc/bottom.jsp"%>
	</footer>
	
</body>
</html>

