<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!-- header 위치 -->
<%@ include file="inc/top.jsp"%>

<script type="text/javascript">

</script>

<div>
   <div class="container">
      <div class="search-desc">
         <span class="search-title">
         <c:choose>
            <c:when test="${param.type eq 'all'}">모든</c:when>
            <c:when test="${param.type eq 'popular'}">인기</c:when>
            <c:when test="${param.type eq 'success'}">성공임박</c:when>
            <c:when test="${param.type eq 'new'}">신규추천</c:when>
         </c:choose>
         프로젝트</span>
         <span class="search-qty">${fn:length(projList_type)}개</span>가
         있습니다.
      </div>
   </div>
</div>

<!--프로젝트 시작 부분 -->
<div class="portfolio-area">
   <div class="container" id="rowList">
      <div class="row" id="rowContent">
         <c:forEach var="dto" items="${projList_type}">
            <div class="single-portfolio col-md-4">
               <div class="inner">
                  <div class="portfolio-img">
                     <img src="<c:url value='/Project_Thumbnail/${dto.fileName }'/>"
                        alt="project-image">
                     <div class="hover-content">
                        <div>
                           <a href="#" class="button">프로젝트 보러가기</a>
                        </div>
                     </div>
                  </div>
                  <div class="project-content">
                     <a href="#"><h5>${dto.projectName }</h5></a>
                     <div class="goal-percent">
                        <span>78</span>%달성
                     </div>
                  </div>
               </div>
            </div>
         </c:forEach>
      </div>
   </div>
</div>
<!--프로젝트 끝 부분 -->


<!-- footer위치 -->
<%@ include file="inc/bottom.jsp"%>