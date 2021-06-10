package com.ssafy.happyhouse.model.service;

import java.sql.SQLException;
import java.util.List;

import com.ssafy.happyhouse.dto.FavoriteArea;
import com.ssafy.happyhouse.dto.House;

public interface FavoriteAreaService {
	// 전체 검색
	List<House> selectUser(String user_id) throws SQLException;

	// 하우스 넘버 검색
	List<House> selectHouseNo(String user_id, int house_no) throws SQLException;
	
	public int addFavorite(String user_id, int house_no);

	public int delFavorite(String user_id, int house_no);

	public int favoriteDupcheck(String user_id, int house_no);
}
