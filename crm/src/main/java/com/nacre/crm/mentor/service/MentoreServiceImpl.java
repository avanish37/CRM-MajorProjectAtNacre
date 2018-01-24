package com.nacre.crm.mentor.service;

import java.sql.SQLException;
import java.util.Map;

import com.nacre.crm.mentor.dao.MentorDao;
import com.nacre.crm.mentor.dao.MentorDaoImpl;

/*
 * @Author 
 * Nikhil
 * MentorServiceImpl
 */
public class MentoreServiceImpl implements MentorService{

	//Uttam Keshri
	@Override
	public Map gettingTechnology() throws SQLException
	{
		MentorDao dao=null;
		
		dao=new MentorDaoImpl();
		Map<String,String> map=dao.fetchTechnology();
		return map;
	}
	
	
}
