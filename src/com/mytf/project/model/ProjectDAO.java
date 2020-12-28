package com.mytf.project.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

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
			pool.dbClose(ps, con);
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
			pool.dbClose(ps, con);
		}
	}
	
	/*가은*/
	/*메인화면 프로젝트 2종류(주목할만한,성공임박 프로젝트)*/
	public ArrayList<ProjectVO> selectByProjMain() throws SQLException {
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		
		ArrayList<ProjectVO> list = new ArrayList<ProjectVO>();
		ProjectVO vo = null;
		try {
			//1, 2
			con=pool.getConnection();
			
			//3.ps
			StringBuffer sql = new StringBuffer()
			.append(" SELECT  \n ")
			.append(" PROJECTNO, PROJECTNAME, PROJECTDETAIL,  \n ")
			.append(" FILENAME, FILESIZE, ORIGINALFILENAME,  \n ")
			.append(" CTNO, MEMBERNO, GOALAMOUNT,  \n ")
			.append(" OPENDATE, DUEDATE, PROJECTPOLICY,  \n ")
			.append(" GIFTINFO, PROJECTSTORY, READCOUNT,  \n ")
			.append(" REGDATE \n ")
			.append(" FROM PROJECT \n ")
			.append(" where rownum <= 6 \n ")
			.append(" order by readcount desc");
			
			ps=con.prepareStatement(sql.toString());
			
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
				
				list.add(vo);
			}
			ps.close();
			sql.setLength(0);

			sql.append(" SELECT  \n ")
				.append(" PROJECTNO, PROJECTNAME, PROJECTDETAIL,  \n ")
				.append(" FILENAME, FILESIZE, ORIGINALFILENAME,  \n ")
				.append(" CTNO, MEMBERNO, GOALAMOUNT,  \n ")
				.append(" OPENDATE, DUEDATE, PROJECTPOLICY,  \n ")
				.append(" GIFTINFO, PROJECTSTORY, READCOUNT,  \n ")
				.append(" REGDATE \n ")
				.append(" FROM PROJECT \n ")
				.append(" where rownum <= 6 \n ")
				.append(" order by regdate desc");

			ps=con.prepareStatement(sql.toString());
			
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

				System.out.println("프로젝트 조회 결과 vo="+vo);

				list.add(vo);
				//12
			}
			return list;
			
			
			
		}finally {
			pool.dbClose(ps, con);
		}
	}
	
	/*타입별 프로젝트(모든(all), 인기(popular), 성공임박(success), 신규추천프로젝트(new))*/
	public ArrayList<ProjectVO> selectByProjType(String type) throws SQLException {
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		
		ArrayList<ProjectVO> list = new ArrayList<ProjectVO>();
		ProjectVO vo = null;
		try {
			//1, 2
			con=pool.getConnection();
			
			//3.ps
			StringBuffer sql = new StringBuffer()
			.append(" SELECT  \n ")
			.append(" PROJECTNO, PROJECTNAME, PROJECTDETAIL,  \n ")
			.append(" FILENAME, FILESIZE, ORIGINALFILENAME,  \n ")
			.append(" CTNO, MEMBERNO, GOALAMOUNT,  \n ")
			.append(" OPENDATE, DUEDATE, PROJECTPOLICY,  \n ")
			.append(" GIFTINFO, PROJECTSTORY, READCOUNT,  \n ")
			.append(" REGDATE \n ")			
			.append(" FROM PROJECT \n ");
			switch(type) {
				case "all" : 
				sql.append(" order by regdate desc");
				break;
				
				case "new" :
				sql.append(" where rownum <= 6 order by regdate desc");
				break;
			}
			
			ps=con.prepareStatement(sql.toString());
			
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
				
				list.add(vo);
			}
			
			
			System.out.println("프로젝트 조회 결과 vo="+vo);
			
			return list;
		}finally {
			pool.dbClose(ps, con);
		}
	}
	
	/*검색어로 프로젝트 검색*/
	public ArrayList<ProjectVO> selectByProjKeword(String keyword) throws SQLException {
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		
		ArrayList<ProjectVO> list = new ArrayList<ProjectVO>();
		ProjectVO vo = null;
		try {
			//1, 2
			con=pool.getConnection();
			
			//3.ps
			StringBuffer sql = new StringBuffer()
			.append(" SELECT  \n ")
			.append(" PROJECTNO, PROJECTNAME, PROJECTDETAIL,  \n ")
			.append(" FILENAME, FILESIZE, ORIGINALFILENAME,  \n ")
			.append(" CTNO, MEMBERNO, GOALAMOUNT,  \n ")
			.append(" OPENDATE, DUEDATE, PROJECTPOLICY,  \n ")
			.append(" GIFTINFO, PROJECTSTORY, READCOUNT,  \n ")
			.append(" REGDATE \n ")
			.append(" FROM PROJECT \n ")
			.append(" where projectname like '%' || ? || '%' or projectdetail like '%' || ? || '%'");
			
			ps=con.prepareStatement(sql.toString());
			ps.setString(1, keyword);
			ps.setString(2, keyword);
			
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
				
				list.add(vo);
			}
			System.out.println("프로젝트 조회 결과 vo="+vo);
			return list;
			
		}finally {
			pool.dbClose(ps, con);
		}
	}
	
	/*카테고리별프로젝트*/
	public ArrayList<ProjectVO> selectByProjCategory(String ctname) throws SQLException {
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		
		ArrayList<ProjectVO> list = new ArrayList<ProjectVO>();
		ProjectVO vo = null;
		try {
			//1, 2
			con=pool.getConnection();
			
			//3.ps
			StringBuffer sql = new StringBuffer()
			.append(" select p.*, c.* \n ")
			.append(" from PROJECT p, category c \n ")
			.append(" where p.CTNO=c.CTNO \n ")
			.append(" and ctname = '?' ");
			
			ps=con.prepareStatement(sql.toString());
			ps.setString(1, ctname);
			
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
				
				list.add(vo);
			}
			
			
			System.out.println("프로젝트 조회 결과 vo="+vo);
			
			return list;
		}finally {
			pool.dbClose(ps, con);
		}
	}
	
}
