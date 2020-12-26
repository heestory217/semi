package com.mytf.project.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.controller.Controller;

public class ProjUpBeforeController implements Controller {

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		//프로젝트 올리기 창 보여주기
		return "/projectManager/projectUpload_before.jsp";
	}

	@Override
	public boolean isRedirect() {
		return false;
	}

}
