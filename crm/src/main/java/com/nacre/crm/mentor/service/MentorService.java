package com.nacre.crm.mentor.service;

import java.sql.SQLException;
import java.util.Map;

/*
 * @Author 
 * Nikhil
 * MentorService
 */
public interface MentorService {

	public Map<String,String> gettingTechnology() throws SQLException;
}
