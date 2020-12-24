package com.mytf.GoMember.controller;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.controller.Controller;
import com.mytf.GoMember.model.GoMemberService;
import com.mytf.GoMember.model.GoMemberVO;
import com.mytf.bank.model.BankService;
import com.mytf.bank.model.BankVO;

public class MemberPageController implements Controller{
	private GoMemberService gService;
	private BankService bService;
	
	public MemberPageController() {
		gService=new GoMemberService();
		bService=new BankService();
	}

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		//1
		HttpSession session=request.getSession();
		String email=(String)session.getAttribute("email");
		int memberNo=(int)session.getAttribute("memberNo");
		System.out.println(memberNo);
		//2 비즈니스로직 
		GoMemberVO gVo=null;
		BankVO bVo=null;
		try {
			gVo=gService.selectByEmail(email);
			bVo=bService.selectByMemberNo(1);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		//3
		request.setAttribute("gVo",gVo);
		request.setAttribute("bVo",bVo);
		
		//4

		return "/GoMember/memberPage.jsp";
	}

	@Override
	public boolean isRedirect() {
		return false;
	}

}
