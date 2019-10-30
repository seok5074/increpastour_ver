package com.tour.increpas.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tour.increpas.dao.IncrepasTourDaoImpl;
import com.tour.increpas.vo.NoticeBoardVO;
import com.tour.increpas.vo.Package_do_tour_VO;
import com.tour.increpas.vo.Package_tour_VO;

@Service
public class IncrepasTourServiceImpl implements IncrepasTourService {

	@Autowired
	private IncrepasTourDaoImpl increpasTourDaoImpl;

	public void setIncdao(IncrepasTourDaoImpl increpasTourDaoImpl) {
		this.increpasTourDaoImpl = increpasTourDaoImpl;
	}

	@Override
	public List<Package_tour_VO> packageList() {
		// TODO Auto-generated method stub
		// System.out.println("serviceimpl list");
		return increpasTourDaoImpl.packageList();
	}

	@Override
	public List<Package_do_tour_VO> package_do_List() {
		// 국내 관련
		return increpasTourDaoImpl.package_do_List();
	}

	@Override
	public Package_do_tour_VO getBoard(int do_idx) {
		// 국내 관련 상세보기
		return increpasTourDaoImpl.getBoard(do_idx);
	}
	
	@Override
	public List<Package_do_tour_VO> getRegion(String do_region) {
		// 국내 관련 상세보기
		return increpasTourDaoImpl.getRegion(do_region);
	}
	//맵관련
	public List<Package_do_tour_VO> map_List(){
		return increpasTourDaoImpl.map_List();
	}
	
	@Override
	public Package_tour_VO overSeaPackageDetail(int package_tour_idx) {
		// TODO Auto-generated method stub
		return increpasTourDaoImpl.overSeaPackageDetail(package_tour_idx);
	}

	@Override
	public List<NoticeBoardVO> noticeBoardList() {
		// TODO Auto-generated method stub
		return increpasTourDaoImpl.noticeBoardList();
	}

	@Override
	public void insertNoticeBoard(NoticeBoardVO noticeBoardVO) {
		// TODO Auto-generated method stub
		increpasTourDaoImpl.insertNoticeBoard(noticeBoardVO);
	}
}