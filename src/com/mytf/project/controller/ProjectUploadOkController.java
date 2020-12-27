package com.mytf.project.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.controller.Controller;
import com.mytf.project.model.ProjectService;
import com.mytf.project.model.ProjectVO;

public class ProjectUploadOkController implements Controller {

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		//세션정보 가져오기
		HttpSession session=request.getSession();
		int memberNo=(int)session.getAttribute("memberNo");
		
		//파라미터
		String projectName = request.getParameter("projectName");
		String projectDetail = request.getParameter("projectDetail");
		String ctNo = request.getParameter("ctNo");
		
		//디버깅
		System.out.println("memberNo="+memberNo);
		System.out.println("파라미터 projectName="+projectName);
		System.out.println("파라미터 projectDetail="+projectDetail);
		System.out.println("파라미터 ctNo="+ctNo);
		
		//유효성 검사
		if(memberNo==0) {
			request.setAttribute("msg", "로그인 후 이용할 수 있습니다.");
			request.setAttribute("url", "/login/login.do");
			return "/common/message";
		} 
		
		/*
		}else if(projectName==null || projectName.isEmpty()) {
			msg="프로젝트 제목을 입력하세요.";
			url="/projectManager/projectUpload.do";
		}else if(projectDetail==null || projectDetail.isEmpty()) {
			msg="프로젝트 요약을 입력하세요.";
			url="/projectManager/projectUpload.do";
		}
		*/
		
		//2 폼태그 pjUploadFrm - 프로젝트 기본정보insert
		ProjectService service = new ProjectService();
		
		ProjectVO vo = new ProjectVO();
		vo.setMemberNo(memberNo);
		vo.setProjectName(projectName);
		vo.setProjectDetail(projectDetail);
		vo.setCtNo(Integer.parseInt(ctNo));
		
		String projectNo=null;
		try {
			int cnt =service.insertProject(vo);
			if(cnt>0) {
				projectNo=service.selectProjectNo(vo);
				System.out.println("현재 저장한 프로젝트 : "+projectNo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		//결과저장
		request.setAttribute("projectNo", projectNo);
		return "/projectManager/projectBasicUpate.do?projectNo="+projectNo;
	}

	@Override
	public boolean isRedirect() {
		return true;
	}

}
