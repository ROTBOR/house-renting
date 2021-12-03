package cn.jmu.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.jmu.mapper.RentalChartMapper;
import cn.jmu.po.AreaAPList;
import cn.jmu.po.HouseAPList;
import cn.jmu.po.PriceList;
import cn.jmu.po.QuantityList;
import cn.jmu.service.RentalChartService;

@Service
public class RentalChartServiceImpl implements RentalChartService {
	@Resource(name = "rentalChartMapper")
	private RentalChartMapper rentalChartMapper;

	public List<PriceList> queryPriceList(String region) {
		return this.rentalChartMapper.queryPriceList(region);
	}

	public List<AreaAPList> queryAreaAPList(String region) {
		return this.rentalChartMapper.queryAreaAPList(region);
	}

	public List<HouseAPList> queryHouseAPList(String region) {
		return this.rentalChartMapper.queryHouseAPList(region);
	}

	public List<QuantityList> queryQuantityList() {
		return this.rentalChartMapper.queryQuantityList();
	}
	
	public List<HouseAPList> sortHouseAPList(String region,String houseLayout){
		return this.rentalChartMapper.sortHouseAPList(region,houseLayout);
	}
	
	public List<AreaAPList> sortAreaAPList(String region){
		return this.rentalChartMapper.sortAreaAPList(region);
	}
	
	public List<PriceList> sortPriceList(String region,String price){
		return this.rentalChartMapper.sortPriceList(region,price);
	}
	
	public List<AreaAPList> avgAreaAPList(String region){
		return this.rentalChartMapper.avgAreaAPList(region);
	}

	public List<HouseAPList> avgHouseAPList(String region){
		return this.rentalChartMapper.avgHouseAPList(region);
	}
}
