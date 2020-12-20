<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp"%>
<link rel="stylesheet" href="../assets/css/login.css">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="simpleForm">
		<div class="loginForm">
			<form name="frmLogin" method="post" action="">
				<input type="email" id="login"  class="emailInput" 
					placeholder="이메일 주소 입력" name="email" value="">
				<input type="password" id="password" class="passwordInput"
					placeholder="비밀번호 입력" name="pwd" value="">
				<button type="submit" class="loginButton">로그인</button>
			</form>
		</div>
	</div>
</body>
</html>