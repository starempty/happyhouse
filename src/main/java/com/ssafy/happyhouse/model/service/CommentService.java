package com.ssafy.happyhouse.model.service;

import java.util.List;

import com.ssafy.happyhouse.dto.Comments;

public interface CommentService {
	List<Comments> list(int q_no);
	boolean create(Comments comments);
	boolean modify(Comments comments);
	boolean delete(int comment_no);
}
