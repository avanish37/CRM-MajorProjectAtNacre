package com.nacre.crm.commonsutil;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletRequestEvent;
import javax.servlet.ServletRequestListener;
import javax.servlet.annotation.WebListener;

@WebListener
public class DataBaseUtils implements ServletRequestListener {
	public static Connection con=null;

    public void requestDestroyed(ServletRequestEvent arg0)  { 
        
    }


    public void requestInitialized(ServletRequestEvent arg0)  { 	

    			try {
					con = DataBaseLogic.datasource.getConnection();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

    		}// contextInitialized(ServletContextEvent event)

    		public static Connection getConnection() {
    			return con;
    		}
    		


    }
	
