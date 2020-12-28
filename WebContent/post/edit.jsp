<%@page import="com.mytf.post.model.postVO"%>
<%@page import="com.mytf.post.model.postVO"%>

<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    
    
<!DOCTYPE html>
<html lang="ko">
<head>
<title>자유게시판 글 수정 - 허브몰</title>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="<c:url value='/css/mainstyle.css'/>" >
<link rel="stylesheet" type="text/css" href="<c:url value='/css/clear.css'/>" />
<link rel="stylesheet" type="text/css" href="<c:url value='/css/formLayout.css'/>" />
<link rel="stylesheet" type="text/css" href="<c:url value='css/mystyle.css'/>" />

<script type="text/javascript">

</script>

</head>
<body>
<%-- 	<%
	  //뷰페이지
	   BoardVO vo = (BoardVO)request.getAttribute("vo");

	   String no = request.getParameter("no");
	   
	   //3.결과출력
	   String email=vo.getEmail();
	   String content=vo.getContent();
	   if(email==null)email=""; //이메일 null이면 공백
	   if(content==null) content="";//내용 null이면 공백
	   

	%> --%>

	<div class="divForm">
		<form name="frmEdit" method="post" action="<c:url value='/board/edit_ok.do'/>">
			<!-- 수정시 필요한 no를 hidden 필드에 넣는다 -->
			<input type="hidden" name="no" value="${vo.no}" />
			<fieldset>
				<legend>글수정</legend>
				<div class="firstDiv">
					<label for="title">제목</label> <input type="text" id="title"
						name="title" value="${vo.title }" />
				</div>
				<div>
					<label for="name">작성자</label> <input type="text" id="name"
						name="name" value="${vo.name }" />
				</div>
				<div>
					<label for="pwd">비밀번호</label> <input type="password" id="pwd"
						name="pwd" value="${vo.pwd }" />
				</div>
				<div>
					<label for="email">이메일</label> <input type="text" id="email"
						name="email" value="${vo.email }" />

				</div>
				<div>
					<label for="content">내용</label>
					<textarea id="content" name="content" rows="12" cols="40">${content }</textarea>
				</div>
				<div class="center">
					<input type="submit" value="수정" /> 
					<input type="Button" value="글목록"
						onclick="location.href	='<c:url value="/board/list.do"/>'"/>
				</div>
			</fieldset>
		</form>
	</div>

</body>
</html>