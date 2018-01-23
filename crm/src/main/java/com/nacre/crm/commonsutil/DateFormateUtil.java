package com.nacre.crm.commonsutil;

import java.text.ParseException;
import java.text.SimpleDateFormat;

/**
 * @author Avanish Singh 
 * 23-Jan-2018 12:35:01 PM 
 * crm DateFormateUtil.java
 */
public class DateFormateUtil {

	// Converting String Date to Java.Util.Date
	public java.util.Date StringToJavaDate(String date) throws ParseException {

		// converting string formate date into java.util.date formate
		java.util.Date date1 = new SimpleDateFormat("dd/MM/yyyy").parse(date);

		// returning date type
		return date1;

	}

	
	// Converting Java.util.date to SQL Date
	public java.sql.Date JavaDateToMySqlDate(java.util.Date date) {

		// getting date into long formate
		long ms = date.getTime();
		
		// converting logn formate date into java.sql.date
		java.sql.Date date3 = new java.sql.Date(ms);

		// returning sql date type
		return date3;
	}

}
