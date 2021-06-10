package com.ssafy.happyhouse.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.happyhouse.dto.Comments;
import com.ssafy.happyhouse.model.mapper.CommentsMapper;
@Service
public class CommentServiceImpl implements CommentService {
	
	@Autowired
	private CommentsMapper commentsMapper;
	
	@Override
	public List<Comments> list(int q_no) {
		return commentsMapper.list(q_no);
	}

	@Override
	public boolean create(Comments comments) {
		return commentsMapper.create(comments);
	}

	@Override
	public boolean modify(Comments comments) {
		return commentsMapper.modify(comments);
	}

	@Override
	public boolean delete(int comment_no) {
		return commentsMapper.delete(comment_no);
	}

}
