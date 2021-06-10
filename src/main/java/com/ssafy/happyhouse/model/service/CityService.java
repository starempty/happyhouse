package com.ssafy.happyhouse.model.service;

import java.sql.SQLException;
import java.util.List;

import com.ssafy.happyhouse.dto.City;
import com.ssafy.happyhouse.dto.Dong;
import com.ssafy.happyhouse.dto.Gugun;
import com.ssafy.happyhouse.dto.House;

public interface CityService {
	List<City> selectCity() throws SQLException;
	List<Gugun> selectGugun(String sidoCode) throws SQLException;
	List<Dong> selectDong(String gugun) throws SQLException;
}
