package com.nacre.crm.login.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.nacre.crm.exception.CRMLoginException;
import com.nacre.crm.login.delegate.LoginDelegate;
import com.nacre.crm.login.delegate.LoginDelegateImpl;

@WebServlet("/logout")
public class LogoutController extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		HttpSession session=null;
		session=req.getSession(false);
		session.invalidate();
		System.out.println("logout");
		resp.sendRedirect("index.jsp");
		
		
	}//doGet(-,-)
	
	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}//doPost(-,-)

}//LoginController
