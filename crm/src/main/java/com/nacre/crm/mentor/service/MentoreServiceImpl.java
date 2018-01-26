package com.nacre.crm.mentor.service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;

import com.nacre.crm.bo.AssismentDetailsBO;
import com.nacre.crm.mentor.dao.MentorDao;
import com.nacre.crm.mentor.dao.MentorDaoImpl;

/*
 * @Author 
 * Nikhil
 * MentorServiceImpl
 */
public class MentoreServiceImpl implements MentorService {

	//Uttam Keshri
	@Override
	public Map<String, String> gettingSubject() throws SQLException {
		MentorDao dao = null;

		dao = new MentorDaoImpl();
		Map<String, String> map = dao.fetchSubject();
		return map;
	}

	@Override
	public ArrayList<AssismentDetailsBO> fetchAssessment() throws SQLException {
		MentorDao dao = null;
		dao = new MentorDaoImpl();		
		return dao.fetchAssessment();
	}

}
