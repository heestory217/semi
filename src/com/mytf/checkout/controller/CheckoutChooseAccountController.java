package com.mytf.checkout.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.controller.Controller;

public class CheckoutChooseAccountController implements Controller{

	@Override
	public String requestProcess(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		return "checkout_chooseAccount.jsp";
	}

	@Override
	public boolean isRedirect() {
		return false;
	}

}
