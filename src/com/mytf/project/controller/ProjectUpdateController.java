package com.mytf.project.controller;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.controller.Controller;
import com.mytf.project.model.ProjectService;
import com.mytf.project.model.ProjectVO;

public class ProjectUpdateController implements Controller{

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		String projectNo=request.getParameter("projectNo");
		
		//ok에서 넘어온 부분
		ProjectService service = new ProjectService();
		ProjectVO vo = null;
		try {
			vo = service.selectByProjNo(projectNo);
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		request.setAttribute("projectNo", projectNo);
		request.setAttribute("vo", vo);
		
		return "/projectManager/projectUpload2.jsp";
	}

	@Override
	public boolean isRedirect() {
		return false;
	}

}
