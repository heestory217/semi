package com.mytf.GoMember.controller;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.controller.Controller;
import com.mytf.common.PagingVO;
import com.mytf.post.model.postService;
import com.mytf.post.model.postVO;

public class MyPostController implements Controller{
	private postService pService;
	
	public MyPostController() {
		pService=new postService();
	
	}

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse response) throws Throwable {
	
		//1 파라미터 읽어오기
		HttpSession session=request.getSession();
		int memberNo=(int)session.getAttribute("memberNo"); // 
		
		//2 디비작업
		 List<postVO> list=new ArrayList<postVO>();
		
		try {
			list= pService.selectMyPost(memberNo);
	
		} catch (SQLException e) {
			e.printStackTrace();
		}
		int currentPage=1;
		if(request.getParameter("currentPage")!=null&&!request.getParameter("currentPage").isEmpty()) {
			currentPage=Integer.parseInt(request.getParameter("currentPage"));

		}
		int totalRecord=0;
		if(list!=null)totalRecord=list.size();
		
		int pageSize=5;
		int blockSize=10;
		
		PagingVO pageVo=new PagingVO(currentPage, totalRecord, pageSize, blockSize);
		
		//3
		request.setAttribute("list", list);
		request.setAttribute("pageVo", pageVo);
	
		//4
		
		
		return "/GoMember/myPost.jsp";
	}

	

	@Override
	public boolean isRedirect() {
		// TODO Auto-generated method stub
		return false;
	}
	

}
