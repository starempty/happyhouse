package com.ssafy.happyhouse.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.happyhouse.dto.Question;
import com.ssafy.happyhouse.model.mapper.QuestMapper;

@Service
public class QuestServiceImpl implements QuestService{
	@Autowired
	private QuestMapper questMapper;
	
	@Override
	public List<Question> list() {
		return questMapper.list();
	}

	@Override
	public Question search(int q_no) {
		return questMapper.search(q_no);
	}

	@Override
	public boolean create(Question quest) {
		return questMapper.create(quest) == 1;
	}

	@Override
	public boolean modify(Question quest) {
		return questMapper.modify(quest) == 1;
	}

	@Override
	public boolean delete(int q_no) {
		return questMapper.delete(q_no) == 1;
	}

}
