package com.ssafy.happyhouse.model.service;

import java.util.List;
import com.ssafy.happyhouse.dto.Question;

public interface QuestService {
	List<Question> list();
	Question search(int q_no);
	boolean create(Question quest);
	boolean modify(Question quest);
	boolean delete(int q_no);
}
