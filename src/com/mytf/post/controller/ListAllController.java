package com.mytf.post.controller;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.controller.Controller;
import com.mytf.common.PagingVO;
import com.mytf.post.model.postService;
import com.mytf.post.model.postVO;

public class ListAllController implements Controller{

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		/*
		  /board/list.do => ListController
		   => list.jsp 
		 */
		//1.
		HttpSession session=request.getSession();
		String projectNo=(String)session.getAttribute("projectNo");
		String name = (String) session.getAttribute("name");
		
		//2.
		postService service = new postService();
		
		List<postVO> list = null;
		try {
			list=service.selectAll(projectNo);			
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		/*
		 * //페이징처리 int currentPage=1; if(request.getParameter("currentPage")!=null &&
		 * !request.getParameter("currentPage").isEmpty()) {
		 * currentPage=Integer.parseInt(request.getParameter("currentPage")); }
		 * 
		 * int totalRecord = 0; if(list!=null) totalRecord=list.size();
		 * 
		 * int pageSize = 5; int blockSize = 10;
		 * 
		 * PagingVO pageVo = new PagingVO(currentPage, totalRecord, pageSize,
		 * blockSize);
		 */ 
		 //3. 
		request.setAttribute("list", list);
		request.setAttribute("name", name);
		/*  request.setAttribute("pageVo",
		 * pageVo);
		 */
		
		//4.
		return "/post/list_all.jsp";
	}

	@Override
	public boolean isRedirect() {
		return false;
	}

}
