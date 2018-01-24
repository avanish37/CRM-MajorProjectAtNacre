package com.nacre.crm.login.loginservice;

import java.sql.SQLException;
import java.util.List;

import com.nacre.crm.login.dao.LoginDAO;
import com.nacre.crm.login.dao.LoginDAOFactory;

public class LoginServiceImpl implements LoginService{

	@Override
	public List<String> checkCredential(String username, String password) throws SQLException {
		LoginDAO dao=LoginDAOFactory.getLoginInstance();
	    List<String> list=dao.checkCredential(username, password);
	    
		return list;
	}

	

}
