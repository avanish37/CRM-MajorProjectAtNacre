package com.nacre.crm.bo;

public class XDetailsBo {
	private  String xBoard;
	private String medium;
	private int year;
	private float percentage;
	
	
	public String getxBoard() {
		return xBoard;
	}
	public void setxBoard(String xBoard) {
		this.xBoard = xBoard;
	}
	public String getMedium() {
		return medium;
	}
	public void setMedium(String medium) {
		this.medium = medium;
	}
	public int getYear() {
		return year;
	}
	public void setYear(int year) {
		this.year = year;
	}
	public float getPercentage() {
		return percentage;
	}
	public void setPercentage(float percentage) {
		this.percentage = percentage;
	}
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return super.toString();
	}
	
}
