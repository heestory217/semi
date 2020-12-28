package com.mytf.project.controller;

import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.controller.Controller;
import com.mytf.project.model.ProjectService;
import com.mytf.project.model.ProjectVO;

public class DiscoverController implements Controller{

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		/*
		 2.2. 모든프로젝트보기 화면 보여주기(기존 discover.jsp)- 조회
		/discover.do => DiscoverController => /discover.jsp로 포워드
		 */
		//1.요청파라미터 읽어오기
		//2.비즈니스 로직처리 -db작업
		ProjectService service = new ProjectService();
		ArrayList<ProjectVO> list = null;
		//discover.do?type=all
		//discover.do?type=popular
		//discover.do?type=success
		//discover.do?type=new
		
		String type=request.getParameter("type");
		
		try {
			list = service.selectByProjType(type);
		}catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		//3.request에 결과저장
		request.setAttribute("projList_type", list);
		
		//4.jsp로 포워드
		return "/discover.jsp";
	}

	@Override
	public boolean isRedirect() {
		return false;
	}

}
