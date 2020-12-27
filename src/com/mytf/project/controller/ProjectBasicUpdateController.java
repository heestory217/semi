package com.mytf.project.controller;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.controller.Controller;
import com.mytf.project.model.ProjectService;
import com.mytf.project.model.ProjectVO;

public class ProjectBasicUpdateController implements Controller {

	//프로젝트 업데이트 - 기존 기본 정보 불러오기
	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		//1
		String projectNo = request.getParameter("projectNo");
		System.out.println("projectNo="+projectNo);
		
		if(projectNo==null || projectNo.isEmpty()) {
			request.setAttribute("msg", "잘못된 url입니다.");
			request.setAttribute("url", "/projectManager/projectUpload.do");
			return "/common/message.jsp";
		}
		
		//2
		ProjectService service = new ProjectService();
		ProjectVO vo = null;
		try {
			vo=service.selectByProjNo(projectNo);
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		return "/projectManager/projectUpload";
	}

	@Override
	public boolean isRedirect() {
		return false;
	}

}
