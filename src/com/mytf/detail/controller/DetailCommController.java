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
		
		//2
		ProjectService service = new ProjectService();
		ProjectVO projectVo=null;
		try {
			projectVo=service.selectByProjNo(projectNo);
			System.out.println("현재 projectVo: "+projectVo);
		}catch(SQLException e){
			e.printStackTrace();
		}
		
		
		postService pService = new postService();
		List<postVO> postList=null;
		try {
			postList=pService.selectAll(projectNo);
			System.out.println("현재 postList: "+postList);
		}catch(SQLException e){
			e.printStackTrace();
		}
		      
		GoMemberService_Add gService = new GoMemberService_Add();
		GoMemberVO_Add gVo = null;
		try {
			gVo=gService.selectMemberByPojectNo(projectNo);
		}catch(SQLException e){
			e.printStackTrace();
		}
				      
		
		//3
		request.setAttribute("projectNo", projectNo);
		request.setAttribute("projectVo", projectVo);
		request.setAttribute("postList", postList);
		request.setAttribute("gVo", gVo);
		
		//4
	
		 return "/detail/detail_comm.jsp"; 
	}

	@Override
	public boolean isRedirect() {

		
		return false;
	}

}
