package com.mytf.GoMember.controller;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.controller.Controller;
import com.mytf.GoMember.model.GoMemberService;
import com.mytf.GoMember.model.GoMemberVO;

public class MemberPageController implements Controller{
	private GoMemberService gService;
	
	
	public MemberPageController() {
		gService=new GoMemberService();
	}

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		//1
		HttpSession session=request.getSession();
		String email=(String)session.getAttribute("email");
		//2 비즈니스로직 
		GoMemberVO gVo=null;
		try {
			gVo=gService.selectByEmail(email);

		} catch (SQLException e) {
			e.printStackTrace();
		}

		//3
		request.setAttribute("gVo",gVo);
		//4
		
		
		return "/GoMember/memberPage.jsp";
	}

	@Override
	public boolean isRedirect() {
		// TODO Auto-generated method stub
		return false;
	}

}
