package com.nacre.crm.login.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.nacre.crm.commonsutil.DataBaseUtils;

public class LoginDAOImpl implements LoginDAO{

		public static final String CHECK_CREDENTIAL="select role,p.person_id from mydb.login l join mydb.person_details p on p.login_login_id=l.login_id join mydb.role r on p.role_role_id=r.role_id  where l.email=? and password=?";

		@Override
		public List<String> checkCredential(String username, String password) throws SQLException {
			
			//General Setting
			  Connection con=null;
			  PreparedStatement ps=null;
			  ResultSet rs=null;
			  List<String> list=new ArrayList<>();
			  //Establish the Connection
			   con=DataBaseUtils.getConnection();
			  if(con!=null)
			  {
				   ps=con.prepareStatement(CHECK_CREDENTIAL);
				   ps.setString(1,username);
				   ps.setString(2,password);
			  }
			  
			  if(ps!=null)
			  {
				  rs=ps.executeQuery();
			  }
			  
              if(rs.next())
              {
            	  list.add(rs.getString(1));
            	  list.add(rs.getString(2));
              }
			  
			return list;
		}
  
}
