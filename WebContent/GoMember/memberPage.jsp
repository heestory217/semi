<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<link rel="stylesheet" href="<%=request.getContextPath() %>/css/memberPage.css">	<!-- header 위치 -->
 <%@ include file="../inc/top.jsp"%> 
 
 <div class="tabs-area spb MyPage">
 
  <div class="myPageTitle">
  	 <h2>설정 </h2>
  </div>
  
    <div class="container MyPageContainer">
        <ul class="nav tabs-nav MyPageNav" id="pills-tab" role="tablist">
        
            <li class="nav-item MyPageItem">
                <a class="nav-link MyPagelink" id="pills-profile-tab" data-toggle="pill" href="#profile">          
                    <span>프로필</span>
                </a>
            </li>
            
            <li class="nav-item MyPageItem">
                <a class="nav-link MyPagelink" id="pills-profile-tab" data-toggle="pill" href="#payMethod">
                
                    <span>결제수단</span>
                </a>
            </li>
            <li class="nav-item MyPageItem">
                <a class="nav-link MyPagelink" id="pills-profile-tab" data-toggle="pill" href="#delevery">
                    <span>배송지</span>
                </a>
            </li>
        </ul>
         <hr>
         
         
        <div class="tab-content MyProfileTab" id="pills-tabContent">
            <div class="tab-pane fade show active Mycontent" id="profile" role="tabpanel">
                <div class="profile">
                
                    <div class="profilePic">
                    	<div class="myTitle"><b>프로필 사진</b></div>
                    	<div class="myContents">
                        	<img src="<c:url value='/img/user-account.png'/>" alt="회원이미지">
                    	</div>
                    </div>
                    <div class="MyPagePart">
                    	<div class="myTitle"><b>이름</b></div>
                    	<div class="myContents">홍길동</div>
                    </div>	                            
    					<div class="MyPagePart">
	                        <div class="myTitle"><b>이메일</b></div>
	                        <div class="myContents">na@naver.com</div>
                        </div>
    					<div class="MyPagePart">
	                        <div class="myTitle"><b>비밀번호</b></div>
	                        <div class="myContents"> </div>
                        </div>
    					<div class="MyPagePart">
	                        <div class="myTitle"><b>연락처</b></div>
	                        <div class="myContents">등록된 연락처가 없습니다.</div>
                        </div>
                                    
	                    <div class="MyPagePart">
	                    	<div class="myTitle"><b>소개</b></div>
	                    	<div class="myContents">등록된 소개가 없습니다.</div>                     
	                    </div>           
                
                <div class="btDiv">
                	<button id="btMypageEdit" value="프로필 변경">프로필 변경</button>
                </div>
                <div class="TooltipExplain">
                	<div calss="ProfileTooltip">
	              		<p><b>어떤 정보가 프로필에 공개되나요?</b></p>
	              		<p>프로필 사진과 이름, 사용자 이름, 소개글, 웹사이트 
		              	및 회원님과 관련된 프로젝트 등이 프로필 페이지에 
		              	공개됩니다.</p>             	
	                </div>
	                <div calss="ProfileTooltip">
		              	<p><b>이메일과 연락처는 어디에 쓰이나요?</b></p>
		              	<p>이메일과 연락처로 프로젝트, 후원 및 결제관련 
		              	알림을 드립니다.</p>             	
	                </div>
	              </div>
    			</div>        
    			
           </div>
              
             
            <div class="tab-pane fade Mycontent" id="payMethod" role="tabpanel">
                  <div class="payment">
                      <div class="myTitle">
                                <b>등록된 결제수단</b>
                      </div>
                      <div class="paymentContents">
                           등록된 결제 수단이 없습니다. 
                           결제수단을 추가해주세요
                      </div>
                  </div>
                  <div class="btDiv">
             	  	<button id="btPayMethod" value="결제수단 추가/변경">결제수단 추가/변경</button>
                  </div>
                  <div calss="paymentTooltip">
             		<p><b>결제수단을 삭제하면 예약된 후원의 결제수단 정보도 삭제되나요?</b></p>
             		<p>현재 후원하신 프로젝트에 등록된 결제수단이 삭제되거나 변경되진 않습니다.</p>             	
                  </div>
             </div>
   
            <div class="tab-pane fade Mycontent" id="delevery" role="tabpanel">
                <div class="MyAddress">
                    <div class="myTitle">
                        <b>등록된 배송지 </b>
                    </div>
                    <div class="myContents"><p>등록된 배송지가 없습니다.
                        	배송지를 추가해주세요.</p></div>
               </div>
                    
                    <div class="btDiv">
                    	<button id="btAddress" value="배송지 추가/변경">배송지 추가/변경</button>
	                </div>
	                <div calss="Tooltip">
	                	<p><b>배송지를 삭제하면 예약된 후원의 배송지 정보도 삭제되나요?</b></p>
	             	    <p>현재 후원하신 프로젝트에 등록된 배송지가 삭제되거나 변경되진 않습니다.</p>             	
	                </div>
                    
                    
                
            </div>
        </div>
   </div>
</div>    

    <!--Required JS files-->
<script src="<%=request.getContextPath()%>/js/jquery-2.2.4.min.js"></script>
<script src="<%=request.getContextPath()%>/js/vendor/popper.min.js"></script>
<script src="<%=request.getContextPath()%>/js/vendor/bootstrap.min.js"></script>
<script src="<%=request.getContextPath()%>/js/vendor/owl.carousel.min.js"></script>
<script src="<%=request.getContextPath()%>/js/vendor/isotope.pkgd.min.js"></script>
<script src="<%=request.getContextPath()%>/js/vendor/jquery.barfiller.js"></script>
<script src="<%=request.getContextPath()%>/js/vendor/loopcounter.js"></script>
<script src="<%=request.getContextPath()%>/js/vendor/slicknav.min.js"></script>
<script src="<%=request.getContextPath()%>/js/active.js"></script>
</body>
</html>