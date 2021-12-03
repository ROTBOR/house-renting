package cn.jmu.po;

public class QuantityList {
	private String region;
	private int rentalNum;
	public String getRegion() {
		return region;
	}
	public void setRegion(String region) {
		this.region = region;
	}
	public int getRentalNum() {
		return rentalNum;
	}
	public void setRentalNum(int rentalNum) {
		this.rentalNum = rentalNum;
	}
	@Override
	public String toString() {
		return "QuantityList [region=" + region + ", rentalNum=" + rentalNum + "]";
	}
}
