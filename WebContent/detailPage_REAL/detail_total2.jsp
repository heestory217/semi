<%@page import="java.util.List"%>
<%@page import="com.mytf.post.model.postVO"%>
<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/css_jayeon.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/main_footer.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/discover.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/myPageOption.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/memberRegister.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/login.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/feeAndFundingPolicy.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/detail_chooseOp.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/detail_commTab.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/detailPage_css.css">
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/moonspam/NanumSquare@1.0/nanumsquare.css"> 

<!-- Spoca Han Sans 폰트 -->
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSans-kr.css' rel='stylesheet' type='text/css'>
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSans-jp.css' rel='stylesheet' type='text/css'>
<link href="../js/jquery-ui.min.css" rel="stylesheet" type"text/css">
 <link rel="stylesheet" href="../css/detail_commTab.css">
<script type="text/javascript" src="../js/jquery-3.5.1.min.js"></script>
<script src="<%=request.getContextPath()%>/js/feather.min.js"></script>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>




<script src="<%=request.getContextPath() %>/js/jquery-3.5.1.min.js"></script>
<!-- <script src="assets/js/jquery-2.2.4.min.js"></script> -->
<script src="<%=request.getContextPath() %>/js/vendor/popper.min.js"></script>
<script src="<%=request.getContextPath() %>/js/vendor/bootstrap.min.js"></script>
<script src="<%=request.getContextPath() %>/js/vendor/owl.carousel.min.js"></script>
<script src="<%=request.getContextPath() %>/js/vendor/isotope.pkgd.min.js"></script>
<script src="<%=request.getContextPath() %>/js/vendor/jquery.barfiller.js"></script>
<script src="<%=request.getContextPath() %>/js/vendor/loopcounter.js"></script>
<script src="<%=request.getContextPath() %>/js/vendor/slicknav.min.js"></script>
<script src="<%=request.getContextPath() %>/js/active.js"></script>


<script type="text/javascript">
	$(function(){
		$('.search-wrapper').hide();
		$('.search-icon').click(function(){
			if($('.search-wrapper').css("display")=="none"){
				$('.top_container').hide();
				$('.search-wrapper').show();
			}	
		});
		$('.close-button').click(function(){
			$('.search-wrapper').hide();
			$('.top_container').show();
		});
		
		
	});

	$(document).ready(function(){
		
		$('ul.commTab li').click(function(){
			var tab_id = $(this).attr('data-tab');

			$('ul.commTab li').removeClass('current');
			$('.tab-content').removeClass('current');

			$(this).addClass('current');
			$("#"+tab_id).addClass('current');
		})
	})

		<script>
			$(function() {
				$('ul.detailTab li').click(function() {
					var activeTab = $(this).attr('data-tab');
					$('ul.detailTab li').removeClass('current');
					$('.tabcontent').removeClass('current');
					$(this).addClass('current');
					$('#' + activeTab).addClass('current');
				})
			});

			
		
	</script>



