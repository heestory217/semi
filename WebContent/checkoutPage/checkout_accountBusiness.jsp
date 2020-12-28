<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link rel="stylesheet" href="../css/checkoutPage.css">
		

<script type="text/javascript" src="<c:url value='/js/jquery-3.5.1.min.js'/>">
</script>
<script type="text/javascript">
	$(function(){
		$('#title').focus();
		$('form[name=frmWrite]').find('input[type=button]').click(function(){
			location.href="<c:url value='/board/list.do'/>">;
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
			<form>
				<div class="checkoutDiv"
					style="margin-top: 30px; margin-bottom: 15px;">
					<label for="ckbAgree">결제사 정보제공 동의 ></label><br>
					<input id="ckbAgree" type="checkbox" required="required" style="margin-top:15px"> 
					<label for="ckbAgree" style="font-size:12px;">동의</label>
					<p class="agreeP">계좌 등록을 하시려면 출금이체 동의가 필요합니다.(전자금융거래법 제 15조 1항)</p>
					<hr style="border: 0.1px solid gray;">
		
					<div style="margin-top: 25px; margin-bottom: 15px;">
						<label for="bankName">결제은행</label><br><br> 
						<select>
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
						<p>공백, - 없이 입력해 주세요.</p>
						<input type="text" name="accountNo" required="required"
							placeholder="계좌번호">
					</div>
					<hr style="border: 0.1px solid gray;">
		
					<div style="margin-top: 20px; margin-bottom: 4px;">
						<label for="name">예금주명</label><br><br> <input type="text"
							name="name" required="required" placeholder="예금주명">
					</div>
					<hr style="border: 0.1px solid gray;">
		
					<div
						style="margin-top: 20px; margin-bottom: 15px;">
						<label for="businessNo">사업자 번호</label><br>
						<p>10자리 숫자로 입력해 주세요.</p><br> <input type="text"
							name="businessNo" required="required" placeholder="예) 1058752823">
		
					</div>
					<hr style="border: 0.1px solid gray;">
		
		
					<br>
		
				
		
		
					<label for="phoneNo">휴대폰번호</label><br><br> <input type="text" name="phoneNo"
						required="required" placeholder="예) 010-1234-2222">
		
		
					<div style="margin-top: 30px;">
						<input type="button" id="checkPhoneBtn" name="" value="인증하기">
						<br> <input type="submit" id="checkoutBtn" value="다음"
							onclick="checkout_complete.jsp">
					</div>
		
				</div>
		
			</form>
		</div>
		
		