package com.mytf.post.model;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class postService {
	private postDAO postDao;
	
	 public postService() {
		 postDao=new postDAO();
	 }
	 
	 public List<postVO> selectMainNotice() throws SQLException{
		 return postDao.selectMainNotice();
	 }
	 public int insertPost(postVO vo) throws SQLException {
		 return postDao.insertPost(vo);
	 }

	 public List<postVO> selectAll(String projectNo) throws SQLException{
		 return postDao.selectAll(projectNo);
	 }

	 public postVO selectByNo(String projectNo) throws SQLException {
		 return postDao.selectByNo(projectNo);
	 }

	 public int updatePost(postVO vo) throws SQLException {

		 return postDao.updatePost(vo);
	 }

	 public int deletePost(int postNo, String pwd) throws SQLException {
		 return postDao.deletePost(postNo, pwd);
	 }


}
