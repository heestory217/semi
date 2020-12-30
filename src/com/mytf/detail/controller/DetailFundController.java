package com.mytf.detail.controller;

import java.sql.SQLException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.controller.Controller;
import com.mytf.project.model.ProjectVO;
import com.mytf.project.model.ProjectService;

public class DetailFundController implements Controller{

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse response) throws Throwable {

		String projectNo = request.getParameter("projectNo");
		System.out.println("이전페이지에서 넘어온 projectNo="+ projectNo);
		
		
		//2
		ProjectService service = new ProjectService();
		ProjectVO vo=null;
		try {
			vo=service.selectByProjNo(projectNo);
		}catch(SQLException e){
			e.printStackTrace();
		}
		      
		
		//3
		request.setAttribute("vo", vo);
		
		//4
	
		 return "/detail/detail_fund.jsp"; 
	}

	@Override
	public boolean isRedirect() {
		return false;
	}

}
