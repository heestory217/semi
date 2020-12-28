package com.mytf.project.controller;

import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.controller.Controller;
import com.mytf.project.model.ProjectService;
import com.mytf.project.model.ProjectVO;

public class SearchController implements Controller {

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		/*
		 3. 검색 결과 화면 보여주기(기존 search.jsp)-조회
			/search.do => SearchController => /search.jsp로 포워드
		 */
		//1.요청파라미터 읽어오기
		//검색
		String keyword = request.getParameter("keyword");
		
		//2.비즈니스 로직처리-db작업
		ProjectService service = new ProjectService();
		ArrayList<ProjectVO> list = null;
		
		try {
			list = service.selectByProjKeword(keyword);
			/*
			 * //세션에 저장 HttpSession session = request.getSession();
			 * session.setAttribute("keyword", keyword);
			 */
		}catch (SQLException e) {
			e.printStackTrace();
		}
		
		//3.request에 결과저장
		request.setAttribute("projList_search", list);
		
		//4.jsp로 포워드
		return "/search.jsp";
	}

	@Override
	public boolean isRedirect() {
		return false;
	}

}
