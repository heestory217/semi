package com.mytf.project.controller;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.controller.Controller;
import com.mytf.bank.model.BankService;
import com.mytf.bank.model.BankVO;
import com.mytf.common.Utility;
import com.mytf.project.model.ProjectService;
import com.mytf.project.model.ProjectVO;

//프로젝트 올리기 페이지 보여줌
public class ProjectUploadController implements Controller{

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		//세션정보 
		HttpSession session=request.getSession();
		String name=(String)session.getAttribute("name");
		String email=(String)session.getAttribute("email");
		int memberNo=(int)session.getAttribute("memberNo");
		
		//프로젝트번호 넘겨받고 출력하기
		ProjectService service = new ProjectService();
		
		ProjectVO vo = null;
		String projectNo = null;
		try {
			//프로젝트
			projectNo = service.selectProjectNo(memberNo);
			
			if(projectNo!=null && !projectNo.isEmpty()) {
				vo=service.selectByProjNo(projectNo);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		//String fileInfo=Utility.getFileInfo(vo.getOriginalFileName(), vo.getFileSize());
	    String displayFileName=Utility.displayFile(vo.getFileName());
		String oldFileName=vo.getFileName();
		if(oldFileName==null) oldFileName="";

		System.out.println("ProjectUploadController 현재 vo="+vo);
		
		//결과저장
		request.setAttribute("name", name);
		request.setAttribute("email", email);
		request.setAttribute("vo", vo);
		request.setAttribute("projectNo", projectNo);
		//request.setAttribute("fileInfo", fileInfo);
		request.setAttribute("displayFileName", displayFileName);
		request.setAttribute("oldFileName", oldFileName);
		
		return "/projectManager/projectUpload.jsp";
	}

	@Override
	public boolean isRedirect() {
		return false;
	}

}
