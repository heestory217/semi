<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style>
      .jbFixed2 {
        position: fixed;
        top: 40px;
      }
</style>

<script src="//code.jquery.com/jquery-1.12.4.min.js"></script>
<script>
  $( document ).ready( function() {
    var jbAsideOffset = $( '.asidePage2' ).offset();
    $( window ).scroll( function() {
      if ( $( document ).scrollTop() > jbAsideOffset.top ) {
        $( '.asidePage2' ).addClass( 'jbFixed2' );
      }
      else {
        $( '.asidePage2' ).removeClass( 'jbFixed2' );
      }
    });
  } );
</script>



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



        



		<%@ include file="detail_iframe.jsp" %>

</div>
 
 
