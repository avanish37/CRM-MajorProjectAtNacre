package com.nacre.crm.hr.dao;
/*
 * @Author 
 * Nikhil
 * HrDaoImpl
 */

import java.sql.Connection;

import com.nacre.crm.commonsutil.DataBaseUtils;

public class HrDaoIMPL implements HrDao {
	Connection con=DataBaseUtils.getConnection();

}
