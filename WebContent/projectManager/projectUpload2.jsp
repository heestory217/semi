<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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

/* 	//프로젝트 시간지정	
	$('.timepicker').timepicker({
	    timeFormat: 'HH:mm p',
	    interval: 60,
	    defaultTime: '24',
	    startTime: '00:00',
	    dynamic: false,
	    dropdown: true,
	    scrollbar: true
	});
	 */
	 
	//제목 길이 안내
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
	
	//--------------------------------------------------------------------

});//readyend

<!-- Accordion card 2 -->
<div class="card">
	<div class="card-header py-4" id="heading-2-2" data-toggle="collapse"
		role="button" data-target="#collapse-2-2" aria-expanded="false"
		aria-controls="collapse-2-2">
		<h6 class="mb-0">2. 펀딩구성 및 스토리텔링</h6>
	</div>
	<div id="collapse-2-2" class="collapse" aria-labelledby="heading-2-2"
		data-parent="#accordion-2">
		<div class="card-body">

			<!--프로젝트 업데이트 폼 입력 시작 : 프로젝트 테이블 update-->
			<form action="<c:url value='/projectManager/projectUpload_ok.do'/>"
				name="pjUpdateFrm" method="post">

				<p>펀딩 목표 설정</p>
				<div class="projectBox">
					<div>
						<div>
							<label for="goalAmount">목표 금액</label>
							<p>
								이번 프로젝트를 통해 모으고자 하는 펀딩 목표 금액이 얼마인가요? <br>마감일 자정까지 목표 금액을
								100% 이상 달성하셔야만 모인 후원금이 결제 됩니다. <br>막판에 후원을 취소하는 후원자들도 있는 점을
								감안해 10% 이상 초과 달성을 목표로 하시는게 안전합니다. <br>(목표 금액은 제작비, 선물 배송비,
								창작자의 인건비, 예비 비용 등을 고려하시기 바랍니다.)<br>
								<span style="color: #FF6F40;">5,000원 이상인 금액을 입력해주세요.</span>
							</p>
							<br> <input type="text" name="goalAmount"
								style="width: 200px;">원
						</div>
					</div>
				</div>
				<br>
				<p>펀딩 기간 설정</p>
				<div class="projectBox">
					<div>
						<!-- 프로젝트 공개일시 -->
						<div>
							<label for="opendate">프로젝트 공개일시</label>
							<p>
								<strong>심사 승인 후</strong>, 설정하신 일시에 <strong>프로젝트가 자동으로
									공개</strong>되니 신중하게 정해주세요. <br>설정하신 공개일시와 관계없이 프로젝트를 직접 공개하실 수도
								있습니다.
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
									style="color: #FF6F40;" id="page_output1"></span>로 부터 최대 60일 동안
								진행하실 수 있고 마감일 자정에 종료됩니다. <br>이미 선물을 만드셨다면, 선물 실행일 중에 마감일보다
								이른 날짜가 있지 않은지 꼭 확인해주세요.
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
							<textarea name="projectStory" id="projectStory"
								style="width: 100%;"></textarea>
							<script type="text/javascript">
											 CKEDITOR.replace('projectStory', {height: 500} );
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
			<p>
				펀딩 마감 후의 환불 및 교환 요청은 창작자가 약속하는 아래 정책에 따릅니다. <br>이는 후원자의 불만 또는
				분쟁 발생시 중요한 기준이 되니, 신중히 작성해 주세요.
			</p>
			<strong><span style="color: #FF6F40;">[ ] 안의 예시 문구를
					프로젝트에 적합한 내용으로 변경해주세요.</span></strong>
			<ul style="margin-left: 20px;">
				<li>'모든 프로젝트 공통' 내용은 필수로 적어주세요.</li>
				<li>'배송 필요 선물' '현장수령 선물' '디지털 콘텐츠 선물' 내용들은 이번 프로젝트에 해당되는 사항만 골라
					작성해 주세요.</li>
				<li>후원자의 단순 변심, 제품의 파손 및 불량, 창작자의 예기치 못한 선물 실행 지연 등 다양한 상황을
					고려하여 내용을 작성해 주세요.</li>
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