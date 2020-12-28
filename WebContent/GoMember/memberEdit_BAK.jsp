<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<link rel="stylesheet" href=" <c:url value='/css/memberEdit.css'/>">	

<!-- header 위치 -->
 <%@ include file="../login/login_check.jsp" %>
 <%@ include file="../inc/top.jsp"%> 
 
<script type="text/javascript">
	var realPwd = ${gVo.pwd};
	$(function(){
		$('form[name=frmMemberEdit]').submit(function(){
			if($('#pwdOrigin').val()!=realPwd){
				alert('기존 비밀번호를 확인해주세요');
	            event.preventDefault();            
	            $('#pwdOrigin').focus();
			}else{
				if($('#pwd').val()!=$('#pwdCk').val()){
					alert('신규 비밀번호가 일치하지 않습니다.');
		           	event.preventDefault();
		          	$('#pwd').focus();
				}else if(($('#address1').val().length>0)||($('#address2').val().length>0)||($('#address3').val().length>0)){
					if ($('#address1').val().length<1) {
			             alert('배송지를 등록하려면 받을사람을 입력해야합니다.');
			             event.preventDefault();
			             $('#address1').focus();
			          }else if ($('#address2').val().length<1) {
			             alert('배송지를 등록하려면 받을사람의 연락처를 입력해야합니다.');
			             event.preventDefault();
			             $('#address2').focus();
			          }else if ($('#address3').val().length<1) {
			             alert('배송지를 등록하려면 배송주소를 입력해야합니다.');
			             event.preventDefault();
			             $('#address3').focus();
			          }
				}
			}//비밀번호가 맞았을 때 
		});
	});
