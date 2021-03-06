<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

	<!-- header 위치 -->
	<%@ include file="inc/top.jsp"%>
	
<div class="portfolio-area sp" style="padding-top:40px">
    <div class="container">
        <div class="row">
            <ul class="isotope-menu">
                <li data-filter=".category1" style="font-weight:bold">제품디자인</li>
                <li data-filter=".category2" style="font-weight:bold">문구도서</li>
                <li data-filter=".category3" style="font-weight:bold">문화예술</li>
                <li data-filter=".category4" style="font-weight:bold">푸드</li>
                <li data-filter=".category5" style="font-weight:bold">패션</li>
            </ul>
        </div>
        <div class="row portfolio-isotope">
	        <c:forEach var="dto" items="${projList_category}">
	            <div class="single-portfolio col-md-4 category${dto.ctNo }">
	                <div class="inner">
	                    <div class="portfolio-img">
	                        <img src="<c:url value='/Project_Thumbnail/${dto.fileName }'/>" alt="portfolio-image">
	                        <div class="hover-content">
	                            <div>
	                                <a href="<c:url value='/detail/detail_first.do?projectNo=${dto.projectNo }'/>" class="button">프로젝트 보러가기</a>
	                            </div>
	                        </div>
	                    </div>
	                    <div class="project-content">
	                        <a href="#"><h5>${dto.projectName }</h5></a>
	                        <div>${dto.ctName}</div>
	                    </div>
	                </div>
	            </div>
	         </c:forEach>
        </div>
    </div>
</div>

	<!-- footer위치 -->
	<%@ include file="inc/bottom.jsp"%>