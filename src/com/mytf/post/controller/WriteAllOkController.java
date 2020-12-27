package com.mytf.post.controller;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.controller.Controller;
import com.mytf.post.model.postService;
import com.mytf.post.model.postVO;

public class WriteAllOkController implements Controller{

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		/*

		 */
		//1. 요청 파라미터 읽어오기
		
		String projectNo=request.getParameter("projectNo");
		String title=request.getParameter("title");
		String name=request.getParameter("name");
		String pwd=request.getParameter("pwd");
		String email=request.getParameter("email");
		String postContent=request.getParameter("postContent");
		
		//2. 디비작업
		
		
		
		HttpSession session=request.getSession();
		String memberNo=(String)session.getAttribute("memberNo");
		
		
		
		if(memberNo==null || memberNo.isEmpty()) {
			request.setAttribute("msg", "로그인을하세요.");
			request.setAttribute("url", "/login/login_check.jsp");
			
			return "/common/message.jsp";
		}
		
		
		
		postService service = new postService();
		postVO vo=null;
		
		try {
			/*
			 * vo.setPostNo(Integer.parseInt(postNo));
			 */	
			
			vo.setProjectNo(projectNo); 
			vo.setMemberNo(Integer.parseInt(memberNo));
			 
			vo.setName(name);
			vo.setPwd(pwd);
			vo.setTitle(title);
			vo.setEmail(email);
			vo.setPostContent(postContent);
			
			

			int cnt=service.insertPost(vo);
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		//3. 결과 저장 
		
		  request.setAttribute("vo", vo);
		 		
		//4. 뷰페이지 리턴 
		 return "/post/detail_all.do";
		/*
		 * return "/post/list_all.do";
		 */		
	}

	@Override
	public boolean isRedirect() {
		return true;
	}


}
