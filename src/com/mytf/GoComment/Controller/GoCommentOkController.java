package com.mytf.GoComment.Controller;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.controller.Controller;
import com.mytf.GoComment.model.GoCommentService;
import com.mytf.GoComment.model.GoCommentVO;
import com.mytf.post.model.postService;
import com.mytf.post.model.postVO;

public class GoCommentOkController implements Controller{

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		  HttpSession session=request.getSession(); 
		  int memberNo=(int)session.getAttribute("memberNo");
		  String name=(String)session.getAttribute("name");
		  String email=(String)session.getAttribute("email");
		 		  
		  System.out.println("memberNo="+memberNo);
		  
		
		String projectNo=request.getParameter("projectNo"); 
		System.out.println("projectNo="+projectNo);
		
		String postNo=request.getParameter("postNo");
		String commentContent=request.getParameter("commentContent");
		
		
		
		if(commentContent==null || commentContent.isEmpty()) { 
			request.setAttribute("msg","내용을 입력하세요."); 
			request.setAttribute("url", "/GoComment/GoComment.jsp");
			
			return "/common/message.jsp"; 
		}	
	
		
		GoCommentService service = new GoCommentService();
		
		String msg="글 등록 실패!", url="/GoComment/GoComment.jsp";

		GoCommentVO gvo=new GoCommentVO();
		try {
			/*
			 * vo.setPostNo(Integer.parseInt(postNo));
			 */	
			
			gvo.setMemberNo(memberNo); 	 
			gvo.setCommentContent(commentContent);
			gvo.setPostNo(Integer.parseInt(postNo));
			
			

			int cnt=service.insertGoComment(gvo);
			if(cnt>0) {
				
				
				msg="글 등록 성공";
				url="/GoComment/GoComment.do?projectNo="+projectNo+"&postNo="+gvo.getPostNo();
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		//3. 결과 저장 
		request.setAttribute("msg", msg);
		request.setAttribute("url", url);
		
		//4
		return "/common/message.jsp";		
		
		
	}

	@Override
	public boolean isRedirect() {
		return false;
	}

}
