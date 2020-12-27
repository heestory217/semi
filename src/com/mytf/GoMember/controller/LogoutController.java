package com.mytf.GoMember.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.Session;

import com.controller.Controller;

public class LogoutController implements Controller{

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		//1		
		//2					
		//3
		//4
		
		HttpSession session =request.getSession(); 
		session.invalidate();		
		request.setAttribute("msg","로그아웃처리 되었습니다.");
		request.setAttribute("url","/mainArticle.do");
		
		return 	"/common/message.jsp";
					
	}

	@Override
	public boolean isRedirect() {	
		return false;
	}
}
