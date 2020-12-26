<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login_check.jsp</title>
</head>
<body>
	<%
	//매번 로그인이 필요한 페이지는 세션에서 값을 읽어서 userid가 없으면 로그인하세요!라는 페이지를 보여준다. ex) 회원수정, 회원수정_ok
	String l_userid = (String)session.getAttribute("userid");
	if (l_userid == null || l_userid.isEmpty()) {
	%>
		<script type="text/javascript">
			alert("먼저 로그인하세요!");
			location.href="<c:url value='/login/login.do'/>";
		</script>
	<%
		return;
	}
	%>
</body>
</html>