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
import com.mytf.bank.model.BankService;
import com.mytf.bank.model.BankVO;
import com.mytf.common.Utility;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;


public class MemberEditOkController implements Controller{
	private GoMemberService gService;
	
	public MemberEditOkController() {
		gService=new GoMemberService();
	}

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session=request.getSession();
		String name=(String)session.getAttribute("name");
		String email=(String)session.getAttribute("email");
		
		String msg="회원정보 수정 실패!", url="/GoMember/memberEdit.do";

		try {
		String saveDir=request.getServletContext().getRealPath(Utility.UPLOAD_DIR);
		saveDir=Utility.TEST_DIR;
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
		
		String memberNo=mr.getParameter("memberNo");
		String oldfileName=mr.getParameter("oldfileName");
		String pwd=mr.getParameter("pwd");
		String pwdOrigin=mr.getParameter("pwdOrigin");
		if(pwd==null||pwd.isEmpty()) {
			pwd=pwdOrigin;
		}
		
		String hp=mr.getParameter("hp");
		String memberIntro=mr.getParameter("memberIntro");
		String address1=mr.getParameter("address1");
		String address2=mr.getParameter("address2");
		String address3=mr.getParameter("address3");
		String address=address1+"|"+address2+"|"+address3;
		
		
		GoMemberVO gVo= new GoMemberVO();
		gVo.setMemberNo(Integer.parseInt(memberNo));
		gVo.setName(name);
		gVo.setEmail(email);
		gVo.setPwd(pwd);
		gVo.setHp(hp);
		gVo.setMemberIntro(memberIntro);
		gVo.setAddress(address);
		gVo.setFileName(fileName);
		gVo.setFileSize(fileSize);
		gVo.setOriginalFileName(originalFileName);
		
			int cnt=gService.updateGoMember(gVo);
			
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
				
				msg="회원정보 수정성공!";
				url="/GoMember/memberPage.do";
			}
		}catch (SQLException e) {
			e.printStackTrace();
		}catch (IOException e) {
			e.printStackTrace();
			System.out.println("10M 이상의 파일. Error");
			msg="10M이상의 파일은 업로드할 수 없습니다.";
			url="/GoMember/memberEdit.do";
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
