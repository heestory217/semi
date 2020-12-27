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
	
	
	public MemberEditController() {
		gService= new GoMemberService();
		
	}

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		//1
		HttpSession session=request.getSession();
		String email=(String)session.getAttribute("email");
		
		//2
		GoMemberVO gVo=null;
		
		try {
			gVo=gService.selectByEmail(email);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		String fileInfo=Utility.getFileInfo(gVo.getOriginalFileName(), gVo.getFileSize());
	    String displayFileName=Utility.displayFile(gVo.getFileName());
		
		String oldFileName=gVo.getFileName();
		if(oldFileName==null) oldFileName="";
		
		//3
		request.setAttribute("gVo", gVo);
		request.setAttribute("fileInfo", fileInfo);
		request.setAttribute("displayFileName", displayFileName);
		request.setAttribute("oldFileName", oldFileName);
		//4
		return "/GoMember/memberEdit.jsp";
	}

	@Override
	public boolean isRedirect() {

		return false;
	}
	
	
}
