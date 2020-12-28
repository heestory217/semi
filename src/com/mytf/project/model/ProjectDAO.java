package com.mytf.project.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;

import com.mytf.db.ConnectionPoolMgr2;

public class ProjectDAO {
	private ConnectionPoolMgr2 pool;

	public ProjectDAO() {
		pool = new ConnectionPoolMgr2();
	}

	//계속하기 누르면 프로젝트 번호 생성
	public int insertProjectNo(int memberNo) throws SQLException {
		Connection con=null;
		PreparedStatement ps=null;

		try {
			con=pool.getConnection();

			String sql="insert into project(projectno, memberno) " + 
					" values('PJ00'|| projectNo_seq.nextval,?)";
			ps=con.prepareStatement(sql);
			ps.setInt(1, memberNo);

			int cnt=ps.executeUpdate();
			System.out.println("프로젝트 번호 생성 결과 cnt="+cnt+",매개변수 memberNo="+memberNo);
			return cnt;
		}finally {
			pool.dbClose(ps, con);
		}
	}

	//방금 생성된 프로젝트 번호 조회
	public String selectProjectNo(int memberNo) throws SQLException {
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs = null;

		try {
			con=pool.getConnection();

			String sql="select projectno " + 
					" from " + 
					" (  " + 
					" select * from project " + 
					" where memberno=? " + 
					" order by regdate desc " + 
					" ) " + 
					" where rownum=1";
			ps=con.prepareStatement(sql);
			ps.setInt(1, memberNo);

			rs=ps.executeQuery();
			String projectNo = null;
			if(rs.next()) {
				projectNo = rs.getString(1);
			}
			System.out.println("프로젝트번호 조회 projectNo="+projectNo+", 매개변수 memberNo="+memberNo);
			return projectNo;
		}finally {
			pool.dbClose(rs, ps, con);
		}
	}


	//프로젝트 개요 업데이트
	public int updateProjectBasic(ProjectVO vo) throws SQLException {
		Connection con=null;
		PreparedStatement ps=null;

		try {
			//1, 2
			con=pool.getConnection();

			//3.ps
			String sql=" update project" + 
					" set projectname=?,projectdetail=?,filename=?,filesize=?,originalfilename=?,ctno=?" + 
					" where projectno=?";
			ps=con.prepareStatement(sql);
			ps.setString(1, vo.getProjectName());
			ps.setString(2, vo.getProjectDetail());
			ps.setString(3, vo.getFileName());
			ps.setLong(4, vo.getFileSize());
			ps.setString(5, vo.getOriginalFileName());
			ps.setInt(6, vo.getCtNo());
			ps.setString(7, vo.getProjectNo());

			//4. exec
			int cnt=ps.executeUpdate();
			System.out.println("개요 업데이트 cnt="+cnt+", 매개변수 vo="+vo);

			return cnt;
		}finally {
			pool.dbClose(ps, con);
		}
	}

	//개요 외 프로젝트 업데이트
	public int updateProject(ProjectVO vo) throws SQLException {
		Connection con=null;
		PreparedStatement ps=null;

		try {
			//1, 2
			con=pool.getConnection();

			//3.ps
			String sql="update project " + 
					" set goalamount=?,opendate=?,duedate=?,projectstory=?,projectpolicy=?,giftinfo=? " + 
					" where projectno=? ";
			ps=con.prepareStatement(sql);
			ps.setInt(1, vo.getGoalAmount());
			ps.setTimestamp(2, vo.getOpendate());
			ps.setTimestamp(3, vo.getDuedate());
			ps.setString(4, vo.getProjectStory() );
			ps.setString(5, vo.getProjectPolicy() );
			ps.setString(6, vo.getGiftInfo());
			ps.setString(7, vo.getProjectNo());

			//4. exec
			int cnt=ps.executeUpdate();
			System.out.println("개요 외 업데이트 결과 cnt="+cnt+",매개변수 vo="+vo);

			return cnt;
		}finally {
			pool.dbClose(ps, con);
		}
	}

	//프로젝트 번호로 전체 조회
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
			System.out.println("프로젝트 조회결과 vo="+vo+", 매개변수 projectNo="+projectNo);

			return vo;
		}finally {
			pool.dbClose(rs, ps, con);
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
