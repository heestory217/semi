package com.mytf.detail.model;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DetailService {
	private DetailDAO postDao;
	
	 public DetailService() {
		 postDao=new DetailDAO();
	 }
	 
	 public List<DetailVO> selectMainNotice() throws SQLException{
		 return postDao.selectMainNotice();
	 }
	 public int insertPost(DetailVO vo) throws SQLException {
		 return postDao.insertPost(vo);
	 }

	 public List<DetailVO> selectAll(String projectNo) throws SQLException{
		 return postDao.selectAll(projectNo);
	 }

	 public DetailVO selectByNo(String projectNo) throws SQLException {
		 return postDao.selectByNo(projectNo);
	 }

	 public int updatePost(DetailVO vo) throws SQLException {

		 return postDao.updatePost(vo);
	 }

	 public int deletePost(int postNo, String pwd) throws SQLException {
		 return postDao.deletePost(postNo, pwd);
	 }

	public DetailVO selectByPostNo(int postNo) throws SQLException {
		return postDao.selectByPostNo(postNo);
	}


}
