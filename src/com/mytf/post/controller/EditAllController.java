package com.mytf.post.controller;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.controller.Controller;
import com.mytf.post.model.postService;
import com.mytf.post.model.postVO;

public class EditAllController implements Controller{

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse response) throws Throwable {

		/*
		 * 6. 수정 화면 보기- edit.jsp 
		 * /post/edit_all.do => EditAllController 
		 * => edit_all.jsp 로 포워드
		 */
		
		//1.
		//=>http://localhost:9090/mymvc/board/detail.do?no=129
		String postNo=request.getParameter("postNo");
		System.out.println("디버깅용 - 디테일에서 넘어온 postNo=" + postNo);
		String projectNo=request.getParameter("projectNo");
		System.out.println("detail_all에서 넘어온 projectNo="+ projectNo);
		
		
		  HttpSession session=request.getSession(); int
		  memberNo=(int)session.getAttribute("memberNo"); String
		  name=(String)session.getAttribute("name"); String
		  email=(String)session.getAttribute("email");
		 
		
		
		//2.
		postService service = new postService();
		postVO vo = null;
		try {
			vo=service.selectByPostNo(Integer.parseInt(postNo));
		}catch(SQLException e) {
			e.printStackTrace();
		}
		//3.
		request.setAttribute("vo", vo);
		
		//4.
		return "/post/edit_all.jsp";
	}

	@Override
	public boolean isRedirect() {
		return false;
	}

}
