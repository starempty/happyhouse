package com.ssafy.happyhouse.model.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.happyhouse.dto.FavoriteArea;
import com.ssafy.happyhouse.dto.House;
import com.ssafy.happyhouse.model.mapper.FavoriteAreaMapper;
@Service
public class FavoriteAreaServiceImpl implements FavoriteAreaService {
	
	@Autowired
	private FavoriteAreaMapper favoriteAreaMapper;
	@Override
	public List<House> selectUser(String user_id) throws SQLException {
		return favoriteAreaMapper.selectUser(user_id);
	}

	@Override
	public List<House> selectHouseNo(String user_id, int house_no) throws SQLException {
		return favoriteAreaMapper.selectHouseNo(user_id, house_no);
	}

	@Override
	public int addFavorite(String user_id, int house_no) {
		return favoriteAreaMapper.addFavorite(user_id, house_no);
	}

	@Override
	public int delFavorite(String user_id, int house_no) {
		return favoriteAreaMapper.delFavorite(user_id, house_no);
	}

	@Override
	public int favoriteDupcheck(String user_id, int house_no) {
		return favoriteAreaMapper.favoriteDupcheck(user_id, house_no);
	}

}
