<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

	<!-- header 위치 -->
	<%@ include file="inc/top.jsp"%>
	
<div class="portfolio-area sp" style="padding-top:40px">
    <div class="container">
        <div class="row">
            <ul class="isotope-menu">
                <!-- <li data-filter=".*" class="active">모두보기</li> -->
                <li data-filter=".category1">제품디자인</li>
                <li data-filter=".category2">문구도서</li>
                <li data-filter=".category3">문화예술</li>
                <li data-filter=".category4">푸드</li>
                <li data-filter=".category5">패션</li>
            </ul>
        </div>
        <div class="row portfolio-isotope">
	        <c:forEach var="dto" items="${projList_category}">
	            <div class="single-portfolio col-md-4 category${ctno }">
	                <div class="inner">
	                    <div class="portfolio-img">
	                        <img src="<%=request.getContextPath()%>/img/projectImage_1.JPG" alt="portfolio-image">
	                        <div class="hover-content">
	                            <div>
	                                <a href="#" class="button">프로젝트 보러가기</a>
	                            </div>
	                        </div>
	                    </div>
	                    <div class="project-content">
	                        <a href="#"><h5>${dto.projectName }</h5></a>
	                        <span>${dto.ctName}</span>
	                    </div>
	                </div>
	            </div>
	         </c:forEach>
        </div>
    </div>
</div>

	<!-- footer위치 -->
	<%@ include file="inc/bottom.jsp"%>