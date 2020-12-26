package com.mytf.project.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.controller.Controller;
import com.mytf.project.model.ProjectVO;

//프로젝트 올리기 페이지 보여줌
public class ProjectUploadController implements Controller{

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		String projectNo=request.getParameter("projectNo");
		ProjectVO vo = (ProjectVO) request.getAttribute("vo");
		
		//세션정보 뿌려주기
		HttpSession session=request.getSession();
		String name=(String)session.getAttribute("name");
		String email=(String)session.getAttribute("email");
		
		//결과저장
		request.setAttribute("name", name);
		request.setAttribute("email", email);
		request.setAttribute("projectNo", projectNo);
		System.out.println("지금받은 vo!!!!!!"+vo);
		
		return "/projectManager/projectUpload.do?projectNo"+projectNo;
		
	}

	@Override
	public boolean isRedirect() {
		return false;
	}

}
