package com.mytf.post.controller;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.controller.Controller;
import com.mytf.post.model.postService;
import com.mytf.post.model.postVO;

public class EditAllController implements Controller{

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse response) throws Throwable {

		/*
		 * 6. 수정 화면 보기- edit.jsp 
		 * /board/edit.do => EditController 
		 * => edit.jsp 로 포워드
		 */
		
		//1.
		//=>http://localhost:9090/mymvc/board/detail.do?no=129
		String postNo=request.getParameter("postNo");

		//2.
		postService service = new postService();
		postVO vo = null;
		try {
			vo=service.selectByNo(Integer.parseInt(postNo));
		}catch(SQLException e) {
			e.printStackTrace();
		}
		//3.
		request.setAttribute("vo", vo);
		
		//4.
		return "/psot/edit_all.jsp";
	}

	@Override
	public boolean isRedirect() {
		return false;
	}

}
