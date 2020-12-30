<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<link rel="stylesheet" href="<c:url value='/css/myPost.css'/>">


	<!-- header 위치 -->
	<%@ include file="../login/login_check.jsp" %>
	<%@ include file="../inc/top.jsp"%>


<div class="MyPostOuter">


	<div class="myPTitle"><h4>내가 쓴 게시글</h4> </div>
	<div class="myPostContainer">
			<c:if test="${empty list}">
                <div class="NoneData">데이터가 존재하지 않습니다</div>
            </c:if>
			<c:if test="${!empty list}"> 			
			   <c:set var="curPos" value="${pageVo.curPos }" />
               <c:set var="num" value="${pageVo.num }" />
					<c:forEach var="i" begin="1" end="${pageVo.pageSize}">
						<c:if test="${num>=1 }">
		                  <div class=postWrapper>
		                     <c:set var="pVo" value="${list[curPos] }" />
		                     <c:set var="curPos" value="${curPos+1}" />
		                     <c:set var="num" value="${num-1}" />
		                     <div class="pjInfo">
			                     <div class="Pjname">프로젝트명: ${pVo.projectName}</div>
			                     
			                     
			                     <div class="Pjdate">프로젝트 마감일: <fmt:formatDate value="${pVo.duedate}" pattern="yyyy-MM-dd"/></div>
			                     <div class="PjPic"> <img src="<c:url value='/Project_Thumbnail/${pVo.fileName }'/>"></div>
		                     </div>
		                     
							<div class="myPOstContainer">
								<div class="PTitle"><p><b>제목: ${pVo.title }</b></p></div>
								<div  class="PWriter"><p>작성자: ${name }</p></div>
								<div class="PpostDate"><p>등록일:<fmt:formatDate value="${pVo.postDate}" pattern="yyyy-MM-dd"/></p></div>
								<textarea class="PTA">${pVo.postContent}</textarea>
						
								<div class="divideline"></div>
							</div>
						</div>	
					</c:if>
					</c:forEach>
					
					
					
					<!-- 댓글 -->	
			</c:if>			
	</div>	
	<div class="blockSection"> 
	<!-- 이전 블럭으로 이동 -->
      <c:if test="${pageVo.firstPage>1}">
	     <a href="<c:url value='/GoMember/myPost.do?currentPage=${pageVo.firstPage-1}'/>">
	         <img src="<c:url value='/images/first.JPG'/>" alt="이전 블럭으로 이동">
	      </a>
      </c:if>
      
      <c:forEach var="i" begin="${pageVo.firstPage}" end="${pageVo.lastPage}">
		<c:if test="${pageVo.totalPage>=i}">
			<c:if test="${pageVo.currentPage==i}">
				<span style="color: pink; font-weight: bold">${i}</span>
			</c:if>
			<c:if test="${pageVo.currentPage!=i}">
			 <a href=" <c:url value='/GoMember/myPost.do?currentPage=${i}'/>">[${i}]</a>			
 				
 			</c:if>
			
		</c:if>      
      </c:forEach>

      <c:if test="${pageVo.lastPage<pageVo.totalPage }">
        <a href="<c:url value='/GoMember/myPost.do?currentPage=${pageVo.lastPage+1}'/>">
    	    <img src="<c:url value='/img/last.JPG'/>" alt="다음 블럭으로 이동">
      	</a>
      </c:if>
	</div>
	
</div>
				

	<!-- footer위치 -->
	<%@ include file="../inc/bottom.jsp"%>