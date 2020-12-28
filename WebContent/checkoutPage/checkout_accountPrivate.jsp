		<%@ page language="java" contentType="text/html; charset=UTF-8"
			pageEncoding="UTF-8"%>
		<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
			
		<link rel="stylesheet"
			href="<%=request.getContextPath()%>/css/checkoutPage.css">
	<script type="text/javascript" src="<c:url value='/js/jquery-3.5.1.min.js'/>">
</script>
<script type="text/javascript">
	$(function(){
		$('#name').focus();
		$('form[name=frmCheckout]').find('input[type=button]').click(function(){
			/* 폰번호 유효성 체크 
			if('#phoneNo').equals ; */
			"alert('인증되었습니다.')"
		});
		
		$('form[name=frmCheckout]').submit(function(){
			if($('#bankName').is(":selected") == false){
				alert('결제은행을 선택해주세요');
				$('#bankName').focus();
				event.preventDefault();
			}else if($('#accountNo').val().length<1){
				alert('계좌번호를 입력해주세요');
				$('#accountNo').focus();
				event.preventDefault();
			}else if($('#name').val().length<1){
				alert('예금주명을 입력하세요');
				$('#name').focus();
				event.preventDefault();
			}else if($('#birthday').val().length<1){
				alert('예금주 생년월일을 입력하세요');
				$('#birthday').focus();
				event.preventDefault();
			}
			}else if($('#phoneNo').val().length<1){
				alert('휴대폰번호을 입력하세요');
				$('#phoneNo').focus();
				event.preventDefault();
			}
			
		})
	});


</script>
		
		
		<div class="checkoutAccountPrivateDiv"
			style="margin-left: 90px; margin-top: 50px; margin-right: 50px; margin-bottom: 50px;">
			<form name="frmCheckout" action="<c:url value='checkout_complete.jsp'/>" method="post">
				<div class="checkoutDiv"
					style="margin-top: 30px; margin-bottom: 15px;">
					<label for="ckbAgree">결제사 정보제공 동의 ></label><br>
					<input id="ckbAgree" type="checkbox" required="required" style="margin-top:15px"> 
					<label for="ckbAgree" style="font-size:12px;">동의</label>
					<p class="agreeP">계좌 등록을 하시려면 출금이체 동의가 필요합니다.(전자금융거래법 제 15조 1항)</p>
					<hr style="border: 0.1px solid gray;">
		
					<div style="margin-top: 25px; margin-bottom: 15px;">
						<label for="bankName">결제은행</label><br><br> 
						<select id="bankName">
							<option>은행을 선택해주세요</option>
							<option value="bank1">국민은행</option>
							<option value="bank2">신한은행</option>
							<option value="bank3">기업은행</option>
							<option value="bank4">우리은행</option>
							<option value="bank5">씨티은행</option>
							<option value="bank6">하나은행</option>
						</select>
					</div>
					<hr style="border: 0.1px solid gray;">
		
					<div style="margin-top: 30px; margin-bottom: 15px;">
						<label for="accountNo">계좌번호</label>
						<p>휴대폰 번호 등으로 만든 평생계좌번호 및 가상계좌, 펀드/적금/정기예금 등의 계좌는 등록이 불가능합니다.</p>
						<input type="text" id="accountNo" name="accountNo" required="required"
							placeholder="계좌번호">
					</div>
					<hr style="border: 0.1px solid gray;">
		
					<div style="float: left; margin-top: 20px; margin-bottom: 2px;">
						<label for="name">예금주명</label><br><br> 
						<input type="text" id="name" name="name" required="required" placeholder="예금주명" style="margin-top:30px;">
					</div>
		
					<div
						style="float: left; margin-left: 250px; margin-top: 20px; margin-bottom: 15px;">
						<label for="birthday">예금주 생년월일</label><br>
						<p>6자리로 입력해주세요.</p><br> <input type="text" id="birthday"
							name="birthday" required="required" placeholder="예) 800101">
		
					</div>
					<hr style="border: 0.1px solid gray;">
		
		
					<br>
		
					<div style="clear: left;"></div>
		
		
					<label for="phoneNo">휴대폰번호</label><br><br> <input type="text" id="phoneNo" name="phoneNo"
						required="required" placeholder="예) 010-1234-2222">
		
		
					<div style="margin-top: 30px;">
						<input type="button" id="checkPhoneBtn" name="" value="인증하기">
						<br> <input type="submit" id="checkoutBtn" value="결제하기">
					</div>
		
				</div>
		
			</form>
		</div>
		
		
		
		
		
		
		
