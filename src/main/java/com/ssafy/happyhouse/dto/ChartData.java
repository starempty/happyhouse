package com.ssafy.happyhouse.dto;

public class ChartData {
	int month;
	double avgAmount;
//	int myAmount;
	
	public int getMonth() {
		return month;
	}
	public void setMonth(int month) {
		this.month = month;
	}
	public double getAvgAmount() {
		return avgAmount;
	}
	public void setAvgAmount(double avgAmount) {
		this.avgAmount = avgAmount;
	}
//	public int getMyAmount() {
//		return myAmount;
//	}
//	public void setMyAmount(int myAmount) {
//		this.myAmount = myAmount;
//	}
	@Override
	public String toString() {
		return "ChartData [month=" + month + ", avgAmount=" + avgAmount /* + ", myAmount=" + myAmount */ + "]";
	}
}
