package com.mytf.GoMember.controller;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.controller.Controller;
import com.mytf.GoMember.model.GoMemberService;
import com.mytf.GoMember.model.GoMemberVO;

public class MemberRegisterOkController implements Controller{

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		/*
		 *  2. 회원등록 /GoMember/memberRegister_ok.jsp
		 * /GoMember/memberRegister_ok.do=>MemberRegisterOkController=>/GoMember/
		 * memberRegister_ok.jsp
		 */
				
		//1. 파라미터 읽어오기
		String userName=request.getParameter("userName");
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		//2. 비즈니스 로직처리
		GoMemberService gService= new GoMemberService();
		
		
		String msg="회원가입 실패", url="/GoMember/memberRegister.do";
		try {
		
		int result=gService.CheckEmail(email);	
		if(result==GoMemberService.EXIST_EMAIL) {
			msg="이미 존재하는 이메일입니다. 다시 확인해주세요";
			url="/GoMember/memberRegister.do";
		}
		 GoMemberVO gVo=new GoMemberVO();
		 gVo.setName(userName);
		 gVo.setEmail(email);
		 gVo.setPwd(password);
		 
		 int cnt=gService.insertGoMember(gVo);
		 if(cnt>0) {
			 msg="회원가입 성공! 로그인을 해주세요" ;
			 url="/login/login.do";
		 }
		} catch (SQLException e) {
			e.printStackTrace();
		}
		//3. 결과저장
		request.setAttribute("msg", msg);
		request.setAttribute("url", url);
		//4. 뷰페이지 리턴
		
		return "/common/message.jsp";
	}

	@Override
	public boolean isRedirect() {
		return false;
	}

}
