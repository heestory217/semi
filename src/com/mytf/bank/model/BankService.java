package com.mytf.bank.model;

import java.sql.SQLException;

public class BankService {
	private BankDAO bDao;
	public static final int USABLE_ACC=1;
	public static final int NOT_USABLE_ACC=2;
	public static final int MYACCOUNT=1;
	public static final int NOT_MYACCOUNT=2;
	
	public BankService() {
		bDao=new  BankDAO();
	}
	
	public BankVO selectByMemberNo(int memberNo) throws SQLException {
		return bDao.selectByMemberNo(memberNo);
		
	}
	public int insertBank(BankVO bVo) throws SQLException {
		return bDao.insertBank(bVo);
	}
	
	public int updateBank(BankVO bVo) throws SQLException {
		return bDao.updateBank(bVo);
	}
	
	//계좌번호 중복체크
	public int accountCheck(String accountNum) throws SQLException {
		return bDao.accountCheck(accountNum);
	}

	//중복되는 계좌번호가 내꺼냐?
	public int isMine(String accountNum, int memberNo ) throws SQLException {
		return bDao.isMine(accountNum, memberNo);
	}
	

	//회원번호로 계좌번호 존재하는지 체크
	public boolean hasAccount(int memberNo) throws SQLException {
		return bDao.hasAccount(memberNo);
	}
	
	
	//계좌삭제
	public int deleteAccount(String accountNum, int memberNo) throws SQLException {
		return bDao.deleteAccount(accountNum, memberNo);
	}
		
		
}
