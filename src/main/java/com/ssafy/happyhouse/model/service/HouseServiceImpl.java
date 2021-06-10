package com.ssafy.happyhouse.model.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.happyhouse.dto.ChartData;
import com.ssafy.happyhouse.dto.House;
import com.ssafy.happyhouse.model.mapper.HouseMapper;

@Service
public class HouseServiceImpl implements HouseService {
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<House> select() throws Exception {
		return sqlSession.getMapper(HouseMapper.class).select();
	}

	

	@Override
	public Map<String, String> selectLoc(String aptName) throws Exception {
		return sqlSession.getMapper(HouseMapper.class).selectLoc(aptName);
	}

	@Override
	public House searchAptDetail(String no) throws SQLException {
		return sqlSession.getMapper(HouseMapper.class).searchAptDetail(no);
	}

	@Override
	public List<ChartData> selectData(String dong) throws Exception {
		return sqlSession.getMapper(HouseMapper.class).selectData(dong);
	}

	@Override
	public List<String> selectApts(String gugun_code) throws SQLException {
		return sqlSession.getMapper(HouseMapper.class).selectApts(gugun_code);
	}

	@Override
	public List<House> selectApt(String aptName, String sortName, String direction) throws Exception {
		return sqlSession.getMapper(HouseMapper.class).selectApt(aptName, sortName, direction);
	}



	@Override
	public List<House> selectDong(String dong, String sortName, String direction) throws Exception {
		return sqlSession.getMapper(HouseMapper.class).selectDong(dong, sortName, direction);
	}

}
