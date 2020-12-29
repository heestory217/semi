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
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date1 = (Date) sdf.parse(opendate);
		Date date2 = (Date) sdf.parse(duedate);
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
		
		//3 결과저장
		request.setAttribute("vo", vo);
		
		//4
		return "/projectManager/projectUpload2.do?projectNo="+projectNo;
	}

	//리다이렉트 인듯 고민해봐
	@Override
	public boolean isRedirect() {
		return false;
	}

}
