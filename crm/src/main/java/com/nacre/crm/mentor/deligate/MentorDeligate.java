package com.nacre.crm.mentor.deligate;

import java.sql.SQLException;
import java.util.Map;

import com.nacre.crm.mentor.service.MentorService;
import com.nacre.crm.mentor.service.MentoreServiceImpl;

/*
 * @Author 
 * Nikhil
 * MentorDeligate
 */
public class MentorDeligate {

	public Map<String,String> gettingTechnologyDeligate()
	{
		//Uttam Keshri
		Map<String, String> m=null;
		MentorService service=new MentoreServiceImpl();
		try {
			m=service.gettingTechnology();
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return m;
	}
	
}
