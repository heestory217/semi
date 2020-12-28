package com.mytf.detailPage_REAL.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.controller.Controller;

public class DetailTotalController implements Controller{

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		/*/detailPage_REAL/detailPage_total.do => DetailPageTotalController
		 * => detailPage_total.jsp*/
		
		
		
		return "/detailPage_REAL/detail_total.jsp";
	}

	@Override
	public boolean isRedirect() {
		
		return false;
	}

}
