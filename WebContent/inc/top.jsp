<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>펀딩고 :: FUNDINGO</title>
<link href="https://fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,500,500i,700,700i" rel="stylesheet">
<link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/owl.carousel.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/barfiller.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/animate.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/font-awesome.min.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/main.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/top.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/css_jayeon.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/main_footer.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/discover.css">

<!-- Spoca Han Sans 폰트 -->
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSans-kr.css' rel='stylesheet' type='text/css'>
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSans-jp.css' rel='stylesheet' type='text/css'>


<script src="<%=request.getContextPath() %>/assets/js/jquery-3.5.1.min.js"></script>
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
</script>
</head>

<body>
	<header class="header-wrap">
		<div class="search-wrapper">
			<div class="container search-header">
				<div class="search-icon">
					<img src="<%=request.getContextPath() %>/assets/img/search.png">
				</div>
				<div class="search-input">
					<form action="" class="search-input-detail" method="">
						<input type="search" action="" class="search-con"
							placeholder="검색어를 입력해주세요." value="">
					    <input type="submit" class="search-ok" value="검색">
					</form>
				</div>
				<div class="close-button">
					<div class="close-button-wrapper">
						<div class="close-button">
							<a href="#"><img src="<%=request.getContextPath() %>/assets/img/close.png" alt=""></a>
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
									<li><a href="<%=request.getContextPath() %>/discover.jsp">모든 프로젝트</a></li>
									<li><a href="<%=request.getContextPath() %>/discover.jsp">인기 프로젝트</a></li>
									<li><a href="<%=request.getContextPath() %>/discover.jsp">성공 임박 프로젝트</a></li>
									<li><a href="<%=request.getContextPath() %>/discover.jsp">신규추천 프로젝트</a></li>
									<li style="margin-bottom:10px;"><a href="<%=request.getContextPath() %>/category_page.jsp">카테고리별 프로젝트</a></li>
								</ul>
							</li>
							<li><a href="#" class="menu-style">프로젝트 올리기</a></li>
						</ul>
					</nav>
				</div>
				
				<div class="logo-column">
					<a href="<%=request.getContextPath() %>/mainArticle.jsp" class="f_logo"> 
						<img src="<%=request.getContextPath() %>/assets/img/topLogo.png" alt="로고 이미지">
					</a>
				</div>
				
				<div class="nav-column right-nav">
					<nav id="menu" class="d-lg-block right-nav-detail">
						<span class="search-icon fa fa-search"></span>
						<a href="<%=request.getContextPath() %>/login/login.jsp" class="login">
							<span>로그인 / 회원가입</span>
							<span>
								<img alt="유저 이미지" src="<%=request.getContextPath() %>/assets/img/user-account.png">
							</span>
						</a>
					</nav>
				</div>
			</div>
		</div>
	</header>