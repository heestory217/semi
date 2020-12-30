package com.mytf.GoComment.Controller;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.controller.Controller;
import com.mytf.GoComment.model.GoCommentService;
import com.mytf.GoComment.model.GoCommentVO;
import com.mytf.post.model.postService;
import com.mytf.post.model.postVO;

public class GoCommentController implements Controller{

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		String postNo = request.getParameter("postNo");
		System.out.println("write_ok에서 넘어온 postNo="+ postNo);
		
		String projectNo = request.getParameter("projectNo");
		
		
		  HttpSession session=request.getSession(); 
		  int memberNo=(int)session.getAttribute("memberNo");
		  String name=(String)session.getAttribute("name");
		  String email=(String)session.getAttribute("email");
		
			System.out.println("post에서 넘어온 memberNo="+ memberNo);
			
			
			postService service = new postService();
			List<postVO> list=null;
			try {
				list=service.selectAll(projectNo);
			}catch(SQLException e){
				e.printStackTrace();
			}
			      
		
			
			GoCommentService service2 = new GoCommentService();
			List<GoCommentVO> clist=null;
			try {
				clist=service2.selectAll(Integer.parseInt(postNo));
			}catch(SQLException e){
				e.printStackTrace();
			}
			      
			
			//3
			request.setAttribute("list", list);
			request.setAttribute("clist", clist);
			
		
		
		return "/GoComment/GoComment.jsp";
	}

	@Override
	public boolean isRedirect() {
		return false;
	}

	
}
