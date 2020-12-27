<%@page import="com.mytf.post.model.postVO"%>
<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE HTML>
<html lang="ko">
<head>
<meta charset="utf-8">
<title>자유게시판 상세보기 - 허브몰</title>
<link rel="stylesheet" type="text/css" href="../css/mainstyle.css" />
<link rel="stylesheet" type="text/css" href="../css/clear.css" />
<link rel="stylesheet" type="text/css" href="../css/formLayout.css" />
<link rel="stylesheet" type="text/css" href="../css/mystyle.css" />
<style type="text/css">
	body{
		padding:5px;
		margin:5px;
	 }
	.divForm {
		width: 500px;
		}
</style>  
</head>
<body>
<%
	//view페이지
					postVO vo = (postVO)request.getAttribute("vo");

					String postNo = request.getParameter("postNo");
					
					//3
					String postContent = vo.getPostContent();
					if(postContent != null){
						postContent=postContent.replace("\r\n", "<br>");
					}else{
						postContent="";
					}	
					
				
	//3
%>
	<h2>글 상세보기</h2>
	<div class="divForm">
		<div class="firstDiv">
			<span class="sp1" style="font-size: 15px; font-weight: bold;"></span> <span><%=vo.getTitle() %></span>
		</div>
		<div>
			<span class="sp1">작성자</span> <span><%=vo.getName() %></span>
		</div>
		<div>
			<span class="sp1">등록일</span> <span><%=vo.getPostDate() %></span>
		</div>
		<div>
			<span class="sp1">프로젝트 번호</span> <span><%=vo.getProjectNo() %></span>
		</div>
		<div class="lastDiv">			
			<p class="content"><%=postContent %></p>
		</div>
		<div class="center">
			<a href='<%=request.getContextPath() %>/post/edit_all.do?no=<%=postNo%>'>수정</a> |
        	<a href='<%=request.getContextPath() %>/post/delete_all.do?no=<%=postNo%>'>삭제</a> |
        	<a href='<%=request.getContextPath() %>/post/list_all.do'>목록</a>			
		</div>
	</div>

	
</body>
</html>