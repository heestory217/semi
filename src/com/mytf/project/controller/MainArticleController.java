package com.mytf.project.controller;

import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.controller.Controller;
import com.mytf.project.model.ProjectService;
import com.mytf.project.model.ProjectVO;

public class MainArticleController implements Controller {

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		/*
		 1. 메인 화면 보여주기(기존 mainArticle.jsp) - 조회
		/mainArticle.do => MainArticleController => /mainArticle.jsp로 포워드 
		 */
		//1.요청파라미터 읽어오기
		//2.비즈니스 로직처리-db작업
		ProjectService service = new ProjectService();
		ArrayList<ProjectVO> list = null;
	
		
		try {
			list = service.selectByProjMain();
		}catch (SQLException e) {
			e.printStackTrace();
		}
		
		//3.request에 결과저장
		request.setAttribute("foucs_list", list);
		
		//4.jsp로 포워드
		return "/mainArticle.jsp";
	}

	@Override
	public boolean isRedirect() {
		return false;
	}

}
