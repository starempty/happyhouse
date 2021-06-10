package com.ssafy.happyhouse.model.mapper;

import java.util.List;

import com.ssafy.happyhouse.dto.Comments;

public interface CommentsMapper {
	List<Comments> list(int q_no);
	boolean create(Comments comments);
	boolean modify(Comments comments);
	boolean delete(int comment_no);
}
