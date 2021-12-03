package cn.jmu.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.jmu.po.AreaAPList;
import cn.jmu.po.HouseAPList;
import cn.jmu.po.PriceList;
import cn.jmu.po.QuantityList;

public interface RentalChartMapper {
	public List<PriceList> queryPriceList(String region);

	public List<AreaAPList> queryAreaAPList(String region);

	public List<HouseAPList> queryHouseAPList(String region);

	public List<QuantityList> queryQuantityList();
	
	public List<HouseAPList> sortHouseAPList(@Param("region")String region,@Param("houseLayout")String houseLayout);
	
	public List<AreaAPList> sortAreaAPList(String region);
	
	public List<PriceList> sortPriceList(@Param("region")String region,@Param("price")String price);
	
	public List<AreaAPList> avgAreaAPList(String region);

	public List<HouseAPList> avgHouseAPList(String region);
}
