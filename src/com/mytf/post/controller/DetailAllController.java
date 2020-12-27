package com.mytf.post.controller;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.controller.Controller;
import com.mytf.post.model.postService;
import com.mytf.post.model.postVO;

public class DetailAllController implements Controller{

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		/*
		 5. 상세보기 페이지 - detail.jsp
		/board/detail.do => DetailController 
		=> detail.jsp 로 포워드 
		 */
		
		//1
		//=> http://localhost:9090/mymvc/board/detail.do?
		
		
		postVO vo = (postVO)request.getAttribute("vo");

		String postNo = request.getParameter("postNo");
		
		//3
		/*
		 * String postContent = vo.getPostContent(); if(postContent != null){
		 * postContent=postContent.replace("\r\n", "<br>"); }else{ postContent=""; }
		 */
		
	
		if(postNo==null || postNo.isEmpty()) {
			request.setAttribute("msg", "잘못된 url입니다.");
			request.setAttribute("url", "/post/write_all.do");
			
			return "/common/message.jsp";
		}
		
		//2
		postService service = new postService();
		vo=null;
		try {
			vo=service.selectByNo(Integer.parseInt(postNo));
		}catch(SQLException e){
			e.printStackTrace();
		}
		      
		
		//3
		request.setAttribute("vo", vo);
		
		//4
		return "/post/detail_all.jsp";
		
	}

	@Override
	public boolean isRedirect() {
		return false;
	}

}
