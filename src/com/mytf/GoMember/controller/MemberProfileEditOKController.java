package com.mytf.GoMember.controller;

import java.io.File;
import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.controller.Controller;
import com.mytf.GoMember.model.GoMemberService;
import com.mytf.GoMember.model.GoMemberVO;
import com.mytf.common.Utility;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class MemberProfileEditOkController implements Controller{

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		HttpSession session=request.getSession();
		String email=(String)session.getAttribute("email");
		String projectNo = request.getParameter("projectNo");

		String msg="프로필 수정 실패!", url="/projectManager/projectUpload.do?projectNo="+projectNo;
		
		GoMemberVO gVo=null;
		GoMemberService gService = new GoMemberService();
		try {
			//oldFileName 얻어오기
			gVo=gService.selectByEmail(email);
			String oldFileName=gVo.getFileName();
			if(oldFileName==null) oldFileName="";
			
			String saveDir=request.getServletContext().getRealPath(Utility.UPLOAD_DIR);
			saveDir=Utility.HEE_DIR;
			int maxSize=10*1024*1024;

			//1
			MultipartRequest mr= new MultipartRequest(request, saveDir, maxSize, "utf-8", new DefaultFileRenamePolicy());
			System.out.println("파일업로드 완료!");
			String fileName=mr.getFilesystemName("upfile");
			/* session.setAttribute("fileName", fileName); */

			String originalFileName="";
			long fileSize=0;
			if(fileName!=null&&!fileName.isEmpty()) {
				originalFileName=mr.getOriginalFileName("upfile");
				fileSize=(mr.getFile("upfile")).length();
			}
			
			//파라미터
			String oldfileName=mr.getParameter("oldfileName");
			String memberIntro=mr.getParameter("memberIntro");

			gVo= new GoMemberVO();

			gVo.setEmail(email);
			gVo.setMemberIntro(memberIntro);
			gVo.setFileName(fileName);
			gVo.setFileSize(fileSize);
			gVo.setOriginalFileName(originalFileName);

			int cnt=gService.updateGoMemberProfile(gVo);

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

				msg="창작자 프로필 수정성공!";
				url="/projectManager/projectUpload.do?projectNo="+projectNo;
			}
		}catch (SQLException e) {
			e.printStackTrace();
		}catch (IOException e) {
			e.printStackTrace();
			System.out.println("10M 이상의 파일. Error");
			msg="10M이상의 파일은 업로드할 수 없습니다.";
			url="/projectManager/projectUpload.do?projectNo="+projectNo;
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
