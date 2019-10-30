package com.tour.increpas.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.tour.increpas.service.IncrepasTourService;
import com.tour.increpas.vo.NoticeBoardVO;
import com.tour.increpas.vo.Package_do_tour_VO;
import com.tour.increpas.vo.Package_tour_VO;

@Controller
public class IncrepasTourController {

	private IncrepasTourService increpasTourService;
	private final static String DEFAULT_PATH = "/resources/upload/";

	@Autowired
	public void setIncService(IncrepasTourService increpasTourService) {
		this.increpasTourService = increpasTourService;
	}

	// 스타트 페이지
	@RequestMapping(value = { "/", "/start" }, method = RequestMethod.GET)
	public String index(Model model) {

		return "startPage";
	}

	// 메인 첫페이지
	@RequestMapping(value = { "/main" }, method = RequestMethod.GET)
	public String index1(Model model) {

		return "main";
	}

	// 해외 리스트
	@RequestMapping(value = { "/packageList", "/list" }, method = RequestMethod.GET)
	public String packageList(Model model) {
		List<Package_tour_VO> packageList = increpasTourService.packageList();
		// System.out.println("controller list");
		model.addAttribute("packageList", packageList);
		return "oversea/packageList";
	}

	// 국내 메인
	@RequestMapping(value = { "/domestcpackage" }, method = RequestMethod.GET)
	public String index8(Model model) throws Exception{
		List<Package_do_tour_VO> package_do_List = increpasTourService.package_do_List();
		List<Package_do_tour_VO> map_List =increpasTourService.map_List();
		
		model.addAttribute("package_do_List", package_do_List);		
		model.addAttribute("map_List",map_List);
		
		
		// 자바스크립트에서 데이터에 접근하려면 ? -> 텍스트 아님 JSON ObjectMapper mapper = new
		ObjectMapper mapper = new ObjectMapper();
		String jsonStr = mapper.writeValueAsString(map_List);
	  
		model.addAttribute("jsonStr",jsonStr);
		 

		
		return "domesticmain";
	}

	// 국내관련
	// 국내 여행 패키지 리스트 국내 패키지 전체 리스트
	@RequestMapping(value = { "/packagedoList", "/dolist" }, method = RequestMethod.GET)
	public String package_do_List(Model model) {
		List<Package_do_tour_VO> package_do_List = increpasTourService.package_do_List();
		model.addAttribute("package_do_List", package_do_List);
		return "domestcpackage/packagedoList";
	}

	// 국내패키지 메인
	@RequestMapping(value = { "/packagemain" }, method = RequestMethod.GET)
	public String index3(Model model) {
		List<Package_do_tour_VO> package_do_List = increpasTourService.package_do_List();
		model.addAttribute("package_do_List", package_do_List);
		return "domestcpackage/packagedo";
	}

	// 국내패키지 상세보기
	@RequestMapping("/packagedodetail")
	public String package_do_detail(Model model,
			@RequestParam(value = "no", required = false) int do_idx) {

		Package_do_tour_VO package_do_tour_VO = increpasTourService.getBoard(do_idx);

		model.addAttribute("package_do_tour_VO", package_do_tour_VO);
		List<Package_do_tour_VO> package_do_List = increpasTourService.package_do_List();
		model.addAttribute("package_do_List", package_do_List);
		return "domestcpackage/packagedodetail";
	}

	// 이벤트 게임 메인페이지
	@RequestMapping(value = { "/eventpage" }, method = RequestMethod.GET)
	public String index4(Model model) {

		return "eventpage/mainevent";
	}

	// 이벤트 토토페이지
	@RequestMapping(value = { "/totopage" }, method = RequestMethod.GET)
	public String index5(Model model) {

		return "eventpage/totopage";
	}

	// 이벤트 야바위 페이지
	@RequestMapping(value = { "/yabawipage" }, method = RequestMethod.GET)
	public String index6(Model model) {

		return "eventpage/yabawipage";
	}

	// 이벤트 룰렛 페이지
	@RequestMapping(value = { "/roulettepage" }, method = RequestMethod.GET)
	public String index7(Model model) {

		return "eventpage/roulettepage";
	}

	// 공지사항 게시판
	@RequestMapping(value = { "/noticeBoardList", "/noticeList" }, method = RequestMethod.GET)
	public String noticeBoardList(Model model) {
		List<NoticeBoardVO> noticeBoardList = increpasTourService.noticeBoardList();
		model.addAttribute("noticeBoardList", noticeBoardList);
		return "board/noticeBoard";
	}

	@RequestMapping(value = "overSeaPackageDetail", method = RequestMethod.GET)
	public String overSeaPackageDetail(Model model,
			@RequestParam(value = "package_tour_idx", required = false) int package_tour_idx) {
		Package_tour_VO packageDetail = increpasTourService.overSeaPackageDetail(package_tour_idx);
		model.addAttribute("packageDetail", packageDetail);
		return "oversea/overSeaPackageDetail";
	}

	@RequestMapping(value = "insertNotice", method = RequestMethod.POST)
	public String insertNotice(HttpServletRequest request, String n_board_title, String n_board_contents,
			String n_board_writer, @RequestParam(value = "n_board_file", required = false) MultipartFile multipartFile)
			throws Exception {
		SimpleDateFormat mSimpleDateFormat = new SimpleDateFormat("yyyy.MM.dd HH:mm:ss", Locale.KOREA);
		Date currentTime = new Date();
		String mTime = mSimpleDateFormat.format(currentTime);
		NoticeBoardVO noticeBoardVO = new NoticeBoardVO();

		if (n_board_writer == null || n_board_writer == "") {
			n_board_writer = "관리자";
		}

		noticeBoardVO.setN_board_title(n_board_title);
		noticeBoardVO.setN_board_writer(n_board_writer);
		noticeBoardVO.setN_board_contents(n_board_contents);
		if (!multipartFile.isEmpty()) {
			String filePath = request.getServletContext().getRealPath(DEFAULT_PATH);
			System.out.println(filePath);
			UUID uid = UUID.randomUUID();
			String saveName = mTime + "_" + uid.toString() + "_" + multipartFile.getOriginalFilename();
			File file = new File(filePath, saveName);

			System.out.println("insertBoard - newName : " + file.getName());
			multipartFile.transferTo(file);
			noticeBoardVO.setN_board_file(saveName);
		}
		increpasTourService.insertNoticeBoard(noticeBoardVO);
		return "redirect:/noticeBoardList";
	}
}