package com.mytf.project.model;

import java.sql.SQLException;

public class ProjectService {
	private ProjectDAO pDao;
	
	public ProjectService () {
		pDao = new ProjectDAO();
	}
	
	public int insertProject(ProjectVO vo) throws SQLException{
		return pDao.insertProject(vo);
	}
	
	public ProjectVO selectByProjNo(String projectNo) throws SQLException {
		return pDao.selectByProjNo(projectNo);
	}
	/*
	public int updateProject(ProjectVO vo) throws SQLException {
		return pDao.updateProject(vo);
	}
	*/
	public String selectProjectNo(ProjectVO vo) throws SQLException {
		return pDao.selectProjectNo(vo);
	}
}