</script>
 
 
 
 <div class="tabs-area spb MyPage">
 
  <div class="myPageTitle">
  	 <h2>설정</h2>
  </div>
  
    <div class="container MyPageContainer">
        <ul class="nav tabs-nav MyPageNav" id="pills-tab" role="tablist">
        
            <li class="nav-item MyPageItem">
                <a class="nav-link MyPagelink" id="pills-profile-tab" data-toggle="pill" href="#profile">          
       
                    <span>프로필</span>
                </a>
            </li>
             <li class="nav-item MyPageItem">
                <a class="nav-link MyPagelink" id="pills-profile-tab" data-toggle="pill" href="#delevery">
                    <span>배송지</span>
                </a>
            </li>
          <!--   <li class="nav-item MyPageItem">
                <a class="nav-link MyPagelink" id="pills-profile-tab" data-toggle="pill" href="#payMethod">
                
                    <span>결제수단</span>
                </a>
            </li> -->
           
        </ul>
         <hr>
         <!-- form시작 회원번호랑 원본파일이름 히든-->
        <form name="frmMemberEdit" method="post" action="<c:url value='/GoMember/memberEdit_ok.do'/>" enctype="multipart/form-data" autocomplete="off">
	        <input type="hidden" name="memberNo" value="${memberNo}">
	        <input type="hidden" name="oldfileName" value="${oldfileName}">
	                
	        <div class="tab-content MyProfileTab" id="pills-tabContent">
	            <div class="tab-pane fade show active Mycontent" id="profile" role="tabpanel">
	                <div class="profile">
	                    <div class="profilePic">
	              <!-- 파일 변경가능-->   	
	                    	<div class="myTitle">
	                    	 	<label for="upfile"><b>프로필 사진</b></label>
	                    	</div>
	                    	
	                    	<div class="myContents">  
	                         <span class="imgUp"><label for="upfile"><b>이미지업로드</b></label></span>&nbsp; 
	                        	  <input type="file" id="upfile" name="upfile">
	                        	  <br>
	                        	  <span class="sphasFile"><b>첨부된 파일</b></span>
	                        	  <c:if test="${!empty gVo.fileName}">
	                        	  	<span class="spFileInfo">${fileInfo}</span>
	                        	  	<br>
	                        	  	<span class="spfileWarning">첨부파일을 업로드하는 경우 기존파일은 삭제됩니다.</span>
	                        	  </c:if>
                        	  
	                    	</div>
	                    </div>
	                    <div class="MyPagePart">
	              <!-- 이름은 변경불가 -->
	                    	<div class="myTitle"><b>이름</b></div>
	                    	<div class="myContents">${name}</div>
	                    </div>	                            
	    					<div class="MyPagePart">
		          <!-- 이메일 변경불가 -->
		                        <div class="myTitle"><b>이메일</b></div>
		                        <div class="myContents">${email}</div>
	                        </div>
	    					<div class="MyPagePart">
	    		  <!-- 비밀번호 변경가능 -->			
		                        <div class="myTitle">
		                        	<label for="pwd"> <b>비밀번호</b></label>
		                        </div>	
		                         <div class="myContents" style="border-bottom: 1px solid lightgray; margin-bottom: 10px; padding-bottom: 10px"> 		                        	
			                       <span class="pw1"><label for="pwdOrigin"> 사용중인 비밀번호:</label> </span> 
			                       <input type="password" id="pwdOrigin" name="pwdOrigin"><br>
			                       <span class="pw2"><label for="pwd" style="margin-right:14px">변경할 비밀번호:</label></span> 
			                       <input type="password" id="pwd" name="pwd"><br>
			                       <span class="pw3"><label for="pwdCk" style="margin-right:20px">변경할 비밀번호 </label></span> 
			                       <input type="password" id="pwdCk" name="pwdCk"><br>
		                        </div>
	                        </div>
	    					<div class="MyPagePart">
	    		<!-- 연락처 변경가능 -->			
		                        <div class="myTitle">
		                        	<label for="hp">
		                        		<b>연락처</b>
		                        	</label>
		                        </div>
		                        <div class="myContents">
	               					<%-- <c:if test="${!empty gVo.hp}"> --%>
		               					<input type="text" id="hp" name="hp" value="${gVo.hp}" placeholder="등록된 연락처가 없습니다.">
		                        	<%-- </c:if>  --%>
		                        	<%-- <c:if test="${empty gVo.hp}">	 --%>
			                        <%--  	<input type="text" id="hp" name="hp" placeholder="등록된 연락처가 없습니다." value="">
			                       	</c:if> --%>
		                        	
		                        </div>	
	                        </div>
          
		                    <div class="MyPagePart">
		         <!-- 소개 변경가능 -->	           
		                    	<div class="myTitle">
		                    		<label for="introduce">
		                    	 		<b>소개</b>
		                    		</label> 	
		                    	</div>
		                    	
		                    	<div class="myContents">
		                    		<textarea name="memberIntro" id="introduce" rows="3" cols="60" placeholder="소개글을 작성해주세요">${gVo.memberIntro}</textarea>
		                    			<%-- <c:if test="${!empty gVo.memberIntro}"> --%>
			                    		<%-- </c:if> --%>
		                    	</div>                     
		                    </div>           
	                
	               <!--  <div class="btDiv">
	                	<button id="btMypageEdit" value="프로필 변경">프로필 변경</button>
	                </div> -->
	                
	                <div class="TooltipExplain">
	                	<div class="ProfileTooltip">
		              		<p><b>어떤 정보가 프로필에 공개되나요?</b></p>
		              		<p>프로필 사진과 이름, 사용자 이름, 소개글, 웹사이트 
			              	및 회원님과 관련된 프로젝트 등이 프로필 페이지에 
			              	공개됩니다.</p>             	
		                </div>
		                <div class="ProfileTooltip">
			              	<p><b>이메일과 연락처는 어디에 쓰이나요?</b></p>
			              	<p>이메일과 연락처로 프로젝트, 후원 및 결제관련 
			              	알림을 드립니다.</p>             	
		                </div>
		              </div>
	    			</div>        
	           </div>
	           
	             <div class="tab-pane fade Mycontent" id="delevery" role="tabpanel">
	                <div class="MyAddress">
	                
	         <!-- 배송지 변경가능 -->	       
	                 
	                    <div class="myTitle">
	                     	<label for="delevery">
	                        	<b>등록된 배송지 </b>
	                   		</label>
	                    </div>
	                    
	                 <%--     <c:if test="${!empty gVo.address}"> --%>
                       		<c:set var="address" value="${gVo.address}"/>
                       		<c:set var="addressR" value="${fn:split(address,'|')}" />
	                 <%--     </c:if> --%>
  
	                    <div class="myContents">
		                     <span class="delivery1"><label for="address1">받는사람:&nbsp;</label></span> <input type="text" name="address1" class=address id="address1" value="${addressR[0]}" placeholder="수취인을 입력하세요"><br> 
			                 <span class="delivery2"><label for="address2">받는사람:&nbsp;</label></span> <input type="text" name="address2" class=address id="address2" value="${addressR[1]}" placeholder="수취인 연락처를 입력하세요"><br>
			                 <span class="delivery3"><label for="address3">배송주소:&nbsp;</label></span><input type="text" name="address3" class=address id="address3" value="${addressR[2]}" placeholder="배송주소를 입력하세요"> 
	              		 </div>
	               
	                 <!--    
	                    <div class="btDiv">
	                    	<button id="btAddress" value="회원정보 변경">회원정보 변경</button>
		                </div> -->
		                
		                
		                <div class="deleveryTooltip">
		                	<p><b>배송지를 삭제하면 예약된 후원의 배송지 정보도 삭제되나요?</b></p>
		             	    <p>현재 후원하신 프로젝트에 등록된 배송지가 삭제되거나 변경되진 않습니다.</p>             	
		                </div> 
	                
	            </div>
	       	 </div>
	           
	              
	             
	          <%--   <div class="tab-pane fade Mycontent" id="payMethod" role="tabpanel">
	                  <div class="payment">
	        <!-- 결제숮단 변경가능 -->	     
					        
	                      <div class="myTitle">
	                      	<label for="payMethod"> 
	                                <b>등록된 결제수단</b>
	                  		</label>
	                      </div>
	                  
	                      <div class="paymentContents">
	                      	  <c:if test="${empty bVo.bankNo} ">
			                  	 등록된 결제 수단이 없습니다. 결제수단을 추가해주세요
			                  </c:if>
		                 <c:if test="${!empty bVo.bankNo}">
			                  <input type="hidden" name="bankNo" value="${bVo.bankNo}"> 	
			                  <input type="radio" name="businessFlag" value="N"<c:if test="${bVo.businessFlag eq'N'}">checked</c:if><c:if test="${empty bVo.businessFlag}">checked</c:if>>
			                  <span class="ckBFlag">개인 </span>
			                  <input type="radio" name="businessFlag" value="B"<c:if test="${bVo.businessFlag eq'B'}">checked</c:if>>
			                  <span class="ckBFlag">사업자</span><br>
						      
						      <span class="Bword"> 은행:</span>     
						      <input type="text" name="bankName" id="bankName" value="${bVo.bankName}" placeholder="은행명을 입력하세요"><br>	                      
					          <span class="Bword">계좌번호:</span>    
					          <input type="text" name="accountNum" id="accountNum" value="${bVo.accountNum}" placeholder="계좌번호를 입력하세요"><br>                     
					          <span class="Bword">예금주명:</span>    
					          <input type="text" name="ownerName" id="ownerName" value="${bVo.ownerName}" placeholder="예금주명을 입력하세요"><br>
					          <span class="Bword">예금주 생년월일:</span>
					          <input type="text" name="ownerBirth" id="ownerBirth" value="${bVo.ownerBirth}" placeholder="예금주 생년월일 입력하세요"><br>
		                  </c:if>
	                      </div>
	                  </div>
	                  
	                  <!-- <div class="btDiv">
	             	  	<button id="btPayMethod" value="결제수단 추가/변경">결제수단 추가/변경</button>
	                  </div> -->
	                  
	                  <div class="paymentTooltip">
	             		<p><b>결제수단을 삭제하면 예약된 후원의 결제수단 정보도 삭제되나요?</b></p>
	             		<p>현재 후원하신 프로젝트에 등록된 결제수단이 삭제되거나 변경되진 않습니다.</p>             	
	                  </div>
	             </div> --%>
	           
	  			    <div class="btDiv">
	                	<button id="btMypageEditOk" name="btMypageEditOk" value="내 정보 변경 확인">내 정보 변경</button>
	                </div>
	       </div>
       </form>
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


<!-- footer위치 -->
<%@ include file="../inc/bottom.jsp"%>