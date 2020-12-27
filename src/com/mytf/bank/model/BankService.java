package com.mytf.bank.model;

import java.sql.SQLException;

public class BankService {
	private BankDAO bDao;

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
	
	

}
