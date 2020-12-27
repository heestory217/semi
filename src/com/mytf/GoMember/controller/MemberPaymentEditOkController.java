package com.mytf.GoMember.controller;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.controller.Controller;
import com.mytf.bank.model.BankService;
import com.mytf.bank.model.BankVO;

public class MemberPaymentEditOkController implements Controller {
	private BankService bService;
	int result1=0;
	int result2=0;
	boolean isExsist=false;
	
	public MemberPaymentEditOkController() {
		bService=new BankService();
	}

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		//1 파라미터
		HttpSession session=request.getSession();
		int memberNo=(int)session.getAttribute("memberNo");
		
		
		String businessFlag=request.getParameter("eBusinessFlag");
		String bankName=request.getParameter("eBankName");
		String accountNum=request.getParameter("eAccountNum");
		String ownerName=request.getParameter("eOwnerName");
		String ownerBirth=request.getParameter("eOwnerBirth");
		
		
		BankVO bVo=new BankVO();
		String bankNo=null;
		
		//bankNo가 널이 아니면 파라미터도 받고 인티저로 바꺼서 bvo에 셋팅해라
		if((request.getParameter("eBankNo")!=null)&&!(request.getParameter("eBankNo").isEmpty())) {
			bankNo=request.getParameter("eBankNo");
			bVo.setBankNo(Integer.parseInt(bankNo));
		}		
		bVo.setBusinessFlag(businessFlag);
		bVo.setBankName(bankName);
		bVo.setAccountNum(accountNum);
		bVo.setOwnerName(ownerName);
		bVo.setOwnerBirth(ownerBirth);
		bVo.setMemberNo(memberNo);
		
		//2 계좌번호중복체크, 계좌번호 있으면 업뎃, 없으며 insert 
		String msg="계좌번호 수정에 실패했습니다.", url="/GoMember/memberPaymentEdit.do";
		try {
			//중복체크를 한다. result1의 결과가 중복되는 계좌가 있다면 
			//result2에서 그 계좌가 내 계좌과 아니라면 되돌아가라 
			result1=bService.accountCheck(accountNum);
			if(result1==BankService.NOT_USABLE_ACC) {
				result2=bService.isMine(accountNum, memberNo);
				if(result2==BankService.NOT_MYACCOUNT) {
					msg="중복되는 계좌번호가 있습니다.";
					url="/GoMember/memberPaymentEdit.do";
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
				msg="계좌정보 업데이트 성공!";
				url="/GoMember/memberPage.do";
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		//3 결과저장
		request.setAttribute("msg", msg);
		request.setAttribute("url", url);
		
		//4 뷰페이지 리턴
		return "/common/message.jsp";
	}

	@Override
	public boolean isRedirect() {
		return false;
	}

	
	
}
