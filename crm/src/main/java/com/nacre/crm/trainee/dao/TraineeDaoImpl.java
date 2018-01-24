package com.nacre.crm.trainee.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.nacre.crm.commonsutil.DataBaseUtils;

/*
 * @Author 
 * Nikhil
 * TraineeDaoImpl
 */
public class TraineeDaoImpl implements TraineeDao {
	Connection con=DataBaseUtils.getConnection();
	
	@Override
	public String getXBoardDetails() throws SQLException {
		
		String xboardQuery="select board_name from mydb.boards";
		String xBoard =null;
		PreparedStatement preparedStatement=null;
		ResultSet resultSet=null;
		preparedStatement=con.prepareStatement(xboardQuery);
		resultSet=preparedStatement.executeQuery();
		while(resultSet.next()) {
			xBoard=resultSet.getString(1);
		}
		return xBoard;
	}


}
