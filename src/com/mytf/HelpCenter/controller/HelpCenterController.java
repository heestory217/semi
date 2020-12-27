package com.mytf.HelpCenter.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.controller.Controller;

public class HelpCenterController implements Controller {

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		return "/helpCenter/mainCenter.jsp";
	}

	@Override
	public boolean isRedirect() {
		return false;
	}

}
