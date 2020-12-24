package com.mytf.bank.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mytf.db.ConnectionPoolMgr2;

public class BankDAO {
	private ConnectionPoolMgr2 pool;
	
	public BankDAO() {
		pool=new ConnectionPoolMgr2();
	} 
	
	public BankVO selectByMemberNo(int memberNo) throws SQLException {
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		
		try {
			//1,2 
			con=pool.getConnection();
			
			//3.
			String sql="select * from bank where memberNo=?";
			ps=con.prepareStatement(sql);
			ps.setInt(1, memberNo);
			//4.
			
			BankVO bVo=null;
			rs=ps.executeQuery();
			while(rs.next()) {
				int bankNo=rs.getInt("bankNo");
				String businessFlag=rs.getString("businessFlag");
				String bankName=rs.getString("bankName");
				String accountNum=rs.getString("accountNum");
				String ownerName=rs.getString("ownerName");
				String ownerBirth=rs.getString("ownerBirth");
				memberNo=rs.getInt("memberNo");
				
				bVo=new BankVO(bankNo, businessFlag, bankName, accountNum, ownerName, ownerBirth, memberNo);
			}
			System.out.println("계좌조회결과="+bVo+"매개변수="+memberNo);
			return bVo;
		} finally {
			pool.dbClose(rs, ps, con);
		}
		
				
	}
	

}
