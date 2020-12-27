package com.mytf.post.controller;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.controller.Controller;
import com.mytf.post.model.postService;
import com.mytf.post.model.postVO;

public class EditAllOkController implements Controller{

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		/*
		 *7. 수정 처리 (기존 edit_ok.jsp), update, 메세지 띄우기
			/board/edit/do => EditController
			=> /common/message.jsp 포워드 => /board/detail.do로 리다이렉트
		 */		
		//1
		String postNo=request.getParameter("postNo");
		String name=request.getParameter("name");
		String title=request.getParameter("title");
		String pwd=request.getParameter("pwd");
		String email=request.getParameter("email");
		String postContent=request.getParameter("postContent");
		
		//2
		postService service =  new postService();
		
		String msg="글 수정 실패!", url="/post/edit.do?postNo="+postNo;
		try {
			//업데이트 전 비밀번호 체크
			//if(service.chkPwd()) {}
						
			postVO vo = new postVO();
			vo.setPostContent(postContent);
			vo.setEmail(email);
			vo.setName(name);
			vo.setPwd(pwd);
			vo.setPostNo(Integer.parseInt(postNo));
			vo.setTitle(title);
			
			int cnt=service.updatePost(vo);
			if(cnt>0) {
				msg="글 수정 성공";
				url="/post/detail.do?postNo="+postNo;
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		//3
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
