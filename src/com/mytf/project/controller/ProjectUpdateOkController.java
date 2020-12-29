package com.mytf.project.controller;

import java.sql.Date;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.controller.Controller;
import com.mytf.project.model.ProjectService;
import com.mytf.project.model.ProjectVO;

public class ProjectUpdateOkController implements Controller {

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		//1 파라미터 받기
		String projectNo=request.getParameter("projectNo");
		String goalAmount=request.getParameter("goalAmount");
		String opendate=request.getParameter("opendate");
		String duedate=request.getParameter("duedate");
		String projectStory=request.getParameter("projectStory");
		String projectPolicy=request.getParameter("projectPolicy");
		String giftInfo=request.getParameter("giftInfo");
		
		if(projectNo==null || projectNo.isEmpty()) {
			request.setAttribute("msg", "프로젝트 정보가 없습니다.");
			request.setAttribute("url", "/mainArticle.do");
			return "/common/message.jsp";
		} else if(goalAmount=="0" || goalAmount==null || goalAmount.isEmpty()) {
			request.setAttribute("msg", "펀딩 목표금액을 입력해주세요.");
			request.setAttribute("url", "/projectManager/projectUpload2.do?projectNo="+projectNo);
			return "/common/message.jsp";
		} else if(opendate==null || opendate.isEmpty() || duedate==null || duedate.isEmpty()) {
			request.setAttribute("msg", "펀딩 기간은 공백으로 비워둘 수 없습니다.");
			request.setAttribute("url", "/projectManager/projectUpload2.do?projectNo="+projectNo);
			return "/common/message.jsp";
		}else if(projectStory==null || projectStory.isEmpty()) {
			request.setAttribute("msg", "프로젝트 스토리를 입력해주세요.");
			request.setAttribute("url", "/projectManager/projectUpload2.do?projectNo="+projectNo);
			return "/common/message.jsp";
		}
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		java.util.Date date1 = sdf.parse(opendate);
		java.util.Date date2 = sdf.parse(duedate);
	    Timestamp realOpendate = new Timestamp(date1.getTime());
	    Timestamp realDuedate = new Timestamp(date2.getTime());
	    
		
		//2 DB 업데이트 처리
		ProjectVO vo = new ProjectVO();
		vo.setProjectNo(projectNo);
		vo.setGoalAmount(Integer.parseInt(goalAmount));
		vo.setOpendate(realOpendate);
		vo.setDuedate(realDuedate);
		vo.setProjectStory(projectStory);
		vo.setProjectPolicy(projectPolicy);
		vo.setGiftInfo(giftInfo);
		
		System.out.println("현재 vo:"+vo);
		
		ProjectService service = new ProjectService();
		try {
			int cnt=service.updateProject(vo);
			if(cnt>0) {
				System.out.println("개요 외 프로젝트 업데이트 성공");
			}
		}catch (SQLException e) {
			e.printStackTrace();
		}
		
		//4
		return "/projectManager/projectUpload2.do?projectNo="+projectNo;
	}

	//리다이렉트 인듯 고민해봐
	@Override
	public boolean isRedirect() {
		return false;
	}

}
