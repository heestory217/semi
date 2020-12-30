package com.mytf.detail.controller;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.controller.Controller;
import com.mytf.post.model.postService;
import com.mytf.post.model.postVO;

public class DetailCommController implements Controller{

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse response) throws Throwable {

		String projectNo = request.getParameter("projectNo");
		System.out.println("이전페이지에서 넘어온 projectNo="+ projectNo);
		


		//3
		 
		
		
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
	
		 return "/detail/detail_comm.jsp"; 
	}

	@Override
	public boolean isRedirect() {

		
		return false;
	}

}
