package com.mytf.GoMember.controller;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.Session;

import com.controller.Controller;
import com.mytf.GoMember.model.GoMemberService;
import com.mytf.GoMember.model.GoMemberVO;
import com.mytf.bank.model.BankService;
import com.mytf.bank.model.BankVO;
import com.mytf.common.Utility;

public class MemberEditController implements Controller{
	private GoMemberService gService;
	private BankService bService;
	
	public MemberEditController() {
		gService= new GoMemberService();
		bService= new BankService();
	}

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		//1
		HttpSession session=request.getSession();
		String email=(String)session.getAttribute("email");
		int memberNo=(int)session.getAttribute("memberNo");
		
		
		//2
		GoMemberVO gVo=null;
		BankVO bVo=null;
		try {
			gVo=gService.selectByEmail(email);
			bVo=bService.selectByMemberNo(memberNo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		String fileInfo=Utility.getFileInfo(gVo.getOriginalFileName(), gVo.getFileSize());
		String displayFileName=Utility.displayFile(gVo.getFileName());
		
		
		//3
		request.setAttribute("gVo", gVo);
		request.setAttribute("bVo", bVo);
		request.setAttribute("fileInfo", fileInfo);
		request.setAttribute("displayFileName", displayFileName);
		
		//4
		return "/GoMember/memberEdit.jsp";
	}

	@Override
	public boolean isRedirect() {

		return false;
	}
	
	
	
	
	
	
}
