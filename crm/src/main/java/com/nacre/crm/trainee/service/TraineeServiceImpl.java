package com.nacre.crm.trainee.service;
/*
 * @Author 
 * Nikhil
 * TraineeServiceImpl
 */

import com.nacre.crm.bo.XDetailsBo;
import com.nacre.crm.trainee.dao.TraineeDaoImpl;

public class TraineeServiceImpl implements TraineeService {
	
	@Override
	public String getXBoardDetails() {
		TraineeDaoImpl traineeDao=new TraineeDaoImpl(); 
		XDetailsBo xDetailsBo=new XDetailsBo();
		
		String xBoard=null;
		
		
		
		
		
		return xBoard;
	}

}
