package com.nacre.crm.mentor.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;

import com.nacre.crm.bo.AssismentDetailsBO;

/*
 * @Author 
 * Nikhil
 * MentorDao
 */
public interface MentorDao {

	public Map<String,String> fetchSubject() throws SQLException;
	public ArrayList<AssismentDetailsBO> fetchAssessment() throws SQLException;
	
}
