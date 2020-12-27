
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>일반게시물 작성 페이지</title>
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
<link rel="stylesheet" href="<c:url value='/css/post.css'/>">

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

<!-- 달력 -->
<script src="<c:url value='/js/jquery-3.5.1.min.js'/>"></script>
<script src="<c:url value='/js/jquery-ui.js'/>"></script>

<!-- 시계 -->
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css">	
<script src="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"></script>

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

				<div class="nav-column">
					<nav id="menu" class="d-lg-block right-nav-detail"
						style="padding-right: 70px;">
						<a href="<c:url value='/helpCenter/mainCenter.do'/>"
							class="login"> <span>헬프센터</span>
						</a>
					</nav>
				</div>
			</div>
		</div>
	</header>
	<!-- 헤더끝 -->

	<!-- 타이틀 시작 -->
	<div class="announce_title">
		<h3 class="animated infinite bounce delay-2s" >해당 프로젝트에 관한 글을 써주세요!</h3>
	</div>
	<!-- 타이틀 끝 -->


<div class="writeAllDivForm" style="width: 1200px; height:100%; margin: 30px, 30px;">
		<form  style="margin-left: 220px;" name="frmWrite" method="post"
			action="<%=request.getContextPath() %>/post/write_all_ok.do">
			<fieldset>
				<legend>글쓰기</legend>
				<input type="hidden" id="projectNo"
						name="projectNo"/>
				<!-- <input type="hidden" id="memberNo"
						name="memberNo"/> -->
				<div class="firstDiv">
					<label for="title">제목: &nbsp;&nbsp;</label> <input type="text" id="title"
						name="title" style="width: 80%;"/>
				</div>
				<div style="float: left;">
					<label for="name">작성자: &nbsp;</label> <input type="text" id="name"
						name="name" style="width: 60%;" />
				</div>
				<div>
					<label for="pwd">비밀번호: &nbsp;</label> <input type="password" id="pwd"
						name="pwd" style="width: 20%;" />
				</div>
				<div>
					<label for="email">이메일: &nbsp;</label> <input type="text" id="email"
						name="email" style="width: 60%;" />
				</div>

					<div id="contentsTextarea" style="width: 85%; height: 100%;">
					<label for="postContent">내용: &nbsp;</label>
						<!-- 에디터 -->
						<textarea name="postContent" id="b_content" style="width: 80%; height: 80%;"></textarea>
						<script type="text/javascript">
							 CKEDITOR.replace('b_content', {height: 500});
							</script>
						<!-- 에디터 -->
				</div>
				<div class="center" style="text-align:center; margin-left: 275px; margin-top: 30px; margin-bottom: 50px;">
					<input type="submit" id="writeFinBtn" value="등록" /> 
					<input type="Button" id="toListBtn" value="글목록" onClick="location.href='/post/list_all.do'">
				</div>
			</fieldset>
		</form>
	</div>   

              
</body>
</html>