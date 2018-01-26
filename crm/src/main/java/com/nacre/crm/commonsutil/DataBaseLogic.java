package com.nacre.crm.commonsutil;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class DataBaseLogic {
	public static DataSource datasource = DataBaseLogic.getDataSource();

	public static DataSource getDataSource() {

		try {
			Context initContext = new InitialContext();



			Context envContext = (Context) initContext.lookup("java:/comp/env");
			System.out.println(envContext);

			datasource = (DataSource) envContext.lookup("myPool");

		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		

		return datasource;

	}// getDataSource()

}
