package com.nacre.crm.mentor.dao;

import java.sql.SQLException;
import java.util.Map;

/*
 * @Author 
 * Nikhil
 * MentorDao
 */
public interface MentorDao {

	public Map<String,String> fetchTechnology() throws SQLException;
	
}
