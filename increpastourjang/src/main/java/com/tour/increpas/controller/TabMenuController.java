package com.tour.increpas.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.tour.increpas.service.IncrepasTourService;
import com.tour.increpas.vo.Package_do_tour_VO;

@Controller
public class TabMenuController {

	@Autowired
	private IncrepasTourService increpasTourService;

	// 국내 메인페이지 ajax 관련
	@RequestMapping("/mapapi")
	public String mapapi(Model model) {
		return "mapapi";
	}

	@RequestMapping("/selectcitypackage")
	public String selectcitypackage(Model model) {
		return "selectcitypackage";
	}

	@RequestMapping("/clickMenu1")
	public String clickMenu1(Model model) {
		return "mapapi";
	}

	@RequestMapping("/clickMenu2")
	public String clickMenu2(Model model) {
		return "do_tab2";
	}

	@RequestMapping("/cityPackage")
	public String cityPackage(Model model, String regionName) {
		List<Package_do_tour_VO> vo = increpasTourService.getRegion(regionName);
		/* System.out.println("cityPackage : " + vo.getdo_name()); */
		List<Package_do_tour_VO> package_do_List = increpasTourService.package_do_List();
		model.addAttribute("package_do_List", package_do_List);

		// 서비스 -> dao -> mapper로 넘겨주면 됨
		model.addAttribute("regionName", regionName);
		model.addAttribute("tourPackage", vo);

		return "selectcitypackage";
	}

	@RequestMapping("/selectcity1")
	public String selectcity1(Model model, String regionName) {
		List<Package_do_tour_VO> vo = increpasTourService.getRegion(regionName);
		List<Package_do_tour_VO> package_do_List = increpasTourService.package_do_List();
		model.addAttribute("package_do_List", package_do_List);

		// 서비스 -> dao -> mapper로 넘겨주면 됨
		model.addAttribute("regionName", regionName);
		model.addAttribute("tourPackage", vo);

		return "selectcitypackage";
	}

	/*
	 * 키워드 랭킹 검색창 아래있는 실시간 점멸되는 그거입니다 아직미완성 서비스랑 dao sql문 db관련 어떻게해야할지고민후 진행!!
	 */
	/*
	 * @RequestMapping("/searchRank") public String searchRank(Model model ) {
	 * 
	 * return IncrepasTourService.rankKeyword(); }
	 */

	/*--------------국내 탭메뉴 -------------관리자 팀장님------------------------------------------------- */
	@RequestMapping("/activeTab")
	public String bodyTabMenu(Model model, @RequestParam(value = "tab", defaultValue = "tab01") String tab) {

		return tab;
	}

	@RequestMapping("/activeOsTab")
	public String bodyOsTabMenu(Model model, @RequestParam(value = "osTab", defaultValue = "osTab01") String osTab) {

		return osTab;
	}

	@RequestMapping("/cityList")
	public String cityListForm(Model model) {

		return "tab01_1";
	}

	@RequestMapping("/osCityList")
	public String osCityListForm(Model model) {
		return "osTab01_1";
	}
	/*--------------국내 탭메뉴 -------------관리자 팀장님------------------------------------------------- */

}
