<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>펀딩고 :: FUNDINGO</title>
<link href="https://fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,500,500i,700,700i" rel="stylesheet">
<link rel="stylesheet" href="<c:url value='/css/owl.carousel.css'/>">
<link rel="stylesheet" href="<c:url value='/css/animate.css'/>">
<link rel="stylesheet" href="<c:url value='/css/bootstrap.min.css'/>">
<link rel="stylesheet" href="<c:url value='/css/main.css'/>">
<link rel="stylesheet" href="<c:url value='/css/top.css'/>">
<link rel="stylesheet" href="<c:url value='/css/main_footer.css'/>">
<link rel="stylesheet" href="<c:url value='/css/quick-website.css'/>">
<link rel="stylesheet" href="<c:url value='/css/projectUpload.css'/>">
<link rel="stylesheet" href="<c:url value='/css/jquery-ui.css'/>">

<link rel="stylesheet" href="<c:url value='/css/communityBoard.css'/>">

<!-- 에디터 -->
<script type="text/javascript" src="<c:url value='/ckeditor/ckeditor.js'/>"></script>

<!--Required JS files-->
<script src="<c:url value='/js/jquery-2.2.4.min.js'/>"></script>
<script src="<c:url value='/js/vendor/popper.min.js'/>"></script>
<script src="<c:url value='/js/vendor/bootstrap.min.js'/>"></script>
<script src="<c:url value='/js/vendor/owl.carousel.min.js'/>"></script>
<script src="<c:url value='/js/vendor/isotope.pkgd.min.js'/>"></script>
<script src="<c:url value='/js/vendor/jquery.barfiller.js'/>"></script>
<script src="<c:url value='/js/vendor/loopcounter.js'/>"></script>
<script src="<c:url value='/js/vendor/slicknav.min.js'/>"></script>
<script src="<c:url value='/js/active.js'/>"></script>

<!-- Spoca Han Sans 폰트 -->
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSans-kr.css' rel='stylesheet' type='text/css'>
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSans-jp.css' rel='stylesheet' type='text/css'>


<script type="text/javascript">
<title>자유게시판 글쓰기</title>
<script type="text/javascript" src="<c:url value='/js/jquery-3.5.1.min.js'/>">

$(function(){
		$('#title').focus();
		$('form[name=frmWrite]').find('input[type=button]').click(function(){
			location.href="<c:url value='/board/list.do'/>">;
		});
		
		$('form[name=frmWrite]').submit(function(){
			if($('#title').val().length<1){
				alert('제목을 입력하세요');
				$('#title').focus();
				event.preventDefault();
			}else if($('#name').val().length<1){
				alert('이름을 입력하세요');
				$('#name').focus();
				event.preventDefault();
			}else if($('#pwd').val().length<1){
				alert('비밀번호를 입력하세요');
				$('#pwd').focus();
				event.preventDefault();
			}
			
		})
	});


</script>

</head>
<body>
	<!-- 헤더시작 -->
	<header class="header-wrap">
		<div class="container top_container">
			<div class="row">
				<div class="nav-column left-nav">
					<nav id="menu" class="d-lg-block"
						style="float: left; padding-left: 50px;">
						<a href="<c:url value='/GoMember/MypageOption.do'/>" class="menu-style">< 내 프로젝트</a>
					</nav>
				</div>

				<div class="logo-column">
					<a href="<c:url value='/mainArticle.do'/>"
						class="f_logo"> <img
						src="<c:url value='/img/topLogo.png'/>"
						alt="로고 이미지">
					</a>
				</div>

	
			</div>
		</div>
	</header>
	<!-- 헤더끝 -->
<body>
	<!-- 타이틀 시작 -->
	<div class="announce_title">
		<h3 class="animated infinite bounce delay-2s" style="margin-left:100px;">어떤 게시글을 작성하시고 싶으신가요?</h3>
	</div>
	<!-- 타이틀 끝 -->

<button id="boardBtn_All" onclick="location.href='write_all.jsp'">일반게시물</button>
<button id="boardBtn_Update" onclick="location.href='write_update.jsp'">창작자 업데이트</button> 
													<!-- 내가 쓴 글 ? %> -->


<%-- <%@ include file="/login/login_check.jsp" %>
 --%>	
<%-- <c:url value='/inc/bottom.jsp'/>"
<%--  --%><%-- <jsp: include page="../inc/bottom.jsp"></jsp:include>
 --%> 	</html>
