<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>펀딩고 :: FUNDINGO</title>
<link href="https://fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,500,500i,700,700i" rel="stylesheet">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/owl.carousel.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/animate.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/main.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/top.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/main_footer.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/quick-website.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/projectUpload.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/jquery-ui.css">

<!-- 에디터 -->
<script type="text/javascript" src="<%=request.getContextPath()%>/ckeditor/ckeditor.js"></script>

<!--Required JS files-->
<script src="<%=request.getContextPath()%>/js/jquery-2.2.4.min.js"></script>
<script src="<%=request.getContextPath()%>/js/vendor/popper.min.js"></script>
<script src="<%=request.getContextPath()%>/js/vendor/bootstrap.min.js"></script>
<script src="<%=request.getContextPath()%>/js/vendor/owl.carousel.min.js"></script>
<script src="<%=request.getContextPath()%>/js/vendor/isotope.pkgd.min.js"></script>
<script src="<%=request.getContextPath()%>/js/vendor/jquery.barfiller.js"></script>
<script src="<%=request.getContextPath()%>/js/vendor/loopcounter.js"></script>
<script src="<%=request.getContextPath()%>/js/vendor/slicknav.min.js"></script>
<script src="<%=request.getContextPath()%>/js/active.js"></script>

<!-- 달력 -->
<script src="<%=request.getContextPath()%>/js/jquery-3.5.1.min.js"></script>
<script src="<%=request.getContextPath()%>/js/jquery-ui.js"></script>

<!-- 시계 -->
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css">	
<script src="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"></script>

<!-- Spoca Han Sans 폰트 -->
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSans-kr.css' rel='stylesheet' type='text/css'>
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSans-jp.css' rel='stylesheet' type='text/css'>


<script type="text/javascript">
var oEditors = [];

$(function(){
	//에디터
	
    
	//달력 - 프로젝트 오픈일
	$('#opendate').datepicker({
		dateFormat: 'yy-mm-dd',
		changeYear : true,
		dayNamesMin : ['일','월','화','수','목','금','토'],
		monthNames : ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
		showOn: "button",
        buttonImage: "<%=request.getContextPath()%>/icons/calendar.svg",
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
        buttonImage: "<%=request.getContextPath()%>/icons/calendar.svg",
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
	
	
});//readyend

</script>


</head>
<body>
	<!-- 헤더시작 -->
	<header class="header-wrap">
		<div class="container top_container">
			<div class="row">

				<div class="logo-column">
					<a href="<%=request.getContextPath()%>/mainArticle.jsp"
						class="f_logo"> <img
						src="<%=request.getContextPath()%>/img/topLogo.png"
						alt="로고 이미지">
					</a>
				</div>
			</div>
		</div>
	</header>
	<!-- 헤더끝 -->
<body>
	<!-- 타이틀 시작 -->
	<div class="announce_title">
		<div style="width: 100%; heigth: 140px; margin: auto; background-color: #191970;  text-align: center; font-weight: bold; color: #fff;">
		<p>결제 페이지입니다.</p>
		</div>
	</div>
	<!-- 타이틀 끝 -->

		<div class="container">
		

          <iframe id="checkoutIframe" src="checkout_chooseAccount.do" scrolling="no" style="width: 1100px; margin-top: 50px;height: 800px;"
            		name="option_redirect"></iframe>
       
       
       					
					</div> <!-- container디브 -->
				</div>
			</div>
		</div>
		<div style="text-align: center; margin-bottom: 50px;">
		</div>
	<!-- 내용 끝 -->




	</div>
	
</body>
</html>

