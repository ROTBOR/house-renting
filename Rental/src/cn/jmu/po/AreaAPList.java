package cn.jmu.po;

public class AreaAPList {
	private String region;
	private String adress;
	private Double areaPrice;
	public String getRegion() {
		return region;
	}
	public void setRegion(String region) {
		this.region = region;
	}
	public String getAdress() {
		return adress;
	}
	public void setAdress(String adress) {
		this.adress = adress;
	}
	public Double getAreaPrice() {
		return areaPrice;
	}
	public void setAreaPrice(Double areaPrice) {
		this.areaPrice = areaPrice;
	}
	@Override
	public String toString() {
		return "AveragePrice [region=" + region + ", adress=" + adress + ", areaPrice=" + areaPrice + "]";
	}
}
