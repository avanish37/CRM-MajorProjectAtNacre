package com.nacre.crm.mentor.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import com.nacre.crm.bo.AssismentDetailsBO;
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
	public Map<String, String> fetchSubject() throws SQLException {
		//Uttam Keshri
				Statement st=null;
				ResultSet rs=null;
				Map<String, String> map=null;
				//creating statement object
				st=con.createStatement();
				//Execute query
				rs=st.executeQuery(SqlQueryConstraints.FETCH_SUBJECT_LIST_QUERY);
				
				map=new HashMap<String,String>();
				while(rs.next())
				{
					map.put(rs.getString(1), rs.getString(2));
				}
				return map;
	}

	@Override
	public ArrayList<AssismentDetailsBO> fetchAssessment() throws SQLException {
		//Uttam Keshri
		AssismentDetailsBO bo=null;
		ArrayList<AssismentDetailsBO> list=new ArrayList<>();
		ResultSet rs=null;
		Statement st=null;
		try {
			st=con.createStatement();
			rs=st.executeQuery(SqlQueryConstraints.FETCH_ASSESSMENT_QUERY);
			
				while(rs.next())
				{
					bo=new AssismentDetailsBO();
					bo.setAssisment_details_id(rs.getInt(1));
					bo.setDoa(rs.getDate(2));
					bo.setSubject(rs.getString(3));
					bo.setType(rs.getString(4));
					bo.setF_marks(rs.getInt(5));
					bo.setTime(rs.getString(6));
					bo.setDuration(rs.getString(7));
					list.add(bo);
					//System.out.println(bo);
				}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
		
	}	

}
