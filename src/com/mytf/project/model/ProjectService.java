package com.mytf.project.model;

import java.sql.SQLException;
import java.util.ArrayList;

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
	
	//가은 추가
	public ArrayList<ProjectVO> selectByProjMain() throws SQLException {
		return pDao.selectByProjMain();
	}
	
	public ArrayList<ProjectVO> selectByProjType(String type) throws SQLException {
		return pDao.selectByProjType(type);
	}
	
	public ArrayList<ProjectVO> selectByProjKeword(String keyword) throws SQLException {
		return pDao.selectByProjKeword(keyword);
	}
	
	public ArrayList<ProjectVO> selectByProjCategory(String ctname) throws SQLException {
		return pDao.selectByProjCategory(ctname);
	}
}
