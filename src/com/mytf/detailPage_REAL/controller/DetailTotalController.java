package com.mytf.detailPage_REAL.controller;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.controller.Controller;
import com.mytf.post.model.postService;
import com.mytf.post.model.postVO;

public class DetailTotalController implements Controller{

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		/*/detailPage_REAL/detailPage_total.do => DetailPageTotalController
		 * => detailPage_total.jsp*/
		
		String projectNo="PJ004";
		
		postService service = new postService();
		
		List<postVO> list = null;
		try {
			list=service.selectAll(projectNo);			
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		//3.
		request.setAttribute("list", list);
	
	
		return "/detailPage_REAL/detail_total.jsp";
	}

	@Override
	public boolean isRedirect() {
		
		return false;
	}

}
