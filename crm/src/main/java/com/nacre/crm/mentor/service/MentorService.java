package com.nacre.crm.mentor.service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;

import com.nacre.crm.bo.AssismentDetailsBO;

/*
 * @Author 
 * Nikhil
 * MentorService
 */
public interface MentorService {

	public Map<String,String> gettingSubject() throws SQLException;
	public ArrayList<AssismentDetailsBO> fetchAssessment() throws SQLException;

}
