package com.mytf.project.controller;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.controller.Controller;
import com.mytf.bank.model.BankService;
import com.mytf.bank.model.BankVO;

//프로젝트에서 계좌입력
public class ProjectUploadLastOkController implements Controller{
	int result1=0;
	int result2=0;
	boolean isExsist=false;

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		//1 파라미터
		HttpSession session=request.getSession();
		int memberNo=(int)session.getAttribute("memberNo");

		String projectNo=request.getParameter("projectNo");
		String businessFlag=request.getParameter("businessFlag");
		String bankName=request.getParameter("bankName");
		String accountNum=request.getParameter("accountNum");
		String ownerName=request.getParameter("ownerName");
		String ownerBirth=request.getParameter("ownerBirth");

		BankService bService=new BankService();
		BankVO bVo=new BankVO();

		String bankNo=null;
		//bankNo가 널이 아니면 파라미터도 받고 인티저로 바꺼서 bvo에 셋팅해라
		if((request.getParameter("bankNo")!=null)&&!(request.getParameter("bankNo").isEmpty())) {
			bankNo=request.getParameter("bankNo");
			bVo.setBankNo(Integer.parseInt(bankNo));
		}		
		bVo.setBusinessFlag(businessFlag);
		bVo.setBankName(bankName);
		bVo.setAccountNum(accountNum);
		bVo.setOwnerName(ownerName);
		bVo.setOwnerBirth(ownerBirth);
		bVo.setMemberNo(memberNo);

		//2 계좌번호중복체크, 계좌번호 있으면 업뎃, 없으면 insert 
		String msg="계좌번호 수정에 실패했습니다.", url="/projectManager/projectUpload4.do?projectNo="+projectNo;
		try {
			//중복체크를 한다. result1의 결과가 중복되는 계좌가 있다면 
			//result2에서 그 계좌가 내 계좌과 아니라면 되돌아가라 
			result1=bService.accountCheck(accountNum);
			if(result1==BankService.NOT_USABLE_ACC) {

				result2=bService.isMine(accountNum, memberNo);
				if(result2==BankService.NOT_MYACCOUNT) {

					request.setAttribute("msg", "중복되는 계좌번호가 있습니다.");
					request.setAttribute("url", "/projectManager/projectUpload4.do?projectNo="+projectNo);
					return "/common/message.jsp";
				}
			}
			//회원번호로 bankNo가 있는지 찾겠다.=> 히든에 잇는 bankNo가 null이면 인서트해라
			
			int cnt=0;
			if(bankNo==null) {
				cnt=bService.insertBank(bVo);
			}else{
				cnt=bService.updateBank(bVo);
			}
			
			if(cnt>0) {
				request.setAttribute("msg", "계좌정보 등록성공! ※회원정보 수정페이지에서 프로필 이미지등록 및 창작자님의 이력과 간단한 소개를 써 주세요.");
				request.setAttribute("url", "/GoMember/memberEdit.do");
				return "/common/message.jsp";
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		//3 결과저장
		request.setAttribute("bVo", bVo);

		//4 뷰페이지 리턴
		return "/projectManager/projectUpload4.do?projectNo="+projectNo;
	}

	@Override
	public boolean isRedirect() {
		return false;
	}

}
