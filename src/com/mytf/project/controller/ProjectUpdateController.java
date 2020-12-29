package com.mytf.project.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.controller.Controller;

public class ProjectUpdateController implements Controller{

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		return "/projectManager/projectUpload2.jsp";
	}

	@Override
	public boolean isRedirect() {
		return false;
	}

}
