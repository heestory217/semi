<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
	
<link rel="stylesheet" href=" <c:url value='/css/memberPaymentEdit.css'/>">
<!-- header 위치 -->
 <%@ include file="../login/login_check.jsp" %>
 <%@ include file="../inc/top.jsp"%> 
 
<script type="text/javascript">
$(function(){
	$('form[name=frmPayMent]').submit(function(){
	     if($('#eBankName').val().length<1){
             alert('은행명을 입력해주세요');
             event.preventDefault();
             $('#eBankName').focus();
          }else if($('#eOwnerName').val().length<1){
             alert('예금주명을 입력해주세요');
              event.preventDefault();
             $('#eOwnerName').focus();
          }else if($('#eOwnerBirth').val().length<1){
             alert('생년월일을 입력해주세요');
              event.preventDefault();
             $('#eOwnerBirth').focus();
          }else if($('#eAccountNum').val().length<1){
        	  alert('계좌번호를 입력해주세요');
              event.preventDefault();
             $('#eAccountNum').focus();
          }	
				
			});	
	
	 $('#btPayDel').click(function(){
		 if($('#dAccount').val().length==0){
			 alert('조회된 계좌가 없습니다.');
             event.preventDefault();
		 }else if(!confirm('계좌정보를 삭제하시겠습니까?') ){
			event.preventDefault();
			}
	 });
		/* $('.Binfo').each(function(idx,item){
			if($(this).val().length<1){
	            alert($(this).prev.text()+'을 입력하세요');
	            $(this).focus();
	            event.preventDefault();
	            return false; //each탈출
			}
		}); */
	});	

 </script>
 
     <div class="MyPamentEditWrapper">     
       <div class="MyPamentContent" id="payMethodEdit">
            <div class="paymentEdit">
  <!-- 결제숮단 변경가능 -->	      
 				
              <div class="payMethdLabel">
              	<div class="payTitle"> <h4>등록된 결제수단</h4></div>
              </div>
          
              <div class="paymentContents">
              	 
	          	  <form action="<c:url value='/GoMember/memberPaymentEdit_ok.do'></c:url>" method="post" name="frmPayMent"> 
	                  <input type="hidden" name="eBankNo" value="${bVo.bankNo}"> 	
	                
		              <label for="eBusinessFlag">구분:</label>
		              <input type="radio" name="eBusinessFlag" id="private" value="N"<c:if test="${bVo.businessFlag eq'N'}">checked</c:if><c:if test="${empty bVo.businessFlag}">checked</c:if>>
		              <span class="ckBFlag"><label for="private" style="cursor:pointer">개인 </label></span>
		              <input type="radio" name="eBusinessFlag" id="business" value="B"<c:if test="${bVo.businessFlag eq'B'}">checked</c:if>>
		              <span class="ckBFlag"><label for="business" style="cursor:pointer">사업자</label></span><br>
		     
				      <span class="Bword"> <label for="eBankName">은행:</label></span>     
				      <input type="text" class="Binfo" name="eBankName" id="eBankName" value="${bVo.bankName}" placeholder="은행명을 입력하세요"><br>	                      
			          <span class="Bword"><label for="eAccountNum">계좌번호:</label></span>    
			          <input type="text" class="Binfo" name="eAccountNum" id="eAccountNum" value="${bVo.accountNum}" placeholder="계좌번호를 입력하세요"><br>                     
			          <span class="Bword"><label for="eOwnerName">예금주명:</label></span>    
			          <input type="text" class="Binfo" name="eOwnerName" id="eOwnerName" value="${bVo.ownerName}" placeholder="예금주명을 입력하세요"><br>
			          <span class="Bword"><label for="eOwnerBirth">예금주 생년월일:</label></span>
			          <input type="text" class="Binfo" name="eOwnerBirth" id="eOwnerBirth" value="${bVo.ownerBirth}" placeholder="예금주 생년월일 입력하세요"><br>
		            
			
			            
		            <div class="btPEdit">
		       	  	<button id="btPayEdit" value="결제수단 추가/변경">결제수단 추가/변경</button>
		            </div> 
	             </form>
                </div>
			</div>
			
			
	            <div class="btPDel">
		            <form action="<c:url value='/GoMember/memberPaymentDel_ok.do'></c:url>" method="post" name="frmDelAccount">
				 	 	<input type="hidden" name="dAccount" id="dAccount" value="${bVo.accountNum}">	
				 	 		            
		           	 	<button id="btPayDel" value="결제수단 삭제">결제수단 삭제</button>
		           	 
		            </form>
	            </div>
	       	  	 
         	 
           <div class="paymentTooltipTx">           
      		<p><b>결제수단을 삭제하면 예약된 후원의 결제수단 정보도 삭제되나요?</b></p>
      		<p>현재 후원하신 프로젝트에 등록된 결제수단이 삭제되거나 변경되진 않습니다.</p>             	
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

<!-- footer위치 -->
<%@ include file="../inc/bottom.jsp"%>