</head>
<!-- 자연 로그인 확인처리-->
<%
/* boolean t_isLogin=false;
String t_email=(String)session.getAttribute("email");
if(t_email!=null&&!t_email.isEmpty()){
	t_isLogin=true;//로그인이면 true session에 email/name/memberNo 있음 
}
//로그인 후 이미지 보여줘야함
String t_fileName=(String)session.getAttribute("fileName");
boolean t_hasFileName=false;
if(t_fileName!=null&&!t_fileName.isEmpty()){
	t_hasFileName=true;
} */
%>
<!-- 자연 -->
<body>
	<header class="header-wrap">
		<div class="search-wrapper">
			<div class="container search-header">
				<div class="search-icon">
					<img src="<c:url value='/img/search.png'/>">
				</div>
				<div class="search-input">
					<form action="<c:url value='/search.do'/>" name="keyword" class="search-input-detail" method="post">
						<input type="text" class="search-con" name="keyword"
							placeholder="검색어를 입력해주세요." value="${param.keyword}">
					    <input type="submit" class="search-ok" value="검색">
					</form>
				</div>
				<div class="close-button">
					<div class="close-button-wrapper">
						<div class="close-button">
							<a href="#"><img src="<c:url value='/img/close.png'/>" alt=""></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	
		<div class="container top_container">
			<div class="row">
				<div class="nav-column left-nav">
					<nav id="menu" class="d-lg-block" style="float:left; padding-left:15px;">
						<ul>
							<li class="has-child"><a class="menu-style">프로젝트 둘러보기</a>
								<ul class="sub-menu">
									<li><a href="<c:url value='/discover.do?type=all'/>">모든 프로젝트</a></li>
									<li><a href="<c:url value='/discover.do?type=popular'/>">인기 프로젝트</a></li>
									<li><a href="<c:url value='/discover.do?type=success'/>">성공 임박 프로젝트</a></li>
									<li><a href="<c:url value='/discover.do?type=new'/>">신규추천 프로젝트</a></li>
									<li style="margin-bottom:10px;"><a href="<c:url value='/category.do'/>">카테고리별 프로젝트</a></li>
								</ul>
							</li>
							<li><a href='<c:url value='/projectManager/projectUpload_before.do'></c:url>' class="menu-style">프로젝트 올리기</a></li>
						</ul>
					</nav>
				</div>
				
				<div class="logo-column">
					<a href="<c:url value='/mainArticle.do'/>" class="f_logo"> 
						<img src="<c:url value='/img/topLogo.png'/>" alt="로고 이미지">
					</a>
				</div>
				
				<div class="nav-column right-nav">
					<nav id="menu" class="d-lg-block right-nav-detail">
						<span class="search-icon fa fa-search"></span>
				<!-- 자연	로그인처리 -->	
						
						<%-- <c:if test="${t_isLogin}"> --%>
						<c:if test="${empty email}">
							<a href="<c:url value='/login/login.do'/>" class="login">
								<span>로그인 / 회원가입</span>
								<img alt="유저 이미지" src="<c:url value='/img/user-account.png'/>">
							</a>
						</c:if>
						<%-- <c:if test="${!t_isLogin}"> --%>				
						<c:if test="${!empty email}">
							<a href="<c:url value='/GoMember/MypageOption.do'/>" class="login">
								<span>${name} 님</span>
								<c:if test="${empty fileName}">
									<img alt="유저 이미지" src="<c:url value='/img/user-account.png'/>">
								</c:if>
								<c:if test="${!empty fileName}">
	<!--된건지 확인해야함 -->			<img alt="유저 이미지" src="<c:url value='/GoMember_upload/${fileName}'/>">
								</c:if>								
							</a>							
						</c:if>
				<!-- 자연	 -->
					</nav>
				</div>
			</div>
		</div>
	</header>



	<%-- 					<%
										//view페이지
							List<postVO> list = (List<postVO>) request.getAttribute("list");
							String postNo = request.getParameter("postNo");
							System.out.println("디테일컨트롤러에서 받아온 postNo=" + postNo);
							String projectNo = request.getParameter("projectNo");
/* 									String postNo = request.getParameter("postNo");
 */ 
									//3
						
									//3
									%>
 --%>

<!-- 윗부분 -->
<header class="header">
<div class="container">
	<div class="detailPageTop">
			<div><a href=""><img src="../img/categ_calender.PNG" alt="문구.캘린더" class="categ_cal"></a></div>
			<div><h2>당신에게 딱 맞는 MBTI 사고성향별 다이어리</h2></div>
			<span><a href=""><img src="../img/authorLogo.png" alt="창작자 로고" class="author_logo"></a></span>
			<span><a href=""><img src="../img/authorName.png" alt="창작자 " class="author_name"></a></span>	
	</div>


  	<div class="projectMainDetail">
  		<div><img src="../img/detailPageprojImage.jpeg" id="projImage" alt="프로젝트 이미지" class="projDetailImage">
  			  <div class="projectMainDetail2">
  				<div class="projectMainDetail2_1">
  				
  					<div>모인금액</div>
  					<span><span id="word">337,548,498</span> 원 <b>485%</b></span><br>
  					<div>남은시간</div>
  					<span><span id="word">3</span> 일</span>
  					<div>후원자</div>
  					<span><span id="word">1098</span> 명</span>
  			
  				</div>
  		
  			<div id="div_box">
  				<div><p><b>펀딩 진행중</b><br>
	  				목표 금액인 7,000,000원이 모여야만 결제됩니다.
						결제는 2020년 12월 24일에 다함께 진행됩니다.
						후원이 고민되신다면 눌러보세요.</p>
  				</div>
  			</div>
  			<div>
			<span style= "float:left;"
					<button type="button" id="btn_projectPush"
					onclick="alert('이 프로젝트를 밀어주시겠습니까?')" class="btnPush"><b>프로젝트 밀어주기</b></button></span>
				<button type="button" id="images2"
					onclick="alert('이 프로젝트는 Like가 불가능합니다.')" class="btnPush"><img src="../img/likeImg.png" width="32px" height="32px" alt="좋아요" style="outline:none; border:none;margin-left:10px; margin-top: -15px"></button>
				<button type="button" id="images3"
					onclick="alert('이 프로젝트는 공유를 지원하지 않습니다.')" class="btnPush"><img src="../img/shareImg.png" width="31px" height="31px" style="margin-left: 8px; margin-top: 7.5px;" alt="공유" class=""></button></span>
			
  			</div>
  		</div>
  		</div>
  		
  	</div>
  </div>


