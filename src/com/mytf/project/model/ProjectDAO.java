package com.mytf.project.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

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
			String sql="insert into project(projectno, projectname, projectdetail,ctno,memberno)\r\n" + 
					"values('PJ00'||projectNo_seq.nextval,?,?,?,?)";
			ps=con.prepareStatement(sql);
			
			ps.setString(1, vo.getProjectName());
			ps.setString(1, vo.getProjectDetail());
			ps.setInt(2, vo.getCtNo());
			ps.setInt(2, vo.getMemberNo());
			
			//4. exec
			int cnt=ps.executeUpdate();
			System.out.println("기본 프로젝트 등록 결과 cnt="+cnt+", 매개변수 vo="+vo);
			
			return cnt;
		}finally {
			pool.dbClose(ps, con);
		}
	}
}
