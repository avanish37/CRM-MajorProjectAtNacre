package com.nacre.crm.mentor.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashMap;
import java.util.Map;

import com.nacre.crm.commonsutil.DataBaseUtils;
import com.nacre.crm.mentor.dbutils.SqlQueryConstraints;

/*
 * @Author 
 * Nikhil
 * MentorDaoImpl
 */
public class MentorDaoImpl implements MentorDao {
	
	Connection con=DataBaseUtils.getConnection();
	@Override
	public Map fetchTechnology() throws SQLException {
		//Uttam Keshri
		Statement st=null;
		ResultSet rs=null;
		Map<String, String> map=null;
		//creating statement object
		st=con.createStatement();
		//Execute query
		rs=st.executeQuery(SqlQueryConstraints.FETCH_TECHNOLOGY_QUERY);
		
		map=new HashMap<String,String>();
		while(rs.next())
		{
			map.put(rs.getString(1), rs.getString(2));
		}
		return map;
	}
}
