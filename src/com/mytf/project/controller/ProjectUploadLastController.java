package com.mytf.project.controller;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.controller.Controller;
import com.mytf.bank.model.BankService;
import com.mytf.bank.model.BankVO;

public class ProjectUploadLastController implements Controller{

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		//세션 멤버번호 불러오기
		HttpSession session=request.getSession();
		int memberNo=(int)session.getAttribute("memberNo");

		//파라미터
		String projectNo=request.getParameter("projectNo");
		
		BankService service = new BankService();
		BankVO bVo=null;
		try {
			bVo=service.selectByMemberNo(memberNo);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		request.setAttribute("bVo", bVo);
		request.setAttribute("projectNo", projectNo);

		return "/projectManager/projectUpload4.jsp";
	}

	@Override
	public boolean isRedirect() {
		return false;
	}

}
