package com.tour.increpas.service;

import java.util.List;

import com.tour.increpas.vo.NoticeBoardVO;
import com.tour.increpas.vo.Package_do_tour_VO;
import com.tour.increpas.vo.Package_tour_VO;

public interface IncrepasTourService {
	public abstract List<Package_tour_VO> packageList();
	public abstract Package_tour_VO overSeaPackageDetail(int package_tour_idx);
	public abstract List<Package_do_tour_VO> package_do_List();
	public abstract Package_do_tour_VO getBoard(int do_idx);
	public abstract List<Package_do_tour_VO> getRegion(String do_region);
	
	
	public abstract List<NoticeBoardVO> noticeBoardList();
	public abstract void insertNoticeBoard(NoticeBoardVO noticeBoardVO);
	// 맵 관련
	public abstract List<Package_do_tour_VO> map_List();
}