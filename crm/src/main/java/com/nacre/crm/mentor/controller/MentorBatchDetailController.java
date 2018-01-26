package com.nacre.crm.mentor.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



/**
 * @author Avanish Singh
 * 25-Jan-2018 12:24:45 PM
 * crm
 * MentorBatchDetailController.java
 */
public class MentorBatchDetailController extends HttpServlet{

	
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

	HttpSession session = req.getSession(false);
	
	int i = (Integer)session.getAttribute("SelectedMetnorId");
	
	
	}
	
	
	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(req, resp);
	}

}
