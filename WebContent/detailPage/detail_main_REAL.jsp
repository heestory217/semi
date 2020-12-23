<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로젝트 상세페이지</title>


    <link href="https://fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,500,500i,700,700i" rel="stylesheet">
    <link rel="stylesheet" href="../css/owl.carousel.css">
    <link rel="stylesheet" href="../css/barfiller.css">
    <link rel="stylesheet" href="../css/animate.css">
    <link rel="stylesheet" href="../css/font-awesome.min.css">
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/slicknav.css">
    <link rel="stylesheet" href="../css/main.css">
<!-- <link rel="stylesheet" href="../detailPage/detailPage_css.css">
 -->

<script type="text/javascript" src="../js/jquery-3.5.1.min.js"></script>
<script src="<%=request.getContextPath()%>/js/feather.min.js"></script>
 
<script type="text/javascript">
	

	function fnMove(seq){
		//offset()으로 태그의 절대 위치를 구한 뒤
	    var offset = $("#move" + seq).offset();
	    
	    //.top으로 해당 태그의 상단으로 
	    $('html, body').animate({scrollTop : offset.top}, 400);
	}
	/* nav버튼 누르면 해당 페이지 보여줌 */
	$(function(){
		$('#navMenu > button').first().click(function(){
			$('.articleStory').show();
		});
		$('#navMenu > button').eq(1).click(function(){
			$('.writerFlag').slideToggle(2000);
		});
		$('button').last().click(function(){
			$('.refundPolicy').slideToggle(slow);
		});
	});

</script>

<style type="text/css">

/*****************************
	*section css code*
 ***************************** */
.header{
	position: relative;
	background-color:#fff;
	width: 100%;
}
.container{
	posiion: absolute;
	width: 1200px;
	top:2%;
	left: 25%;
	margin: -50px, 0, 0, -50px;	
}
.detailPageTop{
	text-align: center;
	line-height: 1.0em;        
}
.detailPageTop img{
	width: 70px
}
.author_logo{
	width:30px;
}


.projectMainDetail{
	height: 100%;
	background-color: #fff;
}

/*****************************
	*프로젝트 이미지 css code*
 ***************************** */

#projImage{
	width: 43%;
	margin-left: 160px;
	margin-top: 50px;
	
}

/*****************************
	*프로젝트 요약 (달성률, 후원자 등) css code*
 ***************************** */
nav{
	float:left;
}
.projectMainDetail2{
	float:right;
	margin-right: 150px;
	margin-top: 42px;
	margin-bottom: 40px;
}

.projectMainDetail2_1 #word{	
	font-weight: bold;
	font-size: 26px;
	line-height: 1.5px;
}
.projectMainDetail2_1 div{	
	font-size: 13px;
	line-height: 3em;
}
.projectMainDetail2_1 span{	
	font-size: 12px;
	line-height: 3em;
}

#div_box{
	border:0.3px solid #DCDCDC; 
	width: 260px; 
	height: 65px; 
	margin-top: 25px;
	margin-bottom: 12px;
	margin-right: 25px;
	background-color: #F8F8FF;
	padding-top: 5px;
	padding-bottom: 5px;
	padding-left: 15px;
	padding-right: 15px;
	color: black;
	font-size: 10px;
	line-height:1.6em	

}


/*****************************
	*밀어주기버튼, 좋아요, 공유 버튼 css code*
 ***************************** */

#btn_projectPush{
	color: #fff; 
	background:#FF6347; 
	border:none; 
	font-size:11.5px; 
	border-radius:0.2em; 
	padding-right:42px;
	padding-left:42px;
	padding-top: 5px;
	padding-bottom: 5px;
}
#btn_projectPush:hover {          
   	color: #fff;              	  
    background-color: #EB4646;   
 }
#images2{
	float:left;
}
#images2 button{
    border-color: transparent;
    border: none;
    outline:0;
    cursor: pointer;
}

#images2 button:hover{
    cursor: pointer;
}


/*****************************
	*nav css code*
 ***************************** */
