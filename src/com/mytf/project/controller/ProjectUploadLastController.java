package com.mytf.project.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.controller.Controller;

public class ProjectUploadLastController implements Controller{

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		String projectNo=request.getParameter("projectNo");
		
		request.setAttribute("projectNo", projectNo);
		
		return "/projectManager/projectUpload4.jsp";
	}

	@Override
	public boolean isRedirect() {
		return false;
	}

}
