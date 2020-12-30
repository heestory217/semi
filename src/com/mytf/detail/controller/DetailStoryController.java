package com.mytf.detail.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.controller.Controller;

public class DetailStoryController implements Controller{

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		/* detail_stroy.do => DetailStoryController => detail_stroy.jsp*/

		
		/*
		 * String projectNo = request.getParameter("projectNo");
		 */
		return "/detail/detail_story.jsp";
	}

	@Override
	public boolean isRedirect() {
		return false;
	}

}
