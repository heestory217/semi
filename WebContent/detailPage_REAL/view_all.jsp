<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,500,500i,700,700i" rel="stylesheet">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/owl.carousel.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/barfiller.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/animate.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/font-awesome.min.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/main.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/top.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/css_jayeon.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/main_footer.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/discover.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/myPageOption.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/memberRegister.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/login.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/feeAndFundingPolicy.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/detail_chooseOp.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/detail_commTab.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/detailPage_css.css">

<!-- Spoca Han Sans 폰트 -->
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSans-kr.css' rel='stylesheet' type='text/css'>
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSans-jp.css' rel='stylesheet' type='text/css'>
<link href="../js/jquery-ui.min.css" rel="stylesheet" type"text/css">
<script type="text/javascript" src="../js/jquery-3.5.1.min.js"></script>
<script src="<%=request.getContextPath()%>/js/feather.min.js"></script>
</head>
<body>


<%@ include file="../inc/top.jsp" %>
<%@ include file="detail_header.jsp" %>
<%@ include file="detail_nav.jsp" %>

<div class="sectionAndAside">
<section class="detailSection">
<%@ include file="detail_navTab.jsp" %>
</section>

<aside class="asideSection">
<%@ include file="detail_aside.jsp" %>
</aside>
</div>







</body>
</html>