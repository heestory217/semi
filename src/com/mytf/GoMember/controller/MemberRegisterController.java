package com.mytf.GoMember.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.controller.Controller;

public class MemberRegisterController implements Controller{

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		//1. 요청파라미터 받ㄷ기
		//2. 비즈니스로직
		//3. 결과저장
		//4. 뷰페이지 리턴
		return "/GoMember/memberRegister.jsp";

	}

	@Override
	public boolean isRedirect() {
		return false;
	}
	
}
