package com.ssafy.happyhouse.model.mapper;

import java.util.List;

import com.ssafy.happyhouse.dto.Question;


public interface QuestMapper {
	List<Question> list();
	Question search(int q_no);
	int create(Question quest);
	int modify(Question quest);
	int delete(int q_no);
}