nav{
	width:100%;
}
.projectNav{
	background-color: #black;
	margin-top: 20px;
	margin-bottom: 10;
	height: 50px;
}
#navMenu{
	margin-left: 220px;
	margin-top:-10px;
	padding-top: 18px;
	padding-bottom: 18px;
}
.projectNav li{
	float:left;
	text-decoration: none;
	list-style: none;
	display: inline;
	text-align: left;
	padding-left: 15px;
	font-weight:bold;
	color: gray;
	font-size: 12px;
	letter-spacing: -1.5px;
	padding-bottom: 1em;
}

#navHr{
	border: 0.1px solid #E8E8E8;
	margin-bottom:-4px;
}
#navHr2{
	border: 0.8px solid gray;
	margin-bottom:-1px;
	padding-bottom:11px;
}

#navMenu button{
	background-color: transparent !important;
    background-image: none !important;
    border-color: transparent;
    border: none;
    outline:0;
    color: gray;
    cursor: pointer;
    	
}
#navMenu button:hover{
	color: black;
}


#story{

}
#community{

}
#funding{
	
}



/*****************************
	*몸통부분 section & adie 틀 css code*
 ***************************** */
section{
	position: relative;
	background-color:#F6F5F5;
	height:100%;
	width: 60%;
	float:left;
	margin-top:-10px;
}

.sectionView{
	background-color:#F6F5F5;
	width: 510px;
	height:100%;
	float:left;
	margin-left:220px;
}
aside{
	position: relative;
	background-color:#F6F5F5;
	height:100%;
	width: 40%;
	float:left;
	margin-top:-10px;
}
.asideView{
	background-color:#F6F5F5;
	width: 280px;
	float:left;
	margin-left:-12px;
	margin-top: 10px;
}

/*****************************
	*스토리부분 css code*
 ***************************** */

.storyPage{
	background-color:#fff;
	width:100%;
	margin-top:10px;
}
.storyDiv{
	padding-left:15px;	
	padding-right:15px;	
	padding-top:20px;	
	padding-bottom:15px;	
}

/*****************************
	*커뮤니티 css code*
 ***************************** */
.commPage{
	background-color:#F6F5F5;
	width:100%;
	margin-top:10px;
	padding:0, 15px;
}


.writerFlag{
	float: left;
	background-color: #fff;
	width: 100%;
	height: 50px;
	border-radius: 0.3em;
}

.storyWriterImage{
	width:55px;
	padding-left: 20px;
	padding-top: 10px;
	float:left;
}
.storyDivFlag{
	padding-top: 12.5px;
	float: left;
	font-size: 13px;
	color: gray;
	margin-left: 10px;
}



/*****************************
	*community_nav css code*
 ***************************** */
#communityNav{
	width:100%;
	height: 80px;
	background-color:#F6F5F5;
}

#communityNav button{
	background-color:#F6F5F5;
	padding:5px;
	border-radius: 0.3em;
	color: gray;
    border: none;
    outline:0;
    font-weight: bold;
	font-size: 11px;
	letter-spacing: -1.3px;
	cursor: pointer;
	padding-left: 5px;
	
	
}

#communityNav button:hover{
	color: black;
}	


#commBtnAll{

}
#commBtnUpdate{

}

.clicked_commBtn{
	color: black;
	font-size: 11px;
	border:none;
	border-radius: 0.3em;
	background-color: #C0C0C0;
}

.communityContainer{
	background-color: #fff;
	width: 100%;
	height: 100%;
	margin-top: 10px;
	padding-top: 10px;
}
.community_contents{
	padding: 15px, 15px;
}
.comm_moreContents{
	padding-left:15px;
	padding-right:15px;
}

.moreContents{
	background-color: #fff;
	height: 100%;
	display:none;
}
/* button.moreContents_btn{
	width:94.5%;
	height:30px;
	background-color: #D3D3D3;
	margin-left:15px;
	color: black;
	border: none;
	border-radius: 0.4em;
	font-size:11px;
	font-weight: bold;
} */

