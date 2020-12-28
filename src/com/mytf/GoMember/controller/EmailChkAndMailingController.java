package com.mytf.GoMember.controller;

import java.io.PrintWriter;
import java.sql.SQLException;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.controller.Controller;
import com.mytf.GoMember.mail.GmailSend;
import com.mytf.GoMember.model.GoMemberService;
import com.mytf.GoMember.model.GoMemberVO;

public class EmailChkAndMailingController implements Controller{
	private GoMemberService gService;
	
	
	
	public EmailChkAndMailingController() {
		gService=new GoMemberService();
	}

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		
		//1 파라미터 받기
		String email=request.getParameter("myEmail");
		
		//2 db작업
			int result=0;
			int cnt=0;
			
			try {
				result=gService.CheckEmail(email);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			String msg="비밀번호 찾기 실패!", url="/login/searchPw.do";
			if(result==GoMemberService.USEABLE_EMAIL) {
				msg="유효하지 않은 이메일입니다.";
				url="/login/searchPw.do";
				
			}else if(result==GoMemberService.EXIST_EMAIL) {
				
				String newPw="fundingo";
				for(int i=0;i<5;i++) {
					newPw+=(int)((Math.random()+1)*10);
				}
				
				//새로운 비밀번호 셋팅
				GoMemberVO gVo= new GoMemberVO();
				gVo.setEmail(email);
				gVo.setPwd(newPw);
				
				try {
					cnt=gService.updateNewPW(gVo);
				} catch (SQLException e) {
					e.printStackTrace();
				}
				
				if (cnt>0) {
					
					  String title="fundingo, 비밀번호 안내메일입니다."; String content="안녕하세요. fundingo입니다. "
					  + "새로운 임시 비밀번호는 "+newPw+" 입니다." + "fundingo에서 로그인 후 새로운 비밀번호로 변경하여주시기 바랍니다.";
					  GmailSend.send(title, content, email);
					 
					
					
					msg= "메일발송완료! 발송된 임시비밀번호로 로그인해주세요.";
					url= "/login/login.do";
				}
			}
			
		//3
			request.setAttribute("msg",msg);
			request.setAttribute("url",url);
		//4
		return "/common/message.jsp";
	}

	@Override
	public boolean isRedirect() {
		// TODO Auto-generated method stub
		return false;
	}
	
	

}
