package cn.jmu.po;

public class PriceList {
	private String region;
	private String adress;
	private String price;
	private int number;

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

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		char first = price.charAt(0);
		char second = price.charAt(1);
		if (first=='0'&&second!='-')
			price = price.substring(1);
		this.price = price;
	}

	public int getNumber() {
		return number;
	}

	public void setNumber(int number) {
		this.number = number;
	}

	@Override
	public String toString() {
		return "PriceList [region=" + region + ", address=" + adress + ", price=" + price + ", number=" + number + "]";
	}
}
