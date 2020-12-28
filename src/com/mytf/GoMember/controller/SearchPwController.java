package com.mytf.GoMember.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.controller.Controller;

public class SearchPwController implements Controller{

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse response) throws Throwable {

		//1
		//2
		//3
		
		return "/login/searchPw.jsp";
	}

	@Override
	public boolean isRedirect() {
		return false;
	}
	
	


}
