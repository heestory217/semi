package com.mytf.detail.model;

import java.sql.SQLException;

public class GoMemberService_Add {
	private GOMemberDAO_Add goDao;
	public GoMemberService_Add() {
		goDao=new GOMemberDAO_Add();
	}
	
	public GoMemberVO_Add selectMemberByPojectNo(String projectNo) throws SQLException {
		return goDao.selectMemberByPojectNo(projectNo);
}

}
