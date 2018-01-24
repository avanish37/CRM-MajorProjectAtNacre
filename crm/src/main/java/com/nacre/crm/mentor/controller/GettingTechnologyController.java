package com.nacre.crm.mentor.controller;

/*
 * Author--Uttam Keshri
 */

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.JsonObject;
import com.nacre.crm.mentor.deligate.MentorDeligate;

@WebServlet("/fetchTechnology")
public class GettingTechnologyController extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		MentorDeligate deligate=null;
		Map<String,String> map=null;
		JsonObject json=null;
		resp.setContentType("application/json");
		deligate=new MentorDeligate();
		
		map=deligate.gettingTechnologyDeligate();
		json=new JsonObject();
		for (Map.Entry<String,String> entry : map.entrySet()) 
            json.addProperty(entry.getKey() , entry.getValue());
		resp.getWriter().println(json);
	}
	
	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
