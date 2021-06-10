package com.ssafy.happyhouse.model.mapper;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.ssafy.happyhouse.dto.User;

public interface UserMapper {

	public User getUser(String id) throws SQLException;
	
//	REST
	public int registerUser(User memberDto);

	public int modifyUser(User memberDto);
	
	public int deleteUser(String userid);
	
	public User findUserUpdate(String id, String uName);
	
	public int findPassUpdate(String id, String pass);
	
	public List<String> getFavorite(String user_id);
	
	public int addFavorite(String user_id, int house_no);

	public int delFavorite(String user_id, int house_no);

	public int favoriteDupcheck(String user_id, int house_no);
}
