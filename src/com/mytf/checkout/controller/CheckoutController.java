package com.mytf.checkout.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.controller.Controller;

public class CheckoutController implements Controller{

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		
		return "/checkoutPage/checkoutPage.jsp";
	}

	@Override
	public boolean isRedirect() {
		return false;
	}

}
