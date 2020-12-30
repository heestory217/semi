package com.mytf.detail.controller;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.controller.Controller;
import com.mytf.detail.model.GoMemberService_Add;
import com.mytf.detail.model.GoMemberVO_Add;
import com.mytf.post.model.postService;
import com.mytf.post.model.postVO;
import com.mytf.project.model.ProjectService;
import com.mytf.project.model.ProjectVO;

public class DetailCommController implements Controller{

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse response) throws Throwable {

		String projectNo = request.getParameter("projectNo");
		System.out.println("이전페이지에서 넘어온 projectNo="+ projectNo);
		


		//3
		 
		
		
		//2
		ProjectService service3 = new ProjectService();
		ProjectVO vo=null;
		
		try {
			vo=service3.selectByProjNo(projectNo);
		}catch(SQLException e){
			e.printStackTrace();
		}
		
		
		postService service = new postService();
		List<postVO> list=null;
		try {
			list=service.selectAll(projectNo);
		}catch(SQLException e){
			e.printStackTrace();
		}
		      
		
		GoMemberService_Add service2 = new GoMemberService_Add();
		GoMemberVO_Add goGo = null;

		try {
			goGo=service2.selectMemberByPojectNo(projectNo);
		}catch(SQLException e){
			e.printStackTrace();
		}
				      
		
		//3
		request.setAttribute("vo", vo);
		request.setAttribute("list", list);
		request.setAttribute("goGo", goGo);
		
		//4
	
		 return "/detail/detail_comm.jsp"; 
	}

	@Override
	public boolean isRedirect() {

		
		return false;
	}

}
