package com.nacre.crm.login.delegate;

import java.sql.SQLException;
import java.util.List;

import com.nacre.crm.exception.CRMLoginException;
import com.nacre.crm.login.loginservice.LoginService;
import com.nacre.crm.login.loginservice.LoginServiceImpl;


public class LoginDelegateImpl implements LoginDelegate{

	@Override
	public List<String> checkCredential(String username, String password) throws CRMLoginException {
		
		LoginService service=new LoginServiceImpl();
		List<String> checkCredential=null;
		try {
			checkCredential=service.checkCredential(username, password);
			} catch (SQLException e) {
				
				throw new CRMLoginException("Internal Problem");
				
			}
		return checkCredential;
	}
 }
