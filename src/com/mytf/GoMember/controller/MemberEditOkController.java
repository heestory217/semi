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
	private BankService bService;
	
	
	public MemberEditOkController() {
		gService=new GoMemberService();
		bService=new BankService();
	}

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse response) {
		
		String saveDir=request.getServletContext().getRealPath(Utility.UPLOAD_DIR);
		saveDir=Utility.TEST_DIR;
		int maxSize=10*1024*1024;
		HttpSession session=request.getSession();
		String name=(String)session.getAttribute("name");
		String email=(String)session.getAttribute("email");
		
		String msg="회원정보 수정 실패!", url="/GoMember/memberEdit.do";
		//1
		try {
		MultipartRequest mr= new MultipartRequest(request, saveDir, maxSize, "utf-8", new DefaultFileRenamePolicy());
		System.out.println("파일업로드 완료!");
		String fileName=mr.getFilesystemName("upfile");
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
		String address=mr.getParameter("address");
		
		String bankNo=mr.getParameter("bankNo");
		String businessFlag=mr.getParameter("businessFlag");
		String bankName=mr.getParameter("bankName");
		String accountNum=mr.getParameter("accountNum");
		String ownerName=mr.getParameter("ownerName");
		String ownerBirth=mr.getParameter("ownerBirth");
		
		//2 회원정보는 업뎃, 은행정보는 인서트/혹은 업뎃
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
		
		BankVO bVo=new BankVO();
		bVo.setBankNo(Integer.parseInt(bankNo));
		bVo.setBusinessFlag(businessFlag);
		bVo.setBankName(bankName);
		bVo.setAccountNum(accountNum);
		bVo.setOwnerName(ownerName);
		bVo.setOwnerBirth(ownerBirth);
		bVo.setMemberNo(Integer.parseInt(memberNo));
		
		
			//은행계좌 유무로 에딧에서 유효성체크하고, 
			//에딧 오케이에서 계좌값이 있으면 insert/update로 구분! 
			int cnt1=gService.updateGoMember(gVo);
			int cnt2=0;
			
			if(cnt1>0) {
				//파일이름이 있는 경우, 기존파일객체생성해서 유무 확인 후 지우기
				if(fileName!=null&&!fileName.isEmpty()) {
					File oldFile= new File(saveDir, oldfileName);
					if(oldFile.exists()) {
						boolean bool=oldFile.delete();
						System.out.println("기존파일 삭제여부"+bool+""+businessFlag);
					}
				}
				
				//회원정보고 정상적으로 업뎃된 경우에만 계좌처리 진행
				if(accountNum!=null&&!accountNum.isEmpty()) {				
					if(bankNo==null||bankNo.isEmpty()) {
						cnt2=bService.insertBank(bVo);
					}else {
						cnt2=bService.updateBank(bVo);
					}
					
					if(cnt2>0) {
						msg="회원정보 수정성공!";
						url="/GoMember/memberPage.do";
					}else {//??트랜잭션해야하나 고민
						msg="회원정보 수정성공, 계좌정보 수정실패!";
						url="/GoMember/memberEdit.do";
					}
					
				}
				
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}catch (IOException e) {
			e.printStackTrace();
			System.out.println("10M 이상의 파일. Error");
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
