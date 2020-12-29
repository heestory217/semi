package com.mytf.GoMember.controller;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.controller.Controller;
import com.mytf.GoMember.model.GoMemberService;

public class MemberOutOkController implements Controller{
	private GoMemberService gService;
	
	
	public MemberOutOkController() {
		gService=new GoMemberService();
	}

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		//1
		HttpSession session=request.getSession();
		String o_email=(String)session.getAttribute("email");
		String o_pwd=request.getParameter("pwCheck");
		
		//2
		
		int result=0;
		String msg="회원 탈퇴 실패", url="/GoMember/memberOut.do";
		try {
			result=gService.loginCheck(o_email, o_pwd);
			
			 if(result==GoMemberService.LOGIN_OK) {
					int cnt=gService.GoMemberOut(o_email);
					
					if(cnt>0) {
						msg="정상적으로 탈퇴처리 되었습니다. ";
						url="/mainArticle.do";
						
						session.invalidate();
					}
				
			}else if(result==GoMemberService.EMAIL_NONE) {
			msg="존재하지 않는 이메일입니다.로그인 정보를 확인하세요!";
			url="/login/login.do";
			
			}else if(result==GoMemberService.PW_DISAGREE) {
			msg="비밀번호가 일치하지 않습니다!";
			url="/GoMember/memberOut.do";
			
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
