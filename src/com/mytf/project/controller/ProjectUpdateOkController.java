package com.mytf.project.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.controller.Controller;

public class ProjectUpdateOkController implements Controller {

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		return ;
	}

	//리다이렉트 인듯 고민해봐
	@Override
	public boolean isRedirect() {
		return false;
	}

}
