package com.mytf.GoMember.controller;

import java.sql.SQLException;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.controller.Controller;
import com.mytf.GoMember.model.GoMemberService;
import com.mytf.GoMember.model.GoMemberVO;

import oracle.net.ns.SessionAtts;

public class LoginOkController implements Controller{

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		/* 
		4.로그인처리 /login/login_ok.jsp
		/login/login_ok.do=>LoginOkController=>//mainArticle.do 
		*/
		//1.파라미터 읽어오기
		String email=request.getParameter("email");
		String pwd=request.getParameter("pwd");
		//2.비즈니스로직처리
		String msg="로그인 실패", url="/login/login.do";
		GoMemberService gService= new GoMemberService();
		try {
			int result=gService.loginCheck(email, pwd);
			if(result==GoMemberService.LOGIN_OK) {
				//1)세션에 저장
				HttpSession session = request.getSession();
				session.setAttribute("email",email);			
				GoMemberVO gVo=gService.selectByEmail(email);
				session.setAttribute("name", gVo.getName());
				//회원번호 저장
				session.setAttribute("memberNo", gVo.getMemberNo());
				//회원 이미지 저장
				session.setAttribute("fileName", gVo.getFileName());
				
				//2)쿠키에 저장 X			
				msg=gVo.getName()+"님이 로그인 하셨습니다.";
//				url="/mainArticle.jsp";
				url="/mainArticle.do";
			}else if(result==GoMemberService.PW_DISAGREE){
				msg="비밀번호가 일치하지 않습니다.";
				url="/login/login.do";
			}else if(result==GoMemberService.EMAIL_NONE){
				msg="존재하지 않는 이메일입니다.";
				url="/login/login.do";
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		//3.결과저장
		request.setAttribute("msg", msg);
		request.setAttribute("url", url);
		//4.뷰페이지 리턴
		return "/common/message.jsp";
	}

	@Override
	public boolean isRedirect() {
		return false;
	}

}
