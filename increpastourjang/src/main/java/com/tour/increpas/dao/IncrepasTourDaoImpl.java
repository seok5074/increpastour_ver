package com.tour.increpas.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tour.increpas.vo.NoticeBoardVO;
import com.tour.increpas.vo.Package_do_tour_VO;
import com.tour.increpas.vo.Package_tour_VO;

@Repository
public class IncrepasTourDaoImpl implements IncrepasTourDao {

	private final String NAME_SPACE = "com.tour.increpas.package.tour.mapper";

	private SqlSessionTemplate sqlSession;

	@Autowired
	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public List<Package_tour_VO> packageList() {
		// TODO Auto-generated method stub
		// System.out.println("packageList");
		return sqlSession.selectList(NAME_SPACE + ".packageList");
	}

	@Override
	public List<Package_do_tour_VO> package_do_List() {
		// 국내여행 관련
		return sqlSession.selectList(NAME_SPACE + ".package_do_List");
	}

	@Override
	public Package_do_tour_VO getBoard(int do_idx) {

		return sqlSession.selectOne(NAME_SPACE + ".getBoard", do_idx);
	}
	
	@Override
	public List<Package_do_tour_VO> getRegion(String do_region) {
		
		System.out.println("IncrepasTourDao : getRegion - " + do_region);
		return sqlSession.selectList(NAME_SPACE + ".getRegion", do_region);
	}
	
	// 맵 관련
	@Override
	public List<Package_do_tour_VO> map_List() {
		return sqlSession.selectList(NAME_SPACE + ".map_List");
	}

	@Override
	public Package_tour_VO overSeaPackageDetail(int package_tour_idx) {
		return sqlSession.selectOne(NAME_SPACE + ".overSeaPackageDetail", package_tour_idx);
	}

	@Override
	public List<NoticeBoardVO> noticeBoardList() {
		return sqlSession.selectList(NAME_SPACE + ".noticeBoardList");
	}

	@Override
	public void insertNoticeBoard(NoticeBoardVO noticeBoardVO) {
		sqlSession.insert(NAME_SPACE + ".insertNoticeBoard", noticeBoardVO);
	}

	
	
	
}