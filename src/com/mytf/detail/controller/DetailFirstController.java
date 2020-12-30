package com.mytf.detail.controller;

import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.controller.Controller;
import com.mytf.detail.model.GoMemberService_Add;
import com.mytf.detail.model.GoMemberVO_Add;
import com.mytf.project.model.ProjectService;
import com.mytf.project.model.ProjectVO;

public class DetailFirstController implements Controller{

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		/* detail_first.do => DetailFirstController => detail_first.jsp*/
		
		/*
		 * String projectNo="PJ007";
		 */	
		  
		  String projectNo = request.getParameter("projectNo");
		 		System.out.println("이전페이지에서 넘어온 projectNo="+ projectNo);
		
		
		//2
		ProjectService service = new ProjectService();
		ProjectVO vo=null;
		
		String ctName = null;
		try {
			vo=service.selectByProjNo(projectNo);
			ctName = service.selectCtName(projectNo);
		}catch(SQLException e){
			e.printStackTrace();
		}
		
		
		GoMemberService_Add service2 = new GoMemberService_Add();
		GoMemberVO_Add goGo = null;

		try {
			goGo=service2.selectMemberByPojectNo(vo.getProjectNo());
		}catch(SQLException e){
			e.printStackTrace();
		}
				      
		
		//3
		request.setAttribute("ctName", ctName);
		request.setAttribute("vo", vo);
		request.setAttribute("goGo", goGo);
		
		//4
	
		return "/detail/detail_first.jsp";
	}

	@Override
	public boolean isRedirect() {
		return false;
	}
}
