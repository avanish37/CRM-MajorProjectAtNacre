package com.nacre.crm.login.dao;

public class LoginDAOFactory {

	public static LoginDAOImpl getLoginInstance()
	{
		return new LoginDAOImpl();
		
	}
	
}