.community_contents > button{
	display: block;
	width:94.5%;
	height:30px;
	background-color: #D3D3D3;
	margin-left:11px;
	color: black;
	border: none;
	border-radius: 0.4em;
	font-size:11px;
	font-weight: bold;	
}


.community_contents >button:hover{
	background-color: #C0C0C0;
}

#community_comments{
	background-color: #fff;
	width: 95%;
	height: 100%;
	margin-left: 15px;
	padding: 5px;
}
#community_comments hr{
	border: 0.1px solid #E8E8E8;
	margin:0.5px;
}



/*****************************
	*펀딩 안내 css code*
 ***************************** */
.fundPage{
	background-color:#F6F5F5;
	width:100%;
	margin-top:15px;
}

#refundPolicy_contents{
	background-color:#fff;
	width: 100%; 
	margin-bottom: 10px;
	padding-top: 25px;
	padding-bottom: 25px;
	color:gray;
}
#refundPolicy_contents p{
	font-size: 11px;	
	letter-spacing: -0.1em;
	text-alignment: left;
	padding-left:25px;
	padding-right:25px;	
	color:gray;
	font-weight:bold;

}
#refundPolicy_contents div{
	font-size: 11px;	
	letter-spacing: -0.1em;
	text-alignment: left;
	padding-left:25px;
	padding-right:25px;	
	color:gray;
	
}


/*****************************
	*상품고시부분 아티클_nav css code*
 ***************************** */
#productInfo_contents{
	background-color:#fff;
	width: 100%; 
	margin-top: 15px;
	margin-bottom: 15px;
	padding-top:25px;
	padding-bottom:25px;
	color:gray;

}
#productInfo_contents p{
	font-size: 11px;	
	letter-spacing: -0.1em;
	text-alignment: left;
	padding-left:25px;
	padding-right:25px;	
	color:gray;
	font-weight:bold;
}
#productInfo_contents div{
	font-size: 11px;	
	letter-spacing: -0.1em;
	text-alignment: left;
	padding-left:25px;
	padding-right:25px;	
	color:gray;
}

/*****************************
	*aside css code*
 ***************************** */

.asidePage1{
	width:100%;
	background-color: #fff;
	border-round: 0.3px;
}
#asideP1{
	font-size:11px;
	color: black;
	font-weight: bold;
	padding-top: 15px;
	padding-left: 15px;	
}
.asideAboutWriter{
	padding-top:20px;
	padding-left:15px;	
	padding-right:15px;	
}
.asideAboutWriter > #writerIntroContents{
	font-size: 11px; 
	line-height: 2em; 
	letter-spacing: -0.8px; 
	padding-top:20px;
	padding-left:12px;
	padding-right:12px;
	padding-bottom:10px;
}
#asideAboutWriter2 {
	padding-bottom: 0.5em;
	padding-top:0.1em;
}
#choose > p{
	font-weight: bold;
	font-size: 12px;
	padding-left:5px;
	padding-top:15px;
	padding-bottom:0;
}
.asidePage2{
	width:100%;
	height:100%;
	
}


/* 스크롤디브 ?!?! */
/* .aside2_gift_scroll{
 	overflow: scroll;
 	height: 100%;
	width: 100%;
	background-color: #F6F5F5;
	margin-top:10px;
	margin-bottom: 60px;
} */
.asideContainer{  /* 옵션1 */
	background-color:#F6F5F5;
	width:100%;
	margin-top: 10px;
	margin-bottom: 10px;
}
.aside_col-md-6{
	width:100%;
}
.single-item {
	font-size: 18px;
	color:black;
	font-weight: bold;
}
.option{
	font-weight: bold;
	font-size: 12px;
	color:gray;
}
.option-title{
	font-size: 12px;
	color:gray;
}


</style>


