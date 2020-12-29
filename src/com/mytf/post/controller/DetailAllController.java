package com.mytf.post.controller;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.controller.Controller;
import com.mytf.post.model.postService;
import com.mytf.post.model.postVO;

public class DetailAllController implements Controller{

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		/*
		 5. 상세보기 페이지 - detail.jsp
		/post/detail_all.do => DetailAllController 
		=> detail_all.jsp 로 포워드 
		 */
		
		//1
		//=> 
		
		String projectNo = request.getParameter("projectNo");
		System.out.println("write_ok에서 넘어온 projectNo="+ projectNo);
		
		  HttpSession session=request.getSession(); 
		  int memberNo=(int)session.getAttribute("memberNo");
		  String name=(String)session.getAttribute("name");
		  String email=(String)session.getAttribute("email");
		
		System.out.println("write_ok에서 넘어온 memberNo="+ memberNo);

		//3
		/*
		 * String postContent = vo.getPostContent(); if(postContent != null){
		 * postContent=postContent.replace("\r\n", "<br>"); }else{ postContent=""; }
		 */
		
		
		//2
		postService service = new postService();
		List<postVO> list=null;
		try {
			list=service.selectAll(projectNo);
		}catch(SQLException e){
			e.printStackTrace();
		}
		      
		
		//3
		request.setAttribute("list", list);
		
		//4
	
		 return "/post/detail_all.jsp"; 
			
	
	}

	@Override
	public boolean isRedirect() {
		return false;
	}

}
