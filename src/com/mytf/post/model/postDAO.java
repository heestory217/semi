package com.mytf.post.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import com.mytf.db.ConnectionPoolMgr2;



public class postDAO {
	private ConnectionPoolMgr2 pool;
	
	public postDAO() {
		pool=new ConnectionPoolMgr2();
	}
	
	public int insertPost(postVO vo) throws SQLException {
		Connection con=null;
		PreparedStatement ps=null;
		try { 
			//1,2. con
			con=pool.getConnection();
			
			//3. ps
		
			/*
			 * String
			 * sql="insert into post(postNo, name, pwd, title, email, postContent )\r\n" +
			 * "VALUES (postNo_seq.nextval, ?,?,?,?,?)";
			 */
			
			  String
			  sql="insert into post(postNo, projectNo, memberNo, name, pwd, title, email, postContent)"
			  + " VALUES (postNo_seq.nextval, ?,?,?,?,?,?,?)";
			  
			  
			  
			 
			  
			ps=con.prepareStatement(sql);
			
				
			ps.setString(1, vo.getProjectNo()); 
			ps.setInt(2, vo.getMemberNo());	 
			ps.setString(3, vo.getName());
			ps.setString(4, vo.getPwd());
			ps.setString(5, vo.getTitle());
			ps.setString(6, vo.getEmail());
			ps.setString(7, vo.getPostContent());
			
			int cnt=ps.executeUpdate();
			System.out.println("글쓰기 결과 cnt="+cnt+", 매개변수 vo="+vo);
			
			return cnt;
			
			
			//4. exec
			
		}finally {
			pool.dbClose(ps, con);
		}
		
	}
	
	public List<postVO> selectAll(String projectNo) throws SQLException{
		/*
		 select * from board
		 where name like '%길동%'; 
		 select * from board
		 where title like '%안녕%'; 
		 select * from board
		 where content like '%내용%'; 
		*/
		
		
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		
		List<postVO> list=new ArrayList<postVO>();
		try {
			//1,2 con
			con=pool.getConnection();
			
			//3. ps
			String sql="select * from post where projectNo = ?" +
					" order by postNo desc";
			ps=con.prepareStatement(sql);
			
			ps.setString(1, projectNo);
		
			//4. exec
			rs=ps.executeQuery();
			while(rs.next()){
				
				int postNo=rs.getInt("postNo");
				projectNo=rs.getString("projectNo");
				int memberNo=rs.getInt("memberNo");
				String name=rs.getString("name");
				String pwd=rs.getString("pwd");
				String title=rs.getString("title");
				String email=rs.getString("email");
				String postContent=rs.getString("postContent");
				Timestamp postDate=rs.getTimestamp("postDate");
			
				postVO vo = new postVO(postNo, projectNo, memberNo, name, pwd, title, email, postContent,postDate);
				list.add(vo);
			
			}
			System.out.println("글목록 결과 list.size=" + list.size()
									+", 매개변수 projectNo="+projectNo);
			return list;
		}finally {
			pool.dbClose(rs, ps, con);
			
		}
	}
	
	public postVO selectByNo(String projectNo) throws SQLException {
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		
		postVO vo = new postVO();
		try {
			//1,2
			con=pool.getConnection();
			
			//3
			String sql="select * from post where projectNo=?";
			ps=con.prepareStatement(sql);
			ps.setString(1, projectNo);
			
			//4
			rs=ps.executeQuery();
			if(rs.next()) {
				
				
				vo.setPostNo(rs.getInt("postNo")); 
				vo.setProjectNo(rs.getString("projectNo")); 
				vo.setMemberNo(rs.getInt("memberNo")); 
				vo.setName(rs.getString("name"));
				vo.setPwd(rs.getString("pwd"));
				vo.setTitle(rs.getString("title"));
				vo.setEmail(rs.getString("email"));
				vo.setPostContent(rs.getString("postContent"));
				vo.setPostDate(rs.getTimestamp("postDate"));
		
			}
			System.out.println("글 상세보기 결과 vo = "+vo + ",매개변수 projectNo=" + projectNo);
			return vo;
		}finally {
			pool.dbClose(rs, ps, con);
		}
	}

	public int updatePost(postVO vo) throws SQLException {
		Connection con =null;
		PreparedStatement ps=null;
		
		try {
			//1,2
			con=pool.getConnection();
			
			//3
			String sql="update post" + 
						" set name=?, pwd=?, title=?, email=?, postContent=?" +  //엔터값이 있을땐 맨앞에 한번 띄어쓰기 해주기
						" where postNo=? and pwd=?";
			
			ps=con.prepareStatement(sql);

			
			ps.setString(1, vo.getName()); //물음표에 대한 세팅
			ps.setString(2, vo.getPwd()); //물음표에 대한 세팅
			ps.setString(3, vo.getTitle());
			ps.setString(4, vo.getEmail());
			ps.setString(5, vo.getPostContent());
			ps.setInt(6, vo.getPostNo());
			ps.setString(7, vo.getPwd());

			//4
			int cnt=ps.executeUpdate();
			System.out.println("글수정 결과, cnt="+cnt+",매개변수 vo="+vo);
			
			return cnt;
			
		}finally {
			pool.dbClose(ps, con);
			
		}
		
	}
	
	public int deletePost(int postNo, String pwd) throws SQLException {
		Connection con=null;
		PreparedStatement ps=null;
		
		
		try {
			//1,2
			con=pool.getConnection();
			
			//3
			String sql="delete from post where postNo=? and pwd=?";
			ps=con.prepareStatement(sql);
			ps.setInt(1, postNo);
			ps.setString(2, pwd);
			
			//4
			int cnt=ps.executeUpdate();
			System.out.println("글 삭제 결과, cnt="+cnt+", 매개변수 postNo=" + postNo
					+ ", pwd=" + pwd);
			
			return cnt;
		}finally {
			pool.dbClose(ps, con);
		}
	}
		
	
	
		public List<postVO> selectMainNotice() throws SQLException{
			Connection con=null;
			PreparedStatement ps=null;
			ResultSet rs=null;
			
			List<postVO> list=new ArrayList<postVO>();
			try {
				con=pool.getConnection();
				
				String sql="select * from (select postNo, title from post order by postNo desc) where rownum<=6";
				ps=con.prepareStatement(sql);
				
				rs=ps.executeQuery();
				while(rs.next()) {
					int postNo=rs.getInt("postNo");
					String title=rs.getString("title");
					
					postVO vo = new postVO();
					vo.setPostNo(postNo);
					vo.setTitle(title);
					
					list.add(vo);
				}
				System.out.println("메인 공지사항 조회 결과, list.size=" + list.size());
				return list;
			}finally {
				pool.dbClose(rs, ps, con);
				
			}
		}

	
}
