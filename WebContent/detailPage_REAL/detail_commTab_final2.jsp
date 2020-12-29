<%@page import="java.util.List"%>
<%@page import="com.mytf.post.model.postVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
 <link rel="stylesheet" href="../css/detail_commTab.css">



<script src="https://code.jquery.com/jquery-1.10.2.js"></script>





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
 --%>						<div class="comm_moreContents">
								<div><p><b>제목: <%-- <%=vo.getTitle()%> --%></b></p></div>
								<div style="float:left;"><p>작성자: <%-- ${name } --%></p></div>
								<div style="float: right;"><p>등록일: <%-- <%=vo.getPostDate() %> --%></p></div>
								<div style="height: 100%;">
								<div style="readonly:readonly; width: 100%; height: 100%; margin-top: 100px; margin-bottom: 60px;">
								<div>
								<%-- <%=postContent %> --%>
								
									내용내요애뇽내용내요애뇽내용내요애뇽내용내요애뇽내용내요애뇽내용내요애뇽
									내용내요애뇽내용내요애뇽내용내요애뇽내용내요애뇽내용내요애뇽내용내요애뇽내용내요애뇽
									내용내요애뇽내용내요애뇽내용내요애뇽내용내요애뇽내용내요애뇽
									내용내요애뇽내용내요애뇽내용내요애뇽내용내요애뇽내용내요애뇽
									내용내요애뇽
									내용내요애뇽내용내요애뇽
									내용내요애뇽
									내용내요애뇽
									내용내요애뇽내용내요애뇽
									내용내요애뇽							
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
	
<button id="writePostBtn" onclick="location.href='<%=request.getContextPath()%>/post/write_all.do?projectNo=<%-- <%=vo.getProjectNo()%> --%>'">글쓰기</button>


<script>

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


