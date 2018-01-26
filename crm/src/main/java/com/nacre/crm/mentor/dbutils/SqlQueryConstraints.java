package com.nacre.crm.mentor.dbutils;
/*
 * @Author 
 * Nikhil
 * MentorDbUtils
 */
public class SqlQueryConstraints {
	
	public static final String MENTOR_AVAILABLE="MENTOR_AVAILABLE";
	public static final String MENTOR_UNAVAILABLE="MENTOR_UNAVAILABLE";
	public static final String REPORTED="REPORTED";
	public static final String FETCH_SUBJECT_LIST_QUERY="SELECT assisment_list_id,assisment_name,full_marks FROM assisment_list";
	public static final String FETCH_ASSESSMENT_QUERY="SELECT ad.assisment_details_id,ad.date_of_assisement,al.assisment_name,ad.type,al.full_marks,ad.time,ad.duration FROM assisment_details AS ad,assisment_list AS al WHERE al.assisment_list_id=ad.assisment_list_assisment_list_id";

}
