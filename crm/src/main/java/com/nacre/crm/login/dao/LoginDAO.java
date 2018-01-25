package com.nacre.crm.login.dao;

import java.sql.SQLException;
import java.util.List;

public interface LoginDAO {

   public List<String> checkCredential(String username,String password) throws SQLException;
     
}
