<%@page import="com.mytf.post.model.postVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,500,500i,700,700i" rel="stylesheet">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/owl.carousel.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/barfiller.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/animate.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/font-awesome.min.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/main.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/top.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/main_footer.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/discover.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/memberRegister.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/login.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/feeAndFundingPolicy.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/detail_chooseOp.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/detail_commTab.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/detailPage_css.css">

<!-- Spoca Han Sans 폰트 -->
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSans-kr.css' rel='stylesheet' type='text/css'>
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSans-jp.css' rel='stylesheet' type='text/css'>
<link href="../js/jquery-ui.min.css" rel="stylesheet" type"text/css">
<script type="text/javascript" src="../js/jquery-3.5.1.min.js"></script>
<script src="<%=request.getContextPath()%>/js/feather.min.js"></script>
</head>
<body>
<%
/* 	 String projectNo="PJ004"; 
 */	
 
	String projectNo = request.getParameter("projectNo");
	
%>

<%--
<%@ include file="../inc/top.jsp" %>
<%@ include file="detail_header.jsp" %>
<%@ include file="detail_nav.jsp" %>
 --%>
<!-- <div class="sectionAndAside"> 탭이랑 어사이드 감싸는 디브-->


<section class="detailSection">



	<div id="detailContainer">

		<ul class="detailTab">
			<li class="current" data-tab="tab1"><a href="#">스토리</a></li>
			<li data-tab="tab2"><a href="#">커뮤니티</a></li>
			<li data-tab="tab3"><a href="#">펀딩 안내</a></li>
		</ul>

		<div id="tab1" class="tabcontent current">
			<div id="tabs-story">
				<div id="storyPage">
					<div class="storyContainer" id="#sc">
						<div class="storyDiv">
							<!-- 창작자 스토리 불러오기 -->
							<h1>
								<창작자가 하고 싶은 말 / 스토리>
							</h1>
							<br>
							<h1>예능 뽀시래기 팝니다</h1>
							<br> <img src="../img/story_content_example.gif"
								style="width: 84%; margin-left: 42px;"><br>
								<div>
							내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용
								내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div id="tab2" class="tabcontent">

			<div class="writerFlag" id="#move2">
				<div>
					<img class="storyWriterImage" src="../img/storydivWriterImg.png"
						alt="창작자/후원자 사진" style="width: 35px;">
				</div>
				<div class="storyDivFlag">
					<p>
						<b>후원자만 글을 쓸 수 있어요</b>
					</p>
				</div>
			</div>



			
			
			
			
<%


//view페이지

/* 				postVO vo = (postVO)request.getAttribute("vo");
 */
/* 				List<postVO> list = (List<postVO>)request.getAttribute("list");
 */
		/* 	 String projectNo = request.getParameter("projectNo"); */
				
				
				
				
				//3
/* 				String postContent = vo.getPostContent();
				if(postContent != null){
					postContent=postContent.replace("<br>","\r\n");
					postContent=postContent.replace("<p>","");
					postContent=postContent.replace("</p>","");
				}else{
					postContent="";
				}	 */
	
			
//3
%>




<div class="subcontainer">


	<ul class="commTab">
		<li class="tab2-link current" data-tab="tab_All">모든게시글</li>
		<li class="tab2-link" data-tab="tab_Update">창작자 업데이트</li>
	</ul>

	<div id="tab_All" class="tab-content current">
