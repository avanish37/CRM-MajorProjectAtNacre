package com.nacre.crm.login.delegate;

import java.util.List;

import com.nacre.crm.exception.CRMLoginException;

public interface LoginDelegate {
	
	public List<String> checkCredential(String username,String password) throws CRMLoginException;

}
