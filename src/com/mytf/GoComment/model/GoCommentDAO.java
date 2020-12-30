package com.mytf.GoComment.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import com.mytf.db.ConnectionPoolMgr2;
import com.mytf.post.model.postVO;

public class GoCommentDAO {
	private ConnectionPoolMgr2 pool;
	
	public GoCommentDAO() {
		pool=new ConnectionPoolMgr2();
	}


	public int insertGoComment(GoCommentVO vo) throws SQLException {
		Connection con=null;
		PreparedStatement ps=null;
		try { 
			//1,2. con
			con=pool.getConnection();
			
			//3. ps
		
	
			  String
			  sql="insert into GoComment(commentNo, memberNo, commentContent, postNo)"
			  + " VALUES (commentNo_seq.nextval, ?,?,?,?,?)";
			  
			  
			  
			 
			  
			ps=con.prepareStatement(sql);
			
				
			ps.setInt(1, vo.getMemberNo()); 
			ps.setString(2, vo.getCommentContent());	 
			ps.setInt(3, vo.getPostNo());
			
			int cnt=ps.executeUpdate();
			System.out.println("코멘트 쓰기 결과 cnt="+cnt+", 매개변수 vo="+vo);
			
			return cnt;
			
			
			//4. exec
			
		}finally {
			pool.dbClose(ps, con);
		}
		
	}
	
	public List<GoCommentVO> selectAll(int postNo) throws SQLException{
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
		
		List<GoCommentVO> list=new ArrayList<GoCommentVO>();
		try {
			//1,2 con
			con=pool.getConnection();
			
			//3. ps
			String sql="select * from GoComment where postNo = ?" +
					" order by commentNo desc";
			ps=con.prepareStatement(sql);
			
			ps.setInt(1, postNo);
		
			//4. exec
			rs=ps.executeQuery();
			while(rs.next()){
				
				int commentNo=rs.getInt("commentNo");
				int memberNo=rs.getInt("memberNo");
				String commentContent=rs.getString("commentContent");
				Timestamp commentDate=rs.getTimestamp("commentDate");
				String delFlag=rs.getString("delFlag");
				postNo=rs.getInt("postNo");
			
				GoCommentVO vo = new GoCommentVO(commentNo, memberNo, commentContent, commentDate, delFlag,postNo);
				list.add(vo);
			
			}
			System.out.println("글목록 결과 list.size=" + list.size()
									+", 매개변수 postNo="+postNo);
			return list;
		}finally {
			pool.dbClose(rs, ps, con);
			
		}
	}
	
	

	public int updateGoComment(GoCommentVO vo) throws SQLException {
		Connection con =null;
		PreparedStatement ps=null;
		
		try {
			//1,2
			con=pool.getConnection();
			
			//3
			String sql="update GoComment" + 
						" set commentContent=?" +  //엔터값이 있을땐 맨앞에 한번 띄어쓰기 해주기
						" where commentNo=?";
			
			ps=con.prepareStatement(sql);

			
			ps.setString(1, vo.getCommentContent());
			ps.setInt(2, vo.getCommentNo());

			//4
			int cnt=ps.executeUpdate();
			System.out.println("글수정 결과, cnt="+cnt+",매개변수 vo="+vo);
			
			return cnt;
			
		}finally {
			pool.dbClose(ps, con);
			
		}
		
	}
	
	public int deleteComment(int commentNo) throws SQLException {
		Connection con=null;
		PreparedStatement ps=null;
		
		
		try {
			//1,2
			con=pool.getConnection();
			
			//3
			String sql="delete from GoComment where commentNo=?";
			ps=con.prepareStatement(sql);
			ps.setInt(1, commentNo);
			
			//4
			int cnt=ps.executeUpdate();
			System.out.println("글 삭제 결과, cnt="+cnt+", 매개변수 commentNo=" + commentNo);
			
			return cnt;
		}finally {
			pool.dbClose(ps, con);
		}
	}
		
	
	
	

		public GoCommentVO selectByPostNo(int postNo) throws SQLException {
			Connection con=null;
			PreparedStatement ps=null;
			ResultSet rs=null;
			
			GoCommentVO vo = new GoCommentVO();
			try {
				//1,2
				con=pool.getConnection();
				
				//3
				String sql="select * from GoComment where postNo=?";
				ps=con.prepareStatement(sql);
				ps.setInt(1, postNo);
				
				//4
				rs=ps.executeQuery();
				if(rs.next()) {
									
					
					vo.setCommentNo(rs.getInt("commentNo")); 
					vo.setMemberNo(rs.getInt("memberNo")); 
					vo.setCommentContent(rs.getString("commentContent")); 
					vo.setCommentDate(rs.getTimestamp("commentDate"));
					vo.setDelFlag(rs.getString("delFlag"));
					vo.setPostNo(rs.getInt("postNo"));
			
				}
				System.out.println("글 상세보기 결과 vo = "+vo + ",매개변수 postNo=" + postNo);
				return vo;
			}finally {
				pool.dbClose(rs, ps, con);
			}
			}


}

