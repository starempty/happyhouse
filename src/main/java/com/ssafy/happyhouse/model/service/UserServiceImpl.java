package com.ssafy.happyhouse.model.service;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.happyhouse.dto.User;
import com.ssafy.happyhouse.model.mapper.UserMapper;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public int registerUser(User user) throws Exception {
		return sqlSession.getMapper(UserMapper.class).registerUser(user);
	}
	
	@Override
	public User getUser(String id) throws Exception {
		return sqlSession.getMapper(UserMapper.class).getUser(id);
	}

	@Override
	public int modifyUser(User user) throws Exception {
		return sqlSession.getMapper(UserMapper.class).modifyUser(user);
	}

	@Override
	public int deleteUser(String id) throws Exception {
		return sqlSession.getMapper(UserMapper.class).deleteUser(id);
	}

	@Override
	public List<String> getFavorite(String user_id) throws SQLException {
		return sqlSession.getMapper(UserMapper.class).getFavorite(user_id);
	}

	@Override
	public int addFavorite(String user_id, int house_no) throws SQLException {
		return sqlSession.getMapper(UserMapper.class).addFavorite(user_id, house_no);
	}

	@Override
	public int delFavorite(String user_id, int house_no) throws SQLException {
		return sqlSession.getMapper(UserMapper.class).delFavorite(user_id, house_no);
	}

	@Override
	public int favoriteDupcheck(String user_id, int house_no) throws SQLException {
		return sqlSession.getMapper(UserMapper.class).favoriteDupcheck(user_id, house_no);
	}

	@Override
	public int findPassUpdate(String id, String pass) {
		return sqlSession.getMapper(UserMapper.class).findPassUpdate(id, pass);
	}

	@Override
	public User findUserUpdate(String id, String uName) {
		return sqlSession.getMapper(UserMapper.class).findUserUpdate(id, uName);
	}
}
