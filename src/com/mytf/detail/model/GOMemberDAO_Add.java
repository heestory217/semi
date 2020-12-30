package com.mytf.detail.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.List;

import com.mytf.GoMember.model.GoMemberVO;
import com.mytf.db.ConnectionPoolMgr2;
import com.mytf.project.model.ProjectVO;

public class GOMemberDAO_Add {
	private ConnectionPoolMgr2 pool;

	public GOMemberDAO_Add() {
		pool=new ConnectionPoolMgr2();
	}

	
	
	//프로젝트 번호로 창작자정보 조회
			public GoMemberVO_Add selectMemberByPojectNo(String projectNo) throws SQLException {
				Connection con=null;
				PreparedStatement ps=null;
				ResultSet rs=null;
				GoMemberVO_Add goVo=null;
				try {
					//1,2
					con=pool.getConnection();
					//3
					String sql="select m.*\r\n" + 
							" from GoMember m join project p\r\n" + 
							" on m.memberNo = p.memberNo\r\n" + 
							" where projectNo=?";
					ps=con.prepareStatement(sql);
					ps.setString(1, projectNo);
					//4

					rs=ps.executeQuery();

					while(rs.next()) {
						int memberNo=rs.getInt("memberNo");
						String name=rs.getString("name");
						String email=rs.getString("email");
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
						goVo= new GoMemberVO_Add(memberNo, name, email, pwd, hp, memberIntro, address, joindate, outdate, sellerFlag, fileName, fileSize, originalFileName);

					}				
					//5
					System.out.println("회원조회결과 goVo="+goVo+"매개변수 projectNo="+projectNo);
					return goVo;
				} finally {
					pool.dbClose(rs, ps, con);
				}

			}
}
