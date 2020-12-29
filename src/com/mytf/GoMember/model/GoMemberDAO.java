package com.mytf.GoMember.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;

import com.mytf.db.ConnectionPoolMgr2;

public class GoMemberDAO {
	private ConnectionPoolMgr2 pool;

	public GoMemberDAO() {
		pool=new ConnectionPoolMgr2();
	}

	//이메일 중복확인
	public int CheckEmail(String email) throws SQLException {
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;

		try {
			//1,2
			con=pool.getConnection();
			//3
			String sql="select count(*) from GoMember where email=?";
			ps=con.prepareStatement(sql);
			ps.setString(1, email);

			//4	
			rs=ps.executeQuery();
			int result=0;
			if(rs.next()) {
				int cnt=rs.getInt(1);
				if(cnt>0) {
					result=GoMemberService.EXIST_EMAIL;
				}else {
					result=GoMemberService.USEABLE_EMAIL;
				}
			}
			System.out.println("이메일 중복 확인 결과="+result+"매개변수"+email);
			return result;

		} finally {
			pool.dbClose(rs, ps, con);
		}

	}

	//회원가입
	public int insertGoMember(GoMemberVO gVo) throws SQLException {
		Connection con=null;
		PreparedStatement ps=null;

		try {
			//1,2 
			con=pool.getConnection();
			//3
			String sql="insert into GoMember(memberNO, name, email, pwd) \r\n" + 
					"values(memberNo_seq.nextval,?,?,?)";
			ps=con.prepareStatement(sql);
			ps.setString(1, gVo.getName());
			ps.setString(2, gVo.getEmail());
			ps.setString(3, gVo.getPwd());
			//4	
			int cnt= ps.executeUpdate();
			System.out.println("회원가입 결과"+cnt+"매개변수"+gVo);
			return cnt;
		} finally {
			pool.dbClose(ps, con);
		}
	}

	//로그인(탈퇴 안 한 회원만!)
	public int loginCheck(String email, String pwd) throws SQLException {
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		int result=0;

		try {
			//1,2
			con=pool.getConnection();
			//3
			String sql="select pwd from GoMember where email=? and outdate is null";
			ps=con.prepareStatement(sql);
			ps.setString(1, email);

			//4
			rs=ps.executeQuery();
			if(rs.next()) {
				String dbPwd=rs.getString("pwd");
				if(dbPwd.contentEquals(pwd)) {
					result=GoMemberService.LOGIN_OK;
				}else {
					result=GoMemberService.PW_DISAGREE;
				}
			}else {
				result=GoMemberService.EMAIL_NONE;
			}

			//5
			System.out.println("로그인 처리결과="+result+"매개변수"+email+","+pwd);
			return result;

		} finally {
			pool.dbClose(rs, ps, con);
		}		
	}

	//로그인 이메일로 회원정보 조회
	public GoMemberVO selectByEmail(String email) throws SQLException {
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		GoMemberVO gVo=null;
		try {
			//1,2
			con=pool.getConnection();
			//3
			String sql="select* from GoMember where email=?";
			ps=con.prepareStatement(sql);
			ps.setString(1, email);
			//4

			rs=ps.executeQuery();

			while(rs.next()) {
				int memberNo=rs.getInt("memberNo");
				String name=rs.getString("name");
				email=rs.getString("email");
				String pwd=rs.getString("pwd");
				String hp=rs.getString("hp");
				String memberIntro=rs.getString("memberIntro");
				String address=rs.getString("address");
				Timestamp joindate= rs.getTimestamp("joindate");
				Timestamp outdate= rs.getTimestamp("outdate");
				String sellerFlag=rs.getString("sellerFlag");
				String fileName=rs.getString("fileName");
				long fileSize=rs.getLong("fileSize");
				String originalFileName=rs.getString("originalFileName");
				gVo= new GoMemberVO(memberNo, name, email, pwd, hp, memberIntro, address, joindate, outdate, sellerFlag, fileName, fileSize, originalFileName);

			}				
			//5
			System.out.println("회원조회결과 gVo="+gVo+"매개변수 email="+email);
			return gVo;
		} finally {
			pool.dbClose(rs, ps, con);
		}

	}


	public int updateGoMember(GoMemberVO gVo) throws SQLException {
		Connection con=null;
		PreparedStatement ps=null;

		try {
			//1,2
			con=pool.getConnection();
			//3
			String sql="update Gomember\r\n" + 
					"set pwd=?,hp=?,memberIntro=?,address=? ," + 
					"fileName=?,fileSize=?,originalFileName=? " + 
					"where email=?";
			ps=con.prepareStatement(sql);
			ps.setString(1,gVo.getPwd());
			ps.setString(2,gVo.getHp());
			ps.setString(3,gVo.getMemberIntro());
			ps.setString(4,gVo.getAddress());
			ps.setString(5,gVo.getFileName());
			ps.setLong(6,gVo.getFileSize());
			ps.setString(7,gVo.getOriginalFileName());
			ps.setString(8,gVo.getEmail());

			//4
			int cnt=ps.executeUpdate();
			System.out.println("회원 업데이트 결과 cnt="+cnt+"매개변수 gVO="+gVo);
			return cnt;
		} finally {
			pool.dbClose(ps, con);
		}
	}

	public int updateNewPW(GoMemberVO gVo) throws SQLException {
		Connection con=null;
		PreparedStatement ps=null;
		
		try {
		//1,2
			con=pool.getConnection();
		//3
			String sql="update Gomember set pwd=? where email=?";
			ps=con.prepareStatement(sql);
			ps.setString(1, gVo.getPwd());
			ps.setString(2, gVo.getEmail());
		//4	
			int cnt=ps.executeUpdate();
			
			System.out.println("비밀번호 변경결과 cnt="+cnt+", 매개변수 email="+gVo.getEmail()+", pwd="+gVo.getPwd());
			return cnt;
		} finally {
			pool.dbClose(ps, con);
		}
		
	}
	
	//탈퇴!
	public int GoMemberOut(String email) throws SQLException {
		Connection con=null;
		PreparedStatement ps=null;
		
		try {
			//12
			con=pool.getConnection();
			//3
			String sql="update GoMember set outdate=sysdate where email=?";
			ps=con.prepareStatement(sql);
			ps.setString(1, email);
			//4
			int cnt=ps.executeUpdate();
			System.out.println("회원 탈퇴 결과 cnt="+cnt+", 매개변수 email="+email);
			return cnt;
			
		} finally {
			pool.dbClose(ps, con);
		}
	}
	
}
