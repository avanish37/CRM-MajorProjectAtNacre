package com.nacre.crm.mentor.deligate;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;

import com.nacre.crm.bo.AssismentDetailsBO;
import com.nacre.crm.mentor.service.MentorService;
import com.nacre.crm.mentor.service.MentoreServiceImpl;

/*
 * @Author 
 * Nikhil
 * MentorDeligate
 */
public class MentorDeligate {

	public Map<String,String> gettingSubjectDeligate()
	{
		//Uttam Keshri
		Map<String, String> m=null;
		MentorService service=new MentoreServiceImpl();
		try {
			m=service.gettingSubject();
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return m;
	}
	
	public ArrayList<AssismentDetailsBO> fetchAssessmentDelegate(String batchId)
	{
		MentorService service=new MentoreServiceImpl();
		ArrayList<AssismentDetailsBO> bo=null;
		try {
			bo=service.fetchAssessment();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return bo;
	}
	
}
