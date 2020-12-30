<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <link rel="stylesheet" href="../css/detail_chooseOp.css">



			                        <!-- 만약 클릭된게 옵션 1이면  -->
			<div class="content">
				<div class="single-item_lineup">
					<div class="detail_op" name="priceOp">1000원 +</div><br>
							<div>
							<label style="font-size: 12px; color: gray; font-weight: bold;">추가
								후원금 (선택)</label><br> 
							</div>

					<form action="<%=request.getContextPath() %>/checkoutPage/checkoutPage.do" target=" self" method="get" name="pdAdd">
						<div>
							<input type="text" name="bonusPrice" placeholder="0" value=""
								style="margin-top: 10px; margin-bottom: 10px;"> 
								<input type="submit" id="bonusBtn" name="customer_op1" value="밀어주기">
							<br> 
							<input type="button" id="backBtn" value="이전옵션으로"
								onclick="history.back(-1);">
						</div>
					</form>
			
				</div>
			</div>
			
			
			<!--옵션 2가 클릭되면 -->
			
			<div class="content">
					<div class="single-item_lineup">
			
					<div class="detail_op" name="priceOp1">
						<p id="optionValue">105,000원 +</p>
						<p id="chooseOp">1. 하프보드 set_ 무료배송</p>
							</div>
					<div class="option">
						<label>set 구성품 A</label>
					</div>
	
			<form action="<%=request.getContextPath() %>/checkoutPage/checkoutPage.do" target=" self" method="get" name="pdAdd">
					<div>
						<label style="font-size: 12px; color: gray; font-weight: bold;">추가
							후원금 (선택)</label><br> 
							<label style="font-size: 9px; color: gray; font-weight: bold;">더
							후원해주시면 프로젝트 성사가 더 앞당겨집니다.</label><br> <input type="text"
							name="bonusPrice" placeholder="0" value=""
							style="margin-top: 10px; margin-bottom: 10px;"> 
							<input type="submit" id="bonusBtn" name="customer_op1" value="밀어주기">
						<br> <input type="button" id="backBtn" value="이전옵션으로"
							onclick="history.back(-1);">
					</div>
				</form>
				</div>
				</div>
				
