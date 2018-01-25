package com.nacre.crm.login.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.nacre.crm.exception.CRMLoginException;
import com.nacre.crm.login.delegate.LoginDelegate;
import com.nacre.crm.login.delegate.LoginDelegateImpl;

@WebServlet("/login")
public class LoginController extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		//General Setting
		List<String> checkcredential=null;
		String role_name=null;
		int personal_id=0;
		HttpSession session=null;
		Iterator itr=null;
		PrintWriter pw=null;
		pw=resp.getWriter();
		
		// Reading form Data 
		String username= req.getParameter("username");
		String password=req.getParameter("password");
		pw.println(username);
		pw.println(password);
		
		LoginDelegate delegate=new LoginDelegateImpl();
		try {
			checkcredential=delegate.checkCredential(username, password);
		} catch (CRMLoginException e) {
			e.printStackTrace();
		}
		
		itr=checkcredential.iterator();
		
		if(itr.hasNext())
		{
		role_name=checkcredential.get(0);
		personal_id=Integer.parseInt(checkcredential.get(1));			 
		
		if(role_name.equals("hr"))
		{   
			session=req.getSession();
			session.setAttribute("Selected_Hr_id", personal_id);
			resp.sendRedirect("hrmodule/hrHomepage.jsp");
		}
		
		else if(role_name.equals("trainee"))
		{   
			session=req.getSession();
			session.setAttribute("Selected_Trainee_id", personal_id);
			resp.sendRedirect("traineemodule/traineeHome.jsp");
			
		}
		
		else if(role_name.equals("mentor"))
		{   
			session=req.getSession();
			session.setAttribute("Selected_Mentor_id", personal_id);
			resp.sendRedirect("mentormodule/mentorHome.jsp");
			
		}
		}//if
		else
		{
			pw.print("NoData");
		}
		
		System.out.println(role_name+" "+personal_id);
		
		
	}//doGet(-,-)
	
	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}//doPost(-,-)

}//LoginController
