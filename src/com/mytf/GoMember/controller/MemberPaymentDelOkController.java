package com.mytf.GoMember.controller;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.controller.Controller;
import com.mytf.bank.model.BankService;

public class MemberPaymentDelOkController implements Controller{
	private BankService bService;
	
	public MemberPaymentDelOkController() {
		bService=new BankService();
		
	}
	
	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		//1
		HttpSession session=request.getSession();
		int memberNo=(int)session.getAttribute("memberNo");
		String accountNum=request.getParameter("dAccount");
		
		//2
		String msg="계좌정보 삭제 실패", url="/GoMember/memberPaymentEdit.do";
		try {
			int cnt=bService.deleteAccount(accountNum, memberNo);
			if(cnt>0) {
				msg="계좌정보가 삭제되었습니다.";
				url="/GoMember/memberPage.do";
			}else {
				msg="계좌 삭제 실패! 회원정보에 등록된 계좌정보를 확인해주세요.";
				url="/GoMember/memberPage.do";
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		//3
		request.setAttribute("msg", msg);
		request.setAttribute("url", url);
		//4
		return "/common/message.jsp";
	}

	@Override
	public boolean isRedirect() {
		return false;
	}

	
	
}
