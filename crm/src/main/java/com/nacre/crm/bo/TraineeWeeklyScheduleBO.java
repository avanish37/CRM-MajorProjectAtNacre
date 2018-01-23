package com.nacre.crm.bo;

public class TraineeWeeklyScheduleBO {
	/*
	 * @Author 
	 * Sachin
	 * TraineeWeeklyScheduleBO
	 */
	private int weekly_schedule_id;
	private String weekly_schedule_desc;
	private int batch_details_batch_details_id;
	
	//Setter and Getter Methods
	public int getWeekly_schedule_id() {
		return weekly_schedule_id;
	}
	public void setWeekly_schedule_id(int weekly_schedule_id) {
		this.weekly_schedule_id = weekly_schedule_id;
	}
	public String getWeekly_schedule_desc() {
		return weekly_schedule_desc;
	}
	public void setWeekly_schedule_desc(String weekly_schedule_desc) {
		this.weekly_schedule_desc = weekly_schedule_desc;
	}
	public int getBatch_details_batch_details_id() {
		return batch_details_batch_details_id;
	}
	public void setBatch_details_batch_details_id(int batch_details_batch_details_id) {
		this.batch_details_batch_details_id = batch_details_batch_details_id;
	}
	// toString method Overriding
	@Override
	public String toString() {
		return "TraineeWeeklyScheduleBO [weekly_schedule_id=" + weekly_schedule_id + ", weekly_schedule_desc="
				+ weekly_schedule_desc + ", batch_details_batch_details_id=" + batch_details_batch_details_id + "]";
	}
	
}
