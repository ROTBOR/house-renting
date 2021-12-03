package cn.jmu.service;

import java.util.List;

import cn.jmu.po.AreaAPList;
import cn.jmu.po.HouseAPList;
import cn.jmu.po.PriceList;
import cn.jmu.po.QuantityList;

public interface RentalChartService {
	public List<PriceList> queryPriceList(String region);

	public List<AreaAPList> queryAreaAPList(String region);

	public List<HouseAPList> queryHouseAPList(String region);

	public List<QuantityList> queryQuantityList();
	
	public List<HouseAPList> sortHouseAPList(String region,String houseLayout);
	
	public List<AreaAPList> sortAreaAPList(String region);
	
	public List<PriceList> sortPriceList(String region,String price);

	public List<AreaAPList> avgAreaAPList(String region);

	public List<HouseAPList> avgHouseAPList(String region);
}
