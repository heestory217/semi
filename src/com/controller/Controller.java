package com.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Controller {
	public String requestProcess(HttpServletRequest request,
			HttpServletResponse response) throws Throwable;
	
	public boolean isRedirect();	//redirect할지, forward할지 결정
}
