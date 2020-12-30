package com.mytf.GoComment.model;

import java.sql.SQLException;
import java.util.List;


public class GoCommentService {
	private GoCommentDAO commentDao;

	public GoCommentService() {
		commentDao=new GoCommentDAO();
	}

	public int insertGoComment(GoCommentVO vo) throws SQLException {
		return commentDao.insertGoComment(vo);
	}

	public List<GoCommentVO> selectAll(int postNo) throws SQLException{
		return commentDao.selectAll(postNo);

	}



	public int updateGoComment(GoCommentVO vo) throws SQLException {
		return commentDao.updateGoComment(vo);

	}

	public int deleteComment(int commentNo) throws SQLException {
		return commentDao.deleteComment(commentNo);

	}

	public GoCommentVO selectByPostNo(int postNo) throws SQLException {
		return commentDao.selectByPostNo(postNo);

	}


}
