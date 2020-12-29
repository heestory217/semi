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
		
		  HttpSession session=request.getSession(); 
		  int memberNo=(int)session.getAttribute("memberNo");
		  String name=(String)session.getAttribute("name");
		  String email=(String)session.getAttribute("email");
		 		  
		  System.out.println("memberNo="+memberNo);
		  
		
		String projectNo=request.getParameter("projectNo"); 
		System.out.println("projectNo="+projectNo);
		String title=request.getParameter("title");
		String postContent=request.getParameter("postContent");
		
		
		
		
		

		//2. 디비작업	
		/*
		 * if(memberNo==null || memberNo.isEmpty()) { request.setAttribute("msg",
		 * "로그인을하세요."); request.setAttribute("url", "/login/login_check.jsp");
		 * 
		 * return "/common/message.jsp"; }
		 */
		 
		if(title==null || title.isEmpty()) { 
			request.setAttribute("msg","제목을 입력하세요."); 
			request.setAttribute("url", "/post/write_all.do");
		 
		return "/common/message.jsp"; 
		}	
		
		if(name==null || name.isEmpty()) { 
			request.setAttribute("msg","작성자님의 이름을 입력하세요."); 
			request.setAttribute("url", "/post/write_all.do");
			
			return "/common/message.jsp"; 
		}
		
		/*
		 * if(pwd==null || pwd.isEmpty()) { request.setAttribute("msg","비밀번호를 입력하세요.");
		 * request.setAttribute("url", "/post/write_all.do");
		 * 
		 * return "/common/message.jsp"; }
		 */

		if(email==null || email.isEmpty()) { 
			request.setAttribute("msg","이메일를 입력하세요."); 
			request.setAttribute("url", "/post/write_all.do");
			
			return "/common/message.jsp"; 
		}	
		
		if(postContent==null || postContent.isEmpty()) { 
			request.setAttribute("msg","내용을 입력하세요."); 
			request.setAttribute("url", "/post/write_all.do");
			
			return "/common/message.jsp"; 
		}	
	
		
		postService service = new postService();
		
		String msg="글 등록 실패!", url="/post/write_all.do?projectNo="+projectNo+"&memberNo="+memberNo;

		postVO vo=new postVO();
		try {
			/*
			 * vo.setPostNo(Integer.parseInt(postNo));
			 */	
			
			vo.setProjectNo(projectNo);
			vo.setMemberNo(memberNo); 	 
			vo.setTitle(title);
			vo.setPostContent(postContent);
			
			

			int cnt=service.insertPost(vo);
			if(cnt>0) {
				
				vo=service.selectByNo(projectNo);
				int postNo=vo.getPostNo();
				msg="글 등록 성공";
				url="/post/detail_all.do?projectNo="+projectNo+"&memberNo="+memberNo;
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		//3. 결과 저장 
		request.setAttribute("msg", msg);
		request.setAttribute("url", url);
		
		//4
		return "/common/message.jsp";		
		
		/*
		 * request.setAttribute("vo", vo);
		 * 
		 * //4. 뷰페이지 리턴 return "/post/detail_all.jsp";
		 */
		/*
		 * return "/post/list_all.do";
		 */		
	}

	@Override
	public boolean isRedirect() {
		return false;
	}


}
