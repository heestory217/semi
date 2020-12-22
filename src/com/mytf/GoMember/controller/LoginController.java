package com.mytf.GoMember.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.controller.Controller;

public class LoginController implements Controller{

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		/*
		 3.로그인페이지 /login/login.jsp
		/login/login.do=>LoginController=>/login/login.jsp
		*/
		//1. 파라미터 읽어오기
		//2. 비즈니스로직처리
		//3. 결과저장
		//4. 뷰페이지 리턴
		return "/login/login.jsp";
	}

	@Override
	public boolean isRedirect() {
		return false;
	}
	
	

}
