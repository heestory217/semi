<%@page import="com.mytf.post.model.postVO"%>
<%@page import="com.mytf.post.model.postVO"%>
<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
 <link rel="stylesheet" href="../css/detail_commTab.css">
<script type="text/javascript" src="../js/jquery-3.5.1.min.js"></script>
<script src="<%=request.getContextPath()%>/js/feather.min.js"></script>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>


</head>
<body>


<%
	//view페이지
					postVO vo = (postVO)request.getAttribute("vo");

					String projectNo = request.getParameter("projectNo");
					
					//3
					String postContent = vo.getPostContent();
					if(postContent != null){
						postContent=postContent.replace("\r\n", "<br>");
					}else{
						postContent="";
					}	
					
				
	//3
%>




<div class="subcontainer">


	<ul class="commTab">
		<li class="tab2-link current" data-tab="tab_All">모든게시글</li>
		<li class="tab2-link" data-tab="tab_Update">창작자 업데이트</li>
	</ul>

	<div id="tab_All" class="tab-content current">
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
<%-- 						<%=스토리게시글no%> 로 가져오기?--%>				
				
					<div class="community_contents">
<%-- 						<%=스토리게시글no%> 로 가져오기? #communityContents에 넣기?			
 --%>				<div class="comm_moreContents">
								<div><p><b>제목: <%=vo.getTitle() %></b></p></div>
								<div style="float:left;"><p>작성자: <%=vo.getName() %></p></div>
								<div style="float: right;"><p>등록일: <%=vo.getPostDate() %></p></div>
								<textarea style="width:100%; margin-top: 60px; margin-bottom: 60px; border:none;;">
									<%=postContent %>
								</textarea>

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
	
<button id="writePostBtn" onclick="location.href='<%=request.getContextPath()%>/post/write_all.do'">글쓰기</button>


<script>

$(document).ready(function(){
	
	$('ul.commTab li').click(function(){
		var tab_id = $(this).attr('data-tab');

		$('ul.commTab li').removeClass('current');
		$('.tab-content').removeClass('current');

		$(this).addClass('current');
		$("#"+tab_id).addClass('current');
	})

})
</script>