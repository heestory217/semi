<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp"%>

<!-- 프로젝트 등록 전 확인 페이지 -->
<div class="container" style="margin: 0 auto; padding: 6%">
	<div>
		<h3><strong>프로젝트를 올리기 전에 확인해 주세요.</strong></h3>
	</div>
	<hr>
	<div>
		펀딩고는 공개 검토 절차를 통해 창작자님이 작성한 프로젝트가 펀딩고의 정책을 준수하는지 확인하고 있습니다.<br>
		아래 사항들을 확인한 후 프로젝트를 올려 주세요.
		<hr>
		<ul style="list-style: none";>
			<li><a href="<%=request.getContextPath()%>/helpCenter/publicReviewPolicy.jsp" target="_blank" rel="noopener norefferrer">프로젝트 공개검토 기준</a></li>
		</ul>
	</div>
	<hr>
	<form action="a.jsp" method="post" name="publicFrm">
		<ul style="list-style: none";>
			<li>
				<div>
					<input type="checkbox" id="ck1" required="required"> 
					<label for="ck1" style="cursor: pointer;"> 새로운 아이디어를 실현하기 위한 프로젝트입니다. </label>
				</div>
			</li>
			<li>
				<div>
					<input type="checkbox" id="ck2" required="required"> 
					<label for="ck2" style="cursor: pointer;"> 이미 시판된 제품, 현금이나 지분 등 수익 제공, 선물 없는 단순 기부, 성인 인증이 필요한 콘텐츠 등 기준에 맞지 않는 선물을 제공하지 않습니다. </label>
				</div>
			</li>
			<li>
				<div>
					<input type="checkbox" id="ck3" required="required"> 
					<label for="ck3" style="cursor: pointer;"> 창작자의 신분증 혹은 사업자등록증, 국내 은행 계좌, 연락 가능한 휴대폰 번호가 있습니다.</label>
				</div>
			</li>
			<li>
				<div>
					<input type="checkbox" id="ck4" required="required"> 
					<label for="ck4" style="cursor: pointer;"> 창작자 대표자는 19세 이상 성인입니다. </label>
				</div>
			</li>
		</ul>
		<hr>
		<button type="submit" class="button">계속하기</button>
	</form>
</div>
<!-- 프로젝트 등록 전 확인 페이지 끝-->

<%@ include file="../inc/bottom.jsp"%>