</header>




<%
List<postVO> list = (List<postVO>)request.getAttribute("list");

%>






<section>


<div id="detailContainer">

		<ul class="detailTab">
			<li data-tab="tab1"><a href="#">스토리</a></li>
			<li class="current" data-tab="tab2"><a href="#">커뮤니티</a></li>
			<li data-tab="tab3"><a href="#">펀딩 안내</a></li>
		</ul>

			<div id="tab1" class="tabcontent current">

				<%

							for(int i=0; i<list.size(); i++){
								postVO vo=list.get(i);
							%>
				<div style="width: 100%; height: 100%; margin-top: 10px;";>


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
									<div>내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용
										내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>


				<div id="tab2" class="tabcontent" style="padding-bottom: 20px;">

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


		<div class="subcontainer">


						<ul class="commTab">
							<li class="tab2-link current" data-tab="tab_All">모든게시글</li>
							<li class="tab2-link" data-tab="tab_Update">창작자 업데이트</li>
						</ul>

						<div id="tab_All" class="tab-content current">
							<!--  게시글 "내용"끌어와서 보여주기 -->
							<%-- 						<%=스토리게시글no%> 로 가져오기?--%>
							<%

							for(int i=0; i<list.size(); i++){
								postVO vo=list.get(i);
							%>
							<div style="width: 100%; height: 100%; margin-top: 10px;";>
								<div class="community_contents">
									<%-- 						<%=스토리게시글no%> 로 가져오기? #communityContents에 넣기?	--%>	
	
					<!-- 	<div class="communityContainer"> -->



						<!-- 반복문 돌려서 -->
<%-- 						 <% for int i=0; i<스토리게시글size나 length만큼 돌렸을때; i++ %>  <!-- 창작자 로고/이름 끌어와서 보여주기 -->
 --%>

									<div
										style="padding-left: 15px; padding-top: -10px; margin-top: -10px;">
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
									<%-- <%=스토리게시글no%> 로 가져오기?--%>
									<div class="comm_moreContents">
										<div>
											<p>
												<b>제목: <%=vo.getTitle() %></b>
											</p>
										</div>
										<div style="float: left;">
											<p>작성자: ${name }</p>
										</div>
										<div style="float: right;">
											<p>
												등록일:
												<%=vo.getPostDate() %></p>
										</div>
										<div style="height: 100%;">
											<div
												style="width: 100%; margin-top: 60px; margin-bottom: 60px; border: none; overflow: hidden;">
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
							<div style="width: 110%; height: 15px; margin-left: -25px; background-color: #F6F5F5;"></div>
							<%}	%>

						</div>




					<div id="tab_Update" class="tab-content">
						<div class="communityContainer">

							<!-- 반복문 돌려서 -->
							<%-- <% for int i=0; i<스토리게시글size나 length만큼 돌렸을때; i++ %>  --%>

							<div
								style="padding-left: 15px; padding-top: -10px; margin-top: -10px;">
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
 --%>
							<div class="community_contents">
								<%-- 						<%=스토리게시글no%> 로 가져오기? #communityContents에 넣기?			
 --%>
								<div class="comm_moreContents">

									<div>
										<p>창작자 업데이트 창작자 업데이트 창작자 업데이트 창작자 업데이트 창작자 업데이트 창작자 업데이트
											창작자 업데이트 창작자 업데이트 창작자 업데이트 창작자 업데이트 창작자 업데이트 창작자 업데이트 창작자
											업데이트 창작자 업데이트 창작자 업데이트 창작자 업데이트ㅍ창작자 업데이트 창작자 업데이트창작자 업데이트ㅍ
											창작자 창작자 업데이트 창작자 업데이트 창작자 업데이트 창작자 업데이트 창작자 업데이트 창작자 업데이트 창작자
											업데이트 창작자 업데이트 창작자 업데이트 창작자 업데이트 창작자 업데이트 창작자 업데이트 창작자 업데이트
											창작자 업데이트 창작자 업데이트</p>
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

				<button style="margin-top: 8px;" id="viewPostBtn"
					onclick="location.href='<%=request.getContextPath()%>/post/view_all.do?projectNo=${vo.getProjectNo}'">전체보기</button>
				<div style="float: right; margin-top: 8px;">
					<button id="writePostBtn"
						onclick="location.href='<%=request.getContextPath()%>/post/write_all.do?projectNo=${vo.getProjectNo}'">글쓰기</button>
					<button id="editPostBtn"
						onclick="location.href='<%=request.getContextPath()%>/post/edit_all.do?postNo=${param.postNo }'">수정</button>
					<button id="deletePostBtn"
						onclick="location.href='<%=request.getContextPath()%>/post/delete_all.do?projectNo=${vo.getProjectNo}'">삭제</button>
				</div>


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






