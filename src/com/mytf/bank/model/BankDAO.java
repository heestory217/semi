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
	//회원번호로 조회
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
			System.out.println("계좌조회결과="+bVo+",매개변수 memberNo="+memberNo);
			return bVo;
		} finally {
			pool.dbClose(rs, ps, con);
		}
	}
	//계좌 등록
	public int insertBank(BankVO bVo) throws SQLException {
			Connection con=null;
			PreparedStatement ps=null;
			
			try {
				//1,2
				con=pool.getConnection();
				//3
				String sql="insert into bank(bankNo, businessFlag,bankName, accountNum, ownerName, ownerBirth, MemberNo)\r\n" + 
						"values(bankNo_seq.nextval,?,?,?,?,?,?)";
				ps=con.prepareStatement(sql);
				ps.setString(1, bVo.getBusinessFlag());
				ps.setString(2, bVo.getBankName());
				ps.setString(3, bVo.getAccountNum());
				ps.setString(4, bVo.getOwnerName());
				ps.setString(5, bVo.getOwnerBirth());
				ps.setInt(6, bVo.getMemberNo());
				//4
				int cnt=ps.executeUpdate();
				System.out.println("계좌정보 입력 결과 cnt="+cnt+", 매개변수bVo"+bVo);
				return cnt;
				
			} finally {
				pool.dbClose(ps, con);
			}
		}
	//계좌 업뎃
	public int updateBank(BankVO bVo) throws SQLException {
			Connection con=null;
			PreparedStatement ps=null;
			
			try {
				//1,2
				con=pool.getConnection();
				//3
				String sql="update bank \r\n" + 
						"set businessFlag=?,bankName=?, accountNum=?, ownerName=?, ownerBirth=?  \r\n" + 
						"where memberNo=?";
				ps=con.prepareStatement(sql);
				ps.setString(1, bVo.getBusinessFlag());
				ps.setString(2, bVo.getBankName());
				ps.setString(3, bVo.getAccountNum());
				ps.setString(4, bVo.getOwnerName());
				ps.setString(5, bVo.getOwnerBirth());
				ps.setInt(6, bVo.getMemberNo());
				
				//4
				int cnt=ps.executeUpdate();
				System.out.println("계좌 업데이트 결과 cnt="+cnt+", 매개변수="+bVo);
				
				return cnt;
			} finally {
				pool.dbClose(ps, con);
			}
		}
	
	
	//계좌번호 중복체크
	public int accountCheck(String accountNum) throws SQLException {
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		int cnt=0;
		int result=0;
		
		try {
		//1,2
		con=pool.getConnection();	
		//3
		String sql="select count(*) from bank where accountNum=?";
		ps=con.prepareStatement(sql);
		ps.setString(1, accountNum);
		
		//4
		rs=ps.executeQuery();
		if(rs.next()) {
			 cnt=rs.getInt(1);
		}
		
		if(cnt>0) {
			result=BankService.NOT_USABLE_ACC;
		}else {
			result=BankService.USABLE_ACC;
		}
		
		System.out.println("조회결과 cnt="+cnt+", 매개변수 accountNum"+accountNum);
		return result;
			
		} finally {
			pool.dbClose(rs, ps, con);
			
		}
	
	}
	
	
	//중복되는 계좌번호가 내꺼냐?
	public int isMine(String accountNum, int memberNo ) throws SQLException {
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		int cnt=0;
		int result=0;
		
		try {
		//12
			con=pool.getConnection();
		//3
			String sql="select count(*) from bank where accountNum= ? and memberNo= ? ";
			ps=con.prepareStatement(sql);
			ps.setString(1, accountNum);
			ps.setInt(2, memberNo);
			
		//4
			rs=ps.executeQuery();
			if(rs.next()) {
				cnt=rs.getInt(1);
			}
			
			if(cnt>0) {
				result=BankService.MYACCOUNT;
			}else {
				result=BankService.NOT_MYACCOUNT;
			}
			return result;
		} finally {
			pool.dbClose(rs, ps, con);
		}
	}
	
	//회원번호로 계좌번호 존재하는지 체크
		public boolean hasAccount(int memberNo) throws SQLException {
			Connection con=null;
			PreparedStatement ps=null;
			ResultSet rs=null;
			boolean isExist= false;
			try {
				//12
				con=pool.getConnection();
				//3
				String sql="select bankNo from bank where memberNo=?";
				ps=con.prepareStatement(sql);
				ps.setInt(1, memberNo);
				//4
				rs=ps.executeQuery();
				if(rs.next()) {
					String bankNo=rs.getString("bankNo");
					isExist=true;
				}
				System.out.println("조회결과 esExist="+isExist+", 매개변수="+memberNo);
				return isExist;
			} finally {
				pool.dbClose(rs, ps, con);
			}
		}
		
	//계좌삭제
	public int deleteAccount(String accountNum) throws SQLException {
		Connection con=null;
		PreparedStatement ps=null;
		
		try {
			//1,2
			con=pool.getConnection();
			
			//3
			String sql="delete from bank where memberNo=? ";
			ps=con.prepareStatement(sql);
			ps.setString(1, accountNum);
			//4
			int cnt=ps.executeUpdate();
			System.out.println("계좌삭제 결과cnt="+cnt+", 매개변수 accountNum="+accountNum);
			return cnt;
		} finally {
			pool.dbClose(ps, con);
		}
	}

}
