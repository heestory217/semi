package com.mytf.GoMember.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.controller.Controller;
import com.mytf.GoMember.model.GoMemberService;

public class MemberOutController implements Controller{
	private GoMemberService gService;
	
	
	public MemberOutController() {
	
	}

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		//1	
		//2
		//3
		//4
		return "/GoMember/memberOut.jsp";
	}

	@Override
	public boolean isRedirect() {
		return false;
	}

	
	
}
