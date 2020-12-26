<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style>
.navSection{
	margin-top:0;
	top:0;
}
      .jbMenu {
        text-align: left;
        background-color: yellow;
        width: 100%;
     }
      .jbContent {
      }
      .jbFixed {
        position: fixed;
        top: -20px;
      }
      .jbMenu > ul{
	margin-left: 180px;
	margin-top:0px;
	padding-top: 5px;
}


.jbMenu > ul, li, a{
	text-decoration: none;
	list-style: none;
	display: inline;
	text-align: left;
	font-weight:bold;
	padding-left: 10px;
	color: gray;
	font-size: 14px;
	letter-spacing: -1.5px;
}
.jbMenu li, a:hover{
	color:black;
} 
.jbMenu hr{
	margin-top:15px;
	border: 0.1px solid #E8E8E8;
}  
      
      
    </style>
    <script src="//code.jquery.com/jquery-1.12.4.min.js"></script>
    <script>
      $( document ).ready( function() {
        var jbOffset = $( '.jbMenu' ).offset();
        $( window ).scroll( function() {
          if ( $( document ).scrollTop() > jbOffset.top ) {
            $( '.jbMenu' ).addClass( 'jbFixed' );
          }
          else {
            $( '.jbMenu' ).removeClass( 'jbFixed' );
          }
        });
      } );
    </script>

<div navSection>
    <div class="jbMenu">
    <hr>
		<ul class="projectNave">
			<li class="current" data-tab="tab1"><a href="#">스토리</a></li>
			<li data-tab="tab2"><a href="#">커뮤니티</a></li>
			<li data-tab="tab3"><a href="#">펀딩 안내</a></li>
		</ul>
		
    <hr>
    </div>
    <div class="jbContent">    
    </div>
 

</div>

<!-- 
 		<div class="detailPage_middle_inside_projectNav">
			 <nav class="Nav">
			  <hr id="navHr">
			  	<ul class="projectNave" id="navMenu">
			  	  	<li><a class="project_nav_item" id="story" href="#">스토리</a></li>
			  	  	<li><a class="project_nav_item" id="community" href="#">&nbsp;커뮤니티</a></li>
			  	  	<li><a class="project_nav_item" id="funding" href="#">&nbsp;펀딩 안내</a></li>
			  	</ul>
			 <hr id="navHr2"> 
			 </nav>
	 	 </div> detailPage_middle_inside_projectNav  -->