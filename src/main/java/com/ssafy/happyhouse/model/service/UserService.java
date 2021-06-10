package com.ssafy.happyhouse.model.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.ssafy.happyhouse.dto.User;


public interface UserService {
	// 회원등록
	int registerUser(User user) throws Exception;
	
	// 회원정보 조회
	User getUser(String id) throws Exception;
	
	// 회원정보 수정
	int modifyUser(User user) throws Exception;
	
	// 회원탈퇴
	int deleteUser(String id) throws Exception;
	
	public User findUserUpdate(String id, String uName);
	
	public int findPassUpdate(String id, String pass);

	// 관심지역 리스트 얻기
	List<String> getFavorite(String user_id) throws SQLException;

	// 관심지역 추가
	int addFavorite(String user_id, int house_no) throws SQLException;
	
	// 관심지역 삭제
	int delFavorite(String user_id, int house_no) throws SQLException;

	// 관심지역 중복검사
	int favoriteDupcheck(String user_id, int house_no) throws SQLException;
}
