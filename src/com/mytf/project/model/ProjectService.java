package com.mytf.project.model;

import java.sql.SQLException;
import java.util.ArrayList;

public class ProjectService {
	private ProjectDAO pDao;

	public ProjectService () {
		pDao = new ProjectDAO();
	}
	
	//희정
	//계속하기 누르면 프로젝트 번호 생성
	public int insertProjectNo(int memberNo) throws SQLException {
		return pDao.insertProjectNo(memberNo);
	}
	
	//방금 생성된 프로젝트 번호 조회
	public String selectProjectNo(int memberNo) throws SQLException {
		return pDao.selectProjectNo(memberNo);
	}

	//프로젝트 번호로 전체 조회
	public ProjectVO selectByProjNo(String projectNo) throws SQLException {
		return pDao.selectByProjNo(projectNo);
	}
	
	//프로젝트 개요 업데이트
	public int updateProjectBasic(ProjectVO vo) throws SQLException {
		return pDao.updateProjectBasic(vo);
	}
	
	//개요 외 프로젝트 업데이트
	public int updateProject(ProjectVO vo) throws SQLException {
		return pDao.updateProject(vo);
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
