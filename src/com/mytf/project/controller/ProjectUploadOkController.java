package com.mytf.project.controller;

import java.io.File;
import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.controller.Controller;
import com.mytf.common.Utility;
import com.mytf.project.model.ProjectService;
import com.mytf.project.model.ProjectVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class ProjectUploadOkController implements Controller {

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		//세션정보 가져오기
		HttpSession session=request.getSession();
		int memberNo=(int)session.getAttribute("memberNo");
		System.out.println("현재 memberNo : "+memberNo);
		
		String projectNo = null;
		try {
			//파일 업로드 처리
			String saveDir=request.getServletContext().getRealPath(Utility.THUMBNAIL_UPLOAD_DIR);
			saveDir=Utility.THUMBNAIL_DIR;
			int maxSize=10*1024*1024;

			//1
			MultipartRequest mr= new MultipartRequest(request, saveDir, maxSize, "utf-8", new DefaultFileRenamePolicy());
			System.out.println("파일업로드 완료!");
			String fileName=mr.getFilesystemName("upfile");

			String originalFileName="";
			long fileSize=0;
			
			if(fileName!=null&&!fileName.isEmpty()) {
				originalFileName=mr.getOriginalFileName("upfile");
				fileSize=(mr.getFile("upfile")).length();
			}

			//파라미터
			projectNo = mr.getParameter("projectNo");
			String projectName = mr.getParameter("projectName");
			String projectDetail = mr.getParameter("projectDetail");
			String ctNo = mr.getParameter("ctNo");
			String oldfileName=mr.getParameter("oldfileName");
			
			System.out.println("Ok 현재 projectNo : "+projectNo);
			
			//2 폼태그 pjUploadFrm - 프로젝트 개요 update
			ProjectService service = new ProjectService();
			
			ProjectVO vo = new ProjectVO();
			vo.setCtNo(Integer.parseInt(ctNo));
			vo.setFileName(fileName);
			vo.setFileSize(fileSize);
			vo.setOriginalFileName(originalFileName);
			vo.setProjectDetail(projectDetail);
			vo.setProjectName(projectName);
			vo.setProjectNo(projectNo);
			vo.setMemberNo(memberNo);
			
			//개요 update
			int cnt=service.updateProjectBasic(vo);

			if(cnt>0) {
				//파일이름이 있는 경우, 기존파일객체생성해서 유무 확인 후 지우기
				if(fileName!=null&&!fileName.isEmpty()) {
					File oldFile= new File(saveDir, oldfileName);
					if(oldFile.exists()) {
						session.setAttribute("fileName", fileName);//old파일 존재하면 세션에 파일네임셋팅 새로하기
						boolean bool=oldFile.delete();
						System.out.println("기존파일 삭제여부"+bool);
					}
				}
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}catch (IOException e) {
			e.printStackTrace();
			System.out.println("10M 이상의 파일. Error");
			request.setAttribute("msg", "10M이상의 파일은 업로드할 수 없습니다.");
			request.setAttribute("url", "/projectManager/projectUpload.do");
			return "/common/message";
		}
		return "/projectManager/projectUpload.do?projectNo="+projectNo;
	}

	@Override
	public boolean isRedirect() {
		return true;
	}

}

//업데이트 파라미터 
/*
		String goalAmount = request.getParameter("goalAmount");
		String opendate = request.getParameter("opendate");
		String duedate = request.getParameter("duedate");
		String projectStory = request.getParameter("projectStory");
		String projectPolicy = request.getParameter("projectPolicy");
		String giftInfo = request.getParameter("giftInfo");
 */
//프로젝트 업데이트 정보
/*
				vo.setDuedate(Timestamp.valueOf(duedate));
				vo.setGiftInfo(giftInfo);
				vo.setGoalAmount(Integer.parseInt(goalAmount));
				vo.setOpendate(Timestamp.valueOf(opendate));
				vo.setProjectPolicy(projectPolicy);
				vo.setProjectStory(projectStory);

				int update = service.updateProject(vo);

				if(update>0) {
					System.out.println("업데이트 성공");
				}
			}*/