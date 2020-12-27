package com.mytf.project.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;

import com.mytf.db.ConnectionPoolMgr2;

public class ProjectDAO {
	private ConnectionPoolMgr2 pool;
	
	public ProjectDAO() {
		pool = new ConnectionPoolMgr2();
	}
	
	public int insertProject(ProjectVO vo) throws SQLException {
		Connection con=null;
		PreparedStatement ps=null;
		
		try {
			//1, 2
			con=pool.getConnection();
			
			//3.ps
			String sql="insert into project(projectno, projectname, projectdetail,ctno,memberno) " + 
					" values('PJ00'||projectNo_seq.nextval,?,?,?,?)";
			ps=con.prepareStatement(sql);
			
			ps.setString(1, vo.getProjectName());
			ps.setString(2, vo.getProjectDetail());
			ps.setInt(3, vo.getCtNo());
			ps.setInt(4, vo.getMemberNo());
			
			//4. exec
			int cnt=ps.executeUpdate();
			System.out.println("기본 프로젝트 등록 결과 cnt="+cnt+", 매개변수 vo="+vo);
			
			return cnt;
		}finally {
			pool.dbClose(ps, con);
		}
	}
	
	/*
	public int updateProject(ProjectVO vo) throws SQLException {
		Connection con=null;
		PreparedStatement ps=null;
		
		try {
			//1, 2
			con=pool.getConnection();
			
			//3.ps
			String sql="update project " + 
					" set projectname=?, projectdetail=?, ctno=?" + 
					" where projectNo=?";
			ps=con.prepareStatement(sql);
			
			ps.setString(1, vo.getProjectName());
			ps.setString(2, vo.getProjectDetail());
			ps.setInt(3, vo.getCtNo());
			ps.setInt(4, vo.getMemberNo());
			
			//4. exec
			int cnt=ps.executeUpdate();
			System.out.println("프로젝트 업데이트 결과 cnt="+cnt+", 매개변수 vo="+vo);
			
			return cnt;
		}finally {
			pool.dbClose(ps, con);
		}
	}
	*/
	
	public ProjectVO selectByProjNo(String projectNo) throws SQLException {
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		
		ProjectVO vo = null;
		try {
			//1, 2
			con=pool.getConnection();
			
			//3.ps
			String sql="select * from project where projectno=?";
			ps=con.prepareStatement(sql);
			ps.setString(1, projectNo);
			
			//4. exec
			rs=ps.executeQuery();
			while(rs.next()) {
				String projectNo2 =rs.getString("projectNo");
				String projectName=rs.getString("projectName");
				String projectDetail=rs.getString("projectDetail");
				String fileName=rs.getString("fileName");
				long fileSize=rs.getLong("fileSize");
				String originalFileName=rs.getString("originalFileName");
				int ctNo=rs.getInt("ctNo");
				int memberNo=rs.getInt("memberNo");
				int goalAmount=rs.getInt("goalAmount");
				Timestamp opendate=rs.getTimestamp("opendate");
				Timestamp duedate=rs.getTimestamp("duedate");
				String projectPolicy=rs.getString("projectPolicy");
				String giftInfo=rs.getString("giftInfo");
				String projectStory=rs.getString("projectStory");
				int readCount=rs.getInt("readCount");
				
				vo = new ProjectVO(projectNo2, projectName, projectDetail, fileName, fileSize, 
						originalFileName, ctNo, memberNo, goalAmount, opendate, duedate, 
						projectPolicy, giftInfo, projectStory, readCount);
			}
			System.out.println("프로젝트 조회 결과 vo="+vo+"\n, 매개변수 projectNo="+projectNo);
			
			return vo;
		}finally {
			pool.dbClose(rs, ps, con);
		}
	}
	
	public String selectProjectNo(ProjectVO vo) throws SQLException {
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		
		try {
			//1, 2
			con=pool.getConnection();
			
			//3.ps
			String sql="select projectno from project " + 
					" where memberno=? and projectname=? and projectdetail=? and ctno=?";
			ps=con.prepareStatement(sql);
			
			ps.setInt(1, vo.getMemberNo());
			ps.setString(2, vo.getProjectName());
			ps.setString(3, vo.getProjectDetail());
			ps.setInt(4, vo.getCtNo());
			
			//4. exec
			String projectNo = null;
			rs=ps.executeQuery();
			if(rs.next()) {
				projectNo=rs.getString(1);
			}
			System.out.println("조회한 프로젝트번호 projectNo="+projectNo+"\n, 매개변수 vo="+vo);
			
			return projectNo;
		}finally {
			pool.dbClose(rs, ps, con);
		}
	}
	
	
	
}
