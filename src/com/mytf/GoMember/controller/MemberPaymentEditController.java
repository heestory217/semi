package com.mytf.GoMember.controller;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.controller.Controller;
import com.mytf.bank.model.BankService;
import com.mytf.bank.model.BankVO;

public class MemberPaymentEditController implements Controller{
	private BankService bService;
	
	public MemberPaymentEditController() {
		bService= new BankService();
	}

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse response) {
		//1
		HttpSession session=request.getSession();
		//String email=(String)session.getAttribute("email");
		int memberNo=(int)session.getAttribute("memberNo");
		
		//2
		BankVO bVo=null;
		try {
			bVo=bService.selectByMemberNo(memberNo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		//3
		request.setAttribute("bVo", bVo);
		//4
		
		return "/GoMember/memberPaymentEdit.jsp";
	}

	@Override
	public boolean isRedirect() {
		return false;
	}

	
	
}