<div class="communityContainer">


							<%
							List<postVO> list = (List<postVO>)request.getAttribute("list");

							for(int i=0; i<list.size(); i++){
								postVO vo=list.get(i);
							%>
								<div class="community_contents">
<%-- 						<%=스토리게시글no%> 로 가져오기? #communityContents에 넣기?			
 --%>						
 							<!--  게시글 "내용"끌어와서 보여주기 -->
							<%-- <%=스토리게시글no%> 로 가져오기?--%>				
 							<div class="comm_moreContents">
								<div><p><b>제목: <%=vo.getTitle() %></b></p></div>
								<div style="float:left;"><p>작성자: ${name }</p></div>
								<div style="float: right;"><p>등록일: <%=vo.getPostDate() %></p></div>
								<div style="height: 100%;">
								<div style="width:100%; margin-top: 60px; margin-bottom: 60px; border:none; overflow:hidden; readonly=readonly;">
									<%=vo.getPostContent() %>
								</div>
								</div>
							</div>

						</div>


						<!--  댓글 끌어와서 보여주기 -->
						<div id="community_comments">
							<hr>
							<div id="communityCommentImg">
								<img src="../img/communityComment.PNG"
									style="width: 35px; margin-left: -13px; margin-top: 8px; margin-bottom: -14px;">
							</div>

							<!-- 해당 게시글에 대한 코멘트 불러오기 -->
							<div class="moreComments"></div>

						</div>
					</div>
						</div>
								
							<%}	%>
							
						<!-- 반복문 돌려서 -->
<%-- 						 <% for int i=0; i<스토리게시글size나 length만큼 돌렸을때; i++ %>  <!-- 창작자 로고/이름 끌어와서 보여주기 -->
 --%>					
 <!-- 
 							<div style="padding-left: 15px; padding-top: -10px; margin-top:-10px;">
							<div>
								<img src="../img/writerUpdate.PNG" style="width: 80px;">
							</div>
							<div>
								<img src="../img/authorLogo.png"
									style="width: 37px; margin-left: 0px;"> <a href=""><img
									src="../img/authorName.png"
									style="width: 85px; margin-bottom: 2px;"></a> <img
									src="../img/writeMark.PNG"
									style="width: 41px; margin-bottom: 9px; margin-left: -16px;">
							</div>
						</div>
 -->


				
					
	<div id="tab_Update" class="tab-content">
	<div class="communityContainer">

						<!-- 반복문 돌려서 -->
<%-- 						 <% for int i=0; i<스토리게시글size나 length만큼 돌렸을때; i++ %>  <!-- 창작자 로고/이름 끌어와서 보여주기 -->
 --%>					
 
 							<div style="padding-left: 15px; padding-top: -10px; margin-top:-10px;">
							<div>
								<img src="../img/writerUpdate.PNG" style="width: 80px;">
							</div>
							<div>
								<img src="../img/authorLogo.png"
									style="width: 37px; margin-left: 0px;"> <a href=""><img
									src="../img/authorName.png"
									style="width: 85px; margin-bottom: 2px;"></a> <img
									src="../img/writeMark.PNG"
									style="width: 41px; margin-bottom: 9px; margin-left: -16px;">
							</div>
						</div>


						<!--  게시글 "내용"끌어와서 보여주기 -->
<%-- 						<%=스토리게시글no%> 로 가져오기?
 --%>						<div class="community_contents">
<%-- 						<%=스토리게시글no%> 로 가져오기? #communityContents에 넣기?			
 --%>				<div class="comm_moreContents">
								
								<div>
									<p>창작자 업데이트 창작자 업데이트 창작자 업데이트 창작자 업데이트 창작자 업데이트 창작자 업데이트 창작자
									업데이트 창작자 업데이트 창작자 업데이트 창작자 업데이트 창작자 업데이트 창작자 업데이트 창작자 업데이트 창작자
									업데이트 창작자 업데이트 창작자 업데이트ㅍ창작자 업데이트 창작자 업데이트창작자 업데이트ㅍ 창작자 창작자 업데이트
									창작자 업데이트 창작자 업데이트 창작자 업데이트 창작자 업데이트 창작자 업데이트 창작자 업데이트 창작자 업데이트
									창작자 업데이트 창작자 업데이트 창작자 업데이트 창작자 업데이트 창작자 업데이트 창작자 업데이트 창작자 업데이트
									</p>
								</div>

							</div>

						</div>


						<!--  댓글 끌어와서 보여주기 -->
						<div id="community_comments">
							<hr>
							<div id="communityCommentImg">
								<img src="../img/communityComment.PNG"
									style="width: 35px; margin-left: -13px; margin-top: 8px; margin-bottom: -14px;">
							</div>

							<!-- 해당 게시글에 대한 코멘트 불러오기 -->
							<div class="moreComments"></div>

						</div>
					</div>
