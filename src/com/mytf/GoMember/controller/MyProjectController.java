package com.mytf.GoMember.controller;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.controller.Controller;
import com.mytf.project.model.ProjectService;
import com.mytf.project.model.ProjectVO;

public class MyProjectController implements Controller{
	private ProjectService pService;
	
	
	public MyProjectController() {
		pService=new ProjectService();
	}

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		//1
		HttpSession session=request.getSession();
		int memberNo=(int)session.getAttribute("memberNo");
		
		//2
		List<ProjectVO>list=new ArrayList<ProjectVO>();
		try {
			list=pService.selectByMemberNo(memberNo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		//3
		request.setAttribute("list", list);
		//4
		
		return "/GoMember/myProject.jsp";
	}

	@Override
	public boolean isRedirect() {
		// TODO Auto-generated method stub
		return false;
	}
	
	
}
