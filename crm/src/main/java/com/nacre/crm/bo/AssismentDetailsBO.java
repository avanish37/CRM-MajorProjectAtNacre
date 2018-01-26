package com.nacre.crm.bo;

import java.util.Date;

public class AssismentDetailsBO {
private int assisment_details_id;
private Date doa;
private String subject;
private String type;
private int f_marks;
private String time;
private String duration;
public int getAssisment_details_id() {
	return assisment_details_id;
}
@Override
public String toString() {
	return "AssismentDetailsBO [assisment_details_id=" + assisment_details_id + ", doa=" + doa + ", subject=" + subject
			+ ", type=" + type + ", f_marks=" + f_marks + ", time=" + time + ", duration=" + duration + "]";
}
public void setAssisment_details_id(int assisment_details_id) {
	this.assisment_details_id = assisment_details_id;
}
public Date getDoa() {
	return doa;
}
public void setDoa(Date doa) {
	this.doa = doa;
}
public String getSubject() {
	return subject;
}
public void setSubject(String subject) {
	this.subject = subject;
}
public String getType() {
	return type;
}
public void setType(String type) {
	this.type = type;
}
public int getF_marks() {
	return f_marks;
}
public void setF_marks(int f_marks) {
	this.f_marks = f_marks;
}
public String getTime() {
	return time;
}
public void setTime(String time) {
	this.time = time;
}
public String getDuration() {
	return duration;
}
public void setDuration(String duration) {
	this.duration = duration;
}
}
