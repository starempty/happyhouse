package com.ssafy.happyhouse.model.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.happyhouse.dto.City;
import com.ssafy.happyhouse.dto.Dong;
import com.ssafy.happyhouse.dto.Gugun;
import com.ssafy.happyhouse.dto.House;
import com.ssafy.happyhouse.model.mapper.CityMapper;
@Service
public class CityServiceImpl implements CityService {
	
	@Autowired
	private CityMapper cityMapper;

	@Override
	public List<City> selectCity() throws SQLException {
		return cityMapper.selectCity();
	}

	@Override
	public List<Gugun> selectGugun(String sidoCode) throws SQLException {
		return cityMapper.selectGugun(sidoCode);
	}

	@Override
	public List<Dong> selectDong(String gugun) throws SQLException {
		return cityMapper.selectDong(gugun);
	}
}
