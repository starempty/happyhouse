package com.ssafy.happyhouse.model.mapper;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.ssafy.happyhouse.dto.ChartData;
import com.ssafy.happyhouse.dto.House;

public interface HouseMapper {
		// 전체 검색
		List<House> select() throws SQLException;
		
		// 동별 검색
		List<House> selectDong(String searchDong, String sortName, String direction) throws SQLException;
		
		// 코드 검색
		List<String> selectApts(String gugun_code) throws SQLException;
		
		// 아파트별 검색
		List<House> selectApt(String aptName, String sortName, String direction) throws SQLException;
		
		// 위치 검색
		Map<String, String> selectLoc(String aptName) throws SQLException;
		
		// 자세히 보기
		House searchAptDetail(String no) throws SQLException;
		
		List<ChartData> selectData(String dong) throws SQLException;
}
