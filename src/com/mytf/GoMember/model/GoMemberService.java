package com.mytf.GoMember.model;

import java.sql.SQLException;

public class GoMemberService {
	private GoMemberDAO gDao;
	public static final int USEABLE_EMAIL=1;
	public static final int EXIST_EMAIL=2;
	
	public static final int LOGIN_OK=1;
	public static final int PW_DISAGREE=2;
	public static final int EMAIL_NONE=3;
	
	
	public GoMemberService() {
		gDao=new GoMemberDAO();
	}
	
	public int insertGoMember(GoMemberVO gVo) throws SQLException {
		return gDao.insertGoMember(gVo);
	}
	
	public int CheckEmail(String email) throws SQLException {
		return gDao.CheckEmail(email);
	}
	
	public int loginCheck(String email, String pwd) throws SQLException {
		return gDao.loginCheck(email, pwd);
	}
	
	public GoMemberVO selectByEmail(String email) throws SQLException {
		return gDao.selectByEmail(email);
	}
	
		
}
