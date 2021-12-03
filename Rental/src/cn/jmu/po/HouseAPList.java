package cn.jmu.po;

public class HouseAPList {
	private String region;
	private String adress;
	private String houseLayout;
	private Double averagePrice;

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

	public String getHouseLayout() {
		return houseLayout;
	}

	public void setHouseLayout(String houseLayout) {
		this.houseLayout = houseLayout;
	}

	public Double getAveragePrice() {
		return averagePrice;
	}

	public void setAveragePrice(Double averagePrice) {
		this.averagePrice = averagePrice;
	}

	@Override
	public String toString() {
		return "HouseAPList [region=" + region + ", adress=" + adress + ", houselayout=" + houseLayout
				+ ", averagePrice=" + averagePrice + "]";
	}
}