</head>
<body>

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
  				<div><b>펀딩 진행중</b><br>
	  				목표 금액인 7,000,000원이 모여야만 결제됩니다.
						결제는 2020년 12월 24일에 다함께 진행됩니다.
  				</div>
  			</div>
  			<div>
			<span style= "float:left;">
				<button type="button" id="btn_projectPush"
					onclick="alert('이 프로젝트를 밀어주시겠습니까?')" class="btnPush"><b>프로젝트 밀어주기</b></button></span>
					<div id="imgages2">
						<button type="button" id="btnLike" 
							onclick="alert('이 프로젝트를 Like하셨습니다.')" class="btnPush">
								<img src="../img/likeImg.png" width="40px" height="40px" alt="좋아요" style="margin-left:1px;">
								</button>
						<button type="button" id="btnShare"
							onclick="alert('죄송합니다. 현재 공유가 불가능 합니다!')" class="btnPush">
								<i data-feather="share-2"></i>
								</button>
<!-- 						<button type="button" id="btnShare"
							onclick="alert('죄송합니다. 현재 공유가 불가능 합니다!')" class="btnPush">
								<img src="../img/shareImg.png" width="40px" height="40px" alt="공유"style="margin-left:-4px;">
								</button> -->
					</div>
  			</div>
  		</div>
  		</div>
  		
  	</div>
  </div>


<!--   <nav class="projectNav">
  <hr>
  	<ul>
  	  	<li><button onclick="fnMove('1')">스토리</button></li>
  	  	<li><button onclick="fnMove('2')">커뮤니티</button></li>
  	  	<li><button onclick="fnMove('3')">펀딩 안내</button></li>
  	</ul>
 <hr> 
  </nav> -->
  
			<div class="projectNav">
			 <nav>
			  <hr id="navHr">
			  	<ul id="navMenu">
			  	  	<li><button id="story" onclick="fnMove('1')">스토리</button></li>
			  	  	<li><button id="community" onclick="fnMove('2')">커뮤니티</button></li>
			  	  	<li><button id="funding" onclick="fnMove('3')">펀딩 안내</button></li>
			  	</ul>
			 <hr id="navHr2"> 
			 </nav>	 
	 		</div>

