package com.nacre.crm.login.loginservice;

import java.sql.SQLException;
import java.util.List;

public interface LoginService {
	
	public List<String> checkCredential(String username,String password) throws SQLException; 
    
}
