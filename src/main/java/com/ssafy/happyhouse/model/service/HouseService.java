package com.ssafy.happyhouse.model.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.ssafy.happyhouse.dto.ChartData;
import com.ssafy.happyhouse.dto.House;


public interface HouseService {
	// 전체 검색
	List<House> select() throws Exception;
	
	// 동별 검색
	List<House> selectDong(String dong, String sortName, String direction) throws Exception;
	
	// 코드 검색
	List<String> selectApts(String gugun_code) throws SQLException;
	
	// 아파트별 검색
	List<House> selectApt(String aptName, String sortName, String direction) throws Exception;
	
	// 위도 경도 
	Map<String, String> selectLoc(String aptName) throws Exception;
	
	House searchAptDetail(String no) throws SQLException;
	
	List<ChartData> selectData(String dong) throws Exception;
}
