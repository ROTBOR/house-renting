package cn.jmu.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.jmu.po.AreaAPList;
import cn.jmu.po.HouseAPList;
import cn.jmu.po.PriceList;
import cn.jmu.po.QuantityList;
import cn.jmu.service.RentalChartService;

@Controller
public class RentalChartController {
	@Resource(name = "rentalChartServiceImpl")
	private RentalChartService rentalChartService;

	@RequestMapping(value = "/queryPriceList.do")
	public String queryPriceList(Model model) {
		List<PriceList> p1 = this.rentalChartService.queryPriceList("思明");
		List<PriceList> p2 = this.rentalChartService.queryPriceList("湖里");
		List<PriceList> p3 = this.rentalChartService.queryPriceList("集美");
		List<PriceList> p4 = this.rentalChartService.queryPriceList("海沧");
		List<PriceList> p5 = this.rentalChartService.queryPriceList("翔安");
		List<PriceList> p6 = this.rentalChartService.queryPriceList("同安");
		List<PriceList> p7 = this.rentalChartService.queryPriceList("角美");
		if (p1 == null)
			return "error";
		model.addAttribute("smlist", p1);
		model.addAttribute("hllist", p2);
		model.addAttribute("jmlist", p3);
		model.addAttribute("hclist", p4);
		model.addAttribute("xalist", p5);
		model.addAttribute("talist", p6);
		model.addAttribute("jiaomeilist", p7);
		return "showPriceChart";
	}
	
	@RequestMapping(value = "/queryAreaAPList.do")
	public String queryAreaAPList(Model model) {
		List<AreaAPList> p1 = this.rentalChartService.queryAreaAPList("思明");
		List<AreaAPList> p2 = this.rentalChartService.queryAreaAPList("湖里");
		List<AreaAPList> p3 = this.rentalChartService.queryAreaAPList("集美");
		List<AreaAPList> p4 = this.rentalChartService.queryAreaAPList("海沧");
		List<AreaAPList> p5 = this.rentalChartService.queryAreaAPList("翔安");
		List<AreaAPList> p6 = this.rentalChartService.queryAreaAPList("同安");
		List<AreaAPList> p7 = this.rentalChartService.queryAreaAPList("角美");
		if (p1 == null)
			return "error";
		model.addAttribute("smlist", p1);
		model.addAttribute("hllist", p2);
		model.addAttribute("jmlist", p3);
		model.addAttribute("hclist", p4);
		model.addAttribute("xalist", p5);
		model.addAttribute("talist", p6);
		model.addAttribute("jiaomeilist", p7);
		model.addAttribute("smavg", this.rentalChartService.avgAreaAPList("思明"));
		model.addAttribute("hlavg", this.rentalChartService.avgAreaAPList("湖里"));
		model.addAttribute("jmavg", this.rentalChartService.avgAreaAPList("集美"));
		model.addAttribute("hcavg", this.rentalChartService.avgAreaAPList("海沧"));
		model.addAttribute("xaavg", this.rentalChartService.avgAreaAPList("翔安"));
		model.addAttribute("taavg", this.rentalChartService.avgAreaAPList("同安"));
		model.addAttribute("jiaomeiavg", this.rentalChartService.avgAreaAPList("角美"));
		return "showAreaChart";
	}
	
	@RequestMapping(value = "/queryHouseAPList.do")
	public String queryHouseAPList(Model model) {
		List<HouseAPList> p1 = this.rentalChartService.queryHouseAPList("思明");
		List<HouseAPList> p2 = this.rentalChartService.queryHouseAPList("湖里");
		List<HouseAPList> p3 = this.rentalChartService.queryHouseAPList("集美");
		List<HouseAPList> p4 = this.rentalChartService.queryHouseAPList("海沧");
		List<HouseAPList> p5 = this.rentalChartService.queryHouseAPList("翔安");
		List<HouseAPList> p6 = this.rentalChartService.queryHouseAPList("同安");
		List<HouseAPList> p7 = this.rentalChartService.queryHouseAPList("角美");
		if (p1 == null)
			return "error";
		model.addAttribute("smlist", p1);
		model.addAttribute("hllist", p2);
		model.addAttribute("jmlist", p3);
		model.addAttribute("hclist", p4);
		model.addAttribute("xalist", p5);
		model.addAttribute("talist", p6);
		model.addAttribute("jiaomeilist", p7);
		model.addAttribute("smavg", this.rentalChartService.avgHouseAPList("思明"));
		model.addAttribute("hlavg", this.rentalChartService.avgHouseAPList("湖里"));
		model.addAttribute("jmavg", this.rentalChartService.avgHouseAPList("集美"));
		model.addAttribute("hcavg", this.rentalChartService.avgHouseAPList("海沧"));
		model.addAttribute("xaavg", this.rentalChartService.avgHouseAPList("翔安"));
		model.addAttribute("taavg", this.rentalChartService.avgHouseAPList("同安"));
		model.addAttribute("jiaomeiavg", this.rentalChartService.avgHouseAPList("角美"));
		return "showHouseChart";
	}
	
	@RequestMapping(value = "/queryQuantityList.do")
	public String queryQuantityList(Model model) {
		List<QuantityList> pl = this.rentalChartService.queryQuantityList();
		if (pl == null)
			return "error";
		model.addAttribute("pricelist", pl);
		return "showQuantityChart";
	}
	
	@RequestMapping(value = "/sortPriceList.do")
	public String sortPriceList(String region,String price,Model model) {
		List<PriceList> pl = this.rentalChartService.sortPriceList(region,price);
		if (pl == null)
			return "error";
		model.addAttribute("pricelist", pl);
		return "showPriceResult";
	}
	
	@RequestMapping(value = "/sortAreaAPList.do")
	public String sortAreaAPList(String region,Model model) {
		List<AreaAPList> pl = this.rentalChartService.sortAreaAPList(region);
		if (pl == null)
			return "error";
		model.addAttribute("pricelist", pl);
		return "showAreaResult";
	}
	
	@RequestMapping(value = "/sortHouseAPList.do")
	public String sortHouseAPList(String region,String houseLayout,Model model) {
		List<HouseAPList> pl = this.rentalChartService.sortHouseAPList(region,houseLayout);
		if (pl == null)
			return "error";
		model.addAttribute("pricelist", pl);
		return "showHouseResult";
	}
}
