package com.ssafy.happyhouse.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import com.ssafy.happyhouse.dto.Comments;
import com.ssafy.happyhouse.model.service.CommentService;


@CrossOrigin(origins = { "*" }, maxAge = 6000)
@Controller
@RequestMapping("/comments")
public class CommentRestController {

	private static final Logger logger = LoggerFactory.getLogger(CommentRestController.class);
	private static final String SUCCESS = "success";
	private static final String FAIL = "fail";
	
	@Autowired
	CommentService commentService;
	
	
	@GetMapping("{q_no}")
	public ResponseEntity<List<Comments>> listComment(@PathVariable("q_no") int q_no) {
		logger.debug("listComment - 호출");
		return new ResponseEntity<>(commentService.list(q_no), HttpStatus.OK);
	}

	@PostMapping
	public ResponseEntity<String> createComment(@RequestBody Comments comments) {
		logger.debug("createComment - 호출");
		if(commentService.create(comments)) {
			return new ResponseEntity<String>(SUCCESS, HttpStatus.OK);
		}
		return new ResponseEntity<String>(FAIL, HttpStatus.NO_CONTENT);
	}

	@PutMapping
	public ResponseEntity<String> modifyComment(@RequestBody Comments comments) {
		logger.debug("modifyComment - 호출");
		logger.debug("" + comments);
		System.out.println("댓글 수정하자!!!"  + comments);
		if(commentService.modify(comments)) {
			System.out.println("댓글 수정 성공!!!");
			return new ResponseEntity<String>(SUCCESS, HttpStatus.OK);
		}
		return new ResponseEntity<String>(FAIL, HttpStatus.NO_CONTENT);
	}

	@DeleteMapping("{comment_no}")
	public ResponseEntity<String> deleteBook(@PathVariable("comment_no") int commentNO) {
		logger.debug("deleteBook - 호출");
		if(commentService.delete(commentNO)) {
			return new ResponseEntity<String>(SUCCESS, HttpStatus.OK);
		}
		return new ResponseEntity<String>(FAIL, HttpStatus.NO_CONTENT);
	}
	
}
