package com.mytf.project.controller;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.controller.Controller;
import com.mytf.project.model.ProjectService;

public class ProjUpBeforeController implements Controller {

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		//로그인 정보 세션에서 받아오기 (이메일)
		HttpSession session=request.getSession();
		String email=(String)session.getAttribute("email");

		//로그인 정보가 없으면, 로그인창으로 보내기
		if(email==null || email.isEmpty()) {
			return "/login/login.do";
		}
		
		ProjectService service = new ProjectService();
		try {
			int memberNo=(int)session.getAttribute("memberNo");
			System.out.println("현재 로그인 memberNo="+memberNo);

			int cnt = service.insertProjectNo(memberNo);
			if(cnt>0) {
				System.out.println("프로젝트 번호 생성 성공!");
			}
		}catch (SQLException e) {
			e.printStackTrace();
		}
		
		//로그인 정보가 있으면, 프로젝트 번호 생성, 프로젝트 올리기 창 보여주기
		return "/projectManager/projectUpload_before.jsp";
	}

	@Override
	public boolean isRedirect() {
		return false;
	}

}
