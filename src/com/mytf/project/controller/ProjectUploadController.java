package com.mytf.project.controller;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.controller.Controller;
import com.mytf.project.model.ProjectService;
import com.mytf.project.model.ProjectVO;

//프로젝트 올리기 페이지 보여줌
public class ProjectUploadController implements Controller{

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		String projectNo=request.getParameter("projectNo");
		
		//세션정보 뿌려주기
		HttpSession session=request.getSession();
		String name=(String)session.getAttribute("name");
		String email=(String)session.getAttribute("email");
		
		//프로젝트번호 넘겨받고 출력하기
		ProjectService service = new ProjectService();
		ProjectVO vo = null;
		try {
			vo=service.selectByProjNo(projectNo);
			System.out.println("\n현재 vo :"+vo);
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		//결과저장
		request.setAttribute("name", name);
		request.setAttribute("email", email);
		request.setAttribute("vo", vo);
		
		return "/projectManager/projectUpload.jsp";
	}

	@Override
	public boolean isRedirect() {
		return false;
	}

}
