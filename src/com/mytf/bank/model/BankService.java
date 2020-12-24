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
	
	

}
