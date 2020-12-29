package com.mytf.post.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.controller.Controller;

public class WriteAllController implements Controller{

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		/* 1. 글쓰기화면 보여주기 - write.jsp
		 /board/write.do => WriteController
		  => write.jsp 
		*/
		//1. 요청 파라미터 읽어오기
		
		  HttpSession session=request.getSession(); 
		  int memberNo=(int)session.getAttribute("memberNo");
		  String name=(String)session.getAttribute("name");
		  String email=(String)session.getAttribute("email");
		 		  
		  System.out.println("memberNo="+memberNo);
		
		String projectNo = request.getParameter("projectNo");
		//2. 디비작업
		//3. 저장
		//4.뷰페이지 포워드
		return "/post/write_all.jsp";
	}

	@Override
	public boolean isRedirect() {
		return false;
	}

}
