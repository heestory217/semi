package com.mymvc.controller;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.controller.Controller;
import com.mymvc.board.model.BoardService;
import com.mymvc.board.model.BoardVO;

public class IndexController implements Controller{

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		/*
			1. 메인화면 보여주기 - index.jsp

			/index.do => IndexController
			=> index.jsp 로 포워드
		*/
		//1		
		//2
		BoardService service = new BoardService();
		
		List<BoardVO> list=null;
		try {
			list=service.selectMainNotice();
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		//3
		request.setAttribute("noticeList", list);
		
		//4
		return "/index.jsp";
	}

	@Override
	public boolean isRedirect() {
		return false;
	}
	
}