</header>

	<!-- middle  -->	 

	<!-- 내용시작 -->
		<section>
		
			
		<article class="sectionView">
			<div class="storyPage" id="move1">
			<div class="storyContainer">
				<div class="storyDiv">
				<!-- 창작자 스토리 불러오기 -->
				<h1><창작자가 하고 싶은 말 / 스토리></h1><br>
				<h1>예능 뽀시래기 팝니다</h1><br>
				<img src="../img/story_content_example.gif" style="width: 84%; margin-left:42px;"><br>
				<p>내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 </p>
				</div>
			</div>
			</div>
		</article>
	
	
	
	
	<article class="sectionView">
		<div class="commPage">
		<div class="writerFlag" id="move2">
					<div><img class="storyWriterImage" src="../img/storydivWriterImg.png" alt="창작자/후원자 사진"></div>
						<div><p class="storyDivFlag"><b>후원자만 글을 쓸 수 있어요</b></p></div>
			</div>
					
	
				
				<div id="communityNav">
					<nav>	
				  	  	<button id="commBtnAll">모든 게시글</button>
				  	  	<button id="commBtnUpdate">창작자 업데이트</button>						
					</nav>
				</div>
	
		<div class="communityContainer">
	
			<!-- 반복문 돌려서 -->
			<%-- <% for int i=0; i<스토리게시글size나 length만큼 돌렸을때; i++ %> --%>
	
			<!-- 창작자 로고/이름 끌어와서 보여주기 -->
				<div style="padding-left:15px; padding-top: 15px;">
					<div><img src="../img/writerUpdate.PNG" style="width:80px;"></div>
					<div>
						<img src="../img/authorLogo.png" style="width:37px; margin-left:0px;">
						<a href=""><img src="../img/authorName.png" style="width:85px; margin-bottom:2px;"></a>
						<img src="../img/writeMark.PNG" style="width:41px; margin-bottom: 9px; margin-left:-16px;">
					</div>
				</div>
				
							
			<!--  게시글 "내용"끌어와서 보여주기 --> <%-- <%=스토리게시글no%> 로  가져오기? --%>
				<div class="community_contents">  <%-- <%=스토리게시글no%> 로  가져오기? #communityContents에 넣기? --%>
					<div class="comm_moreContents">
						<h1><예뽀의 연극 일정></h1>
						<h1><연극 '얼음' 공지사항 안내></h1><br>
					
				
						<div>
							<p>~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
							~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
							~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
							</p>
						</div>			
					
					<div class="moreContents">
					<p>내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 
					내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 
					내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 
					내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 
					내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 
					내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 
					내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 
					내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 
					내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 내용 
					</p>
					</div>
					</div>
					<button>더 보기</button>
					
				</div>
			
	
			<!--  댓글 끌어와서 보여주기 -->
				<div id="community_comments">
					<hr>
						<div id="communityCommentImg"><img src="../img/communityComment.PNG" style="width:35px; margin-left:-13px; margin-top: 8px; margin-bottom:-14px;"></div>	
							
						<!-- 해당 게시글에 대한 코멘트 불러오기 -->	
						<div class="moreComments"></div>
							
				</div>
			</div>
	</div>
		</article>
	
	
		<article class="sectionView"> 
			<div class="fundPage">
			<div id="refundPolicy_contents" id="move3">
			
				<p><b>이 프로젝트의 환불 및 교환 정책</b></p>
				<div><!-- 창작자 정책 -->sssssssssssssssssssssssssss</div>
			
			</div>
	
			<div id="productInfo_contents">
				<p><b>상품정보 고시</b></p>
				<div><!-- 창작자 정책 -->sssssssssssssssssssssssssss</div>
			
			</div>
		</div>
		</article>
			
	    
	     </section> <!-- detailPage_middle 중간부분 전체 디브 --> 
	 <aside>
	 
	 	<div class="asideView">
	 	
	 	
	 		<div class="asidePage1">
			<div id="asideP1"><b>창작자 소개</b></div>
			<div class="asideAboutWriter">
					<!-- 창작자 로고/이름 끌어와서 보여주기 -->
					<div>
						<img src="../img/authorLogo.png" style="width:35px; margin-left:0px;">
						<a href=""><img src="../img/authorName.png" style="width:83px; margin-bottom:2px;"></a>
					</div>
				<div id="writerIntroContents">
					<p>프로고민러 랩은 소셜 벤처 ST.END LAB 청년연구소에서 청년들의 고민을 해결하기 위해 만든 '고민 문구' 브랜드입니다. 코칭, 심리학, 상담, 교육계의 전문가들과 함께 청년들이 겪는 문제들을 연구하고, 온라인으로는 유형 테스트 및 웹 / 앱 서비스 개발, 오프라인으로는 문구, 교구, 출판물, 워크숍 콘텐츠 개발 등을 통해 새로운 고민 문화를 만들고 있습니다.</p>
				</div>
				<hr>
				<div id="asideAboutWriter2"><p style="color: #696969; font-size: 9px; letter-spacing: -0.4px;">진행한 프로젝트 <b>0</b> 
	
											&nbsp;&nbsp;&nbsp;&nbsp;   밀어준 프로젝트 <b>0</b> </p>
				</div>	
				</div>
			</div>
	
	
	
	        
	
	
	
	<div id="choose"><p><b>선물선택</b></p></div>	
	
	<div class="asidePage2">
	    <div class="asideContainer">
	
	         <div class="aside_col-md-6">
	                <div class="faq">
	                             
	                    <div class="single-item">
	                        <h4>1000원 +</h4>
	                         <div class="option">
	                        	상품을 선택하지 않고 밀어만 줍니다.
	                         </div>
	                        <div class="content">
	                           	예상 전달일 2021년 1월 19일 
	                           	<div class="addOption">
	                           		<label for="">추가후원금(선택)</label>
	                           		<form action="#" method="post" name="frmAdd">
	                           			<input type="text" name="" value="0">
	                           		
	                           		</form>
	                           			
	                           	
	                           	</div>	
	                           	
	                           	
	                        </div>
	                    </div>
	                   
	                    <div class="single-item">
	                        <h4>105,000원 +</h4>                           
	                            <div class="option">
	                           3. 하프보드 set_ 무료배송
	                            	<div class="option-title">
	                            		ㆍset 구성품 선택 (×1)<br>
	                            	</div>
	 								<div class="option-select">		                           
		                            	ㆍ[본체 다리]길이 선택 (×1)<br>
		                            	ㆍ[본체 다리]색상 선택 (×1)<br>
	                            	</div>
	                            </div>
	                        
	                        
	                        <div class="content">
	                         
	                        </div>
	                     </div>
	                    
	                    </div>
	                </div>
	            </div>
	        </div> <!-- 컨테이너 디브 -->
	    </div> <!-- faq 디브 -->
	
	
	
	<!--  	
		
	 	<div class="aside2_gift_scroll">
			<div>
		
					반복문 (선물-아이템 옵션)
				<div class="aside2_gift1">
					
				   <div class="row">
	            <div class="col-md-6">
	                <div class="faq">
	                             
	                    <div class="single-item">
	                        <h4>1000원 +</h4>
	                         <div class="option">
	                        	상품을 선택하지 안고 밀어만 줍니다.
	                         </div>
	                        <div class="content">
	                           	예상 전달일 2021년 1월 19일 
	                           	<div class="addOption">
	                           		<label for="">추가후원금(선택)</label>
	                           		<form action="#" method="post" name="frmAdd">
	                           			<input type="text" name="" value="0">
	                           		
	                           		</form>
	                           			
	                           	
	                           	</div>	
	                           	
	                           	
	                        </div>
	                    </div>
	       
	                    </div>
	                </div>
	            </div>					
	            </div>
	
	
	
				<div class="aside2_gift1">				
				
		        <div class="row">
	            <div class="col-md-6">
	                <div class="faq">
	                             
	                    <div class="single-item">
	                        <h4>1000원 +</h4>
	                         <div class="option">
	                        	상품을 선택하지 안고 밀어만 줍니다.
	                         </div>
	                        <div class="content">
	                           	예상 전달일 2021년 1월 19일 
	                           	<div class="addOption">
	                           		<label for="">추가후원금(선택)</label>
	                           		<form action="#" method="post" name="frmAdd">
	                           			<input type="text" name="" value="0">
	                           		
	                           		</form>
	                           			
	                           	
	                           	</div>	
	                           	
	                           	
	                        </div>
	                    </div>
	       
	                    </div>
	                </div>
	            </div>			
	            </div>
	
	
	
	
				<div class=aside2_gift1>				
				
		        <div class="row">
	            <div class="col-md-6">
	                <div class="faq">
	                             
	                    <div class="single-item">
	                        <h4>105,000원 +</h4>
	                           3. 하프보드 set_ 무료배송
	                            
	                            <div class="option">
	                            	<div class="option-title">
	                            		ㆍset 구성품 선택 (×1)<br>
	                            	</div>
	 								<div class="option-select">		                           
		                            	ㆍ[본체 다리]길이 선택 (×1)<br>
		                            	ㆍ[본체 다리]색상 선택 (×1)<br>
	                            	</div>
	                            </div>
	                        
	                        
	                        <div class="content">
	                         
	                        </div>
	                     </div>
	       
	                    </div>
	                </div>
	            </div>			
	            </div>
	
	
	
				<div class="aside2_gift1">				
				
		        <div class="row">
	            <div class="col-md-6">
	                <div class="faq">
	                             
	                    <div class="single-item">
	                        <h4>1000원 +</h4>
	                         <div class="option">
	                        	상품을 선택하지 안고 밀어만 줍니다.
	                         </div>
	                        <div class="content">
	                           	예상 전달일 2021년 1월 19일 
	                           	<div class="addOption">
	                           		<label for="">추가후원금(선택)</label>
	                           		<form action="#" method="post" name="frmAdd">
	                           			<input type="text" name="" value="0">
	                           		
	                           		</form>
	                           			
	                           	
	                           	</div>	
	                           	
	                           	
	                        </div>
	                    </div>
	       
	                    </div>
	                </div>
	            </div>			
	            </div>
	
					</div>
				
		</div> -->
						
	</div>
	 
	 
	 </aside>
	
	
	 	 