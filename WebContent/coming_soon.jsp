<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- header 위치 -->
<%@ include file="inc/top.jsp"%>

<script type="text/javascript">
	const countDownTimer = function(id, date){
		var _vDate = new Date(date);	//전달 받은 일자
		var _second = 1000;
		var _minute = _second*60;
		var _hour = _minute*60;
		var _day = _hour*24;
		var timer;
		
		function showRemaining(){
			var now = new Date();
			var distDt = _vDate - now;
			
			if(distDt <0){
				clearInterval(timer);
				document.getElementById(id).textContent = '해당 이벤트가 종료 되었습니다!';
				return;
			} 
			
			var days = Math.floor(distDt / _day);
			var hours = Math.floor((distDt % _day) / _hour);
			var minutes = Math.floor((distDt % _hour) / _minute);
			var seconds = Math.floor((distDt % _minute) / _second);
			
			document.getElementById(id).textContent = days+'일 ';
			document.getElementById(id).textContent += hours+'시간 ';
			document.getElementById(id).textContent += minutes+'분 ';
			document.getElementById(id).textContent += seconds+'초 ';
		}
		
		timer = setInterval(showRemaining, 1000);
	}
	
	var dateObj = new Date();
	dateObj.setDate(dateObj.getDate()+1);
	
	countDownTimer('soon', '01/04/2021 00:00 AM');
</script>

<div class="coming-soon" style="margin-bottom: 250px;">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-8">
				<div class="coming-soon-logo">
					<img src="assets/img/logo-404.png" alt="">
				</div>
				<div class="coming-soon-box bg1">
					<h2>곧 만나요!</h2>
					<p>공지사항 게시판을 준비중입니다.</p>
					<h2 id="soon"></h2>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- footer위치 -->
<%@ include file="inc/bottom.jsp"%>


<!-- 					<div class="counter-box clearfix" data-date="'2020/01/04'">
						<div class="single-counter">
							<div class="inner">
								<span class="counter-days" id="Days"></span> <span
									class="text">Days</span>
							</div>
						</div>
						<div class="single-counter">
							<div class="inner">
								<span class="counter-hours" id="hours"></span> <span
									class="text">hours</span>
							</div>
						</div>
						<div class="single-counter">
							<div class="inner">
								<span class="counter-minutes" id="minutes"></span> <span
									class="text">minutes</span>
							</div>
						</div>
						<div class="single-counter">
							<div class="inner">
								<span class="counter-seconds" id="seconds"></span> <span
									class="text">seconds</span>
							</div>
						</div>
					</div> -->