</div>
</div>
	
<button id="writePostBtn" onclick="location.href='<%=request.getContextPath()%>/post/write_all.do?projectNo="+projectNo()'">글쓰기</button>

			
























		</div>




		<div id="tab3" class="tabcontent">

			<div id="fundPage">
				<div id="refundPolicy_contents" id="#move3">

					<p>
						<b>이 프로젝트의 환불 및 교환 정책</b>
					</p>
					<div><p>
						<!-- 창작자 정책 -->
						모든 프로젝트 공통 <br>
						- 프로젝트 마감일 후에는 즉시 제작 및 실행에 착수하는 프로젝트 특성상 단순 변심에 의한 후원금
						환불이 불가능합니다. <br>
						- 예상 전달일로부터 31일 이상 선물 전달이 이뤄지지 않을 경우, 환불을 원하시는 분들께는
						수수료를 포함한 후원금을 환불해 드립니다. <br>(플랫폼 수수료: 모금액의 5%, 부가세 별도 / 결제 수수료: 결제
						성공액의 3%, 부가세 별도 ) <br>
						- 선물 전달을 위한 배송지 및 서베이 답변은 2021. 01. 20에 일괄 취합할 예정입니다.<br> 
						- 이후 배송지 변경이나 서베이 답변 변경을 원하실 때에는 '창작자에게 문의하기'로 개별 문의하셔야
						합니다. <br>
						배송이 필요한 선물 <br>
						- 파손 또는 불량품 수령 시 7일 이내로 교환이 가능합니다. <br>
						- 교환 및 AS 문의는'창작자에게 문의하기'로 신청해 주세요. <br>
						- 파손이나 불량품 교환시 발생하는 비용은 창작자가 부담합니다. </p>
					</div>

				</div>

				<div id="productInfo_contents">
					<p>
						<b>상품정보 고시</b>
					</p>
					<div>
						<p><!-- 창작자 정책 -->
						가방 종류 크로스백 소재 외부소재 : 선인장가죽+면/ <br>
						내부소재 : 선인장가죽+면/ <br>
						안감 : 면30% 폴리에스테르 70% <br>
						색상 블랙/ 그린/ 버건디 <br>
						크기 <br>
						제조자(수입자) 월간마움 <br>
						제조국 대한민국 <br>
						취급시 주의사항 프로젝트 본문 참고<br>
						품질보증기준 관련법 및 소비자분쟁해결 기준에 따름 패션잡화 (모자,벨트,액세서리)</p>
					</div>

				</div>
			</div>
		</div>

	</div>







</section>











<%-- <aside class="asideSection">
<%@ include file="detail_aside.jsp" %>
</aside> --%>


<!-- </div>   탭이랑 어사이드 감싸는 디브-->




<script src="https://code.jquery.com/jquery-1.10.2.js"></script>

	<script>
		$(function() {
			$('ul.detailTab li').click(function() {
				var activeTab = $(this).attr('data-tab');
				$('ul.detailTab li').removeClass('current');
				$('.tabcontent').removeClass('current');
				$(this).addClass('current');
				$('#' + activeTab).addClass('current');
			});
		});

		$(document).ready(function(){
			
			$('ul.commTab li').click(function(){
				var tab_id = $(this).attr('data-tab');

				$('ul.commTab li').removeClass('current');
				$('.tab-content').removeClass('current');

				$(this).addClass('current');
				$("#"+tab_id).addClass('current');
			});

		});
		
	</script>

</body>
</html>