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
}
