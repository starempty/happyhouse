package com.ssafy.happyhouse.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import com.ssafy.happyhouse.dto.Question;
import com.ssafy.happyhouse.model.service.QuestService;


@CrossOrigin(origins = { "*" }, maxAge = 6000)
@Controller
@RequestMapping("/question")
public class QuestRestController {

	private static final Logger logger = LoggerFactory.getLogger(QuestRestController.class);
	private static final String SUCCESS = "success";
	private static final String FAIL = "fail";
	
	@Autowired
	QuestService questService;

	@GetMapping
	public ResponseEntity<List<Question>> listQuest() {
		logger.debug("listQuest - 호출");
		return new ResponseEntity<>(questService.list(), HttpStatus.OK);
	}

	@GetMapping("/{q_no}")
	public ResponseEntity<Question> searchQuest(@PathVariable int q_no) {
		logger.debug("searchQuest - 호출");
		return new ResponseEntity<>(questService.search(q_no), HttpStatus.OK);
	}

	@PostMapping
	public ResponseEntity<String> createQuest( @RequestBody  Question quest) {
		logger.debug("createQuest - 호출");
		System.out.println(quest.toString());
		if(questService.create(quest)) {
			return new ResponseEntity<String>(SUCCESS, HttpStatus.OK);
		}
		return new ResponseEntity<String>(FAIL, HttpStatus.NO_CONTENT);
	}

	@PutMapping("{q_no}")
	public ResponseEntity<String> modifyQuest( @RequestBody  Question quest) {
		logger.debug("modifyQuest - 호출");
		logger.debug("" + quest);
		if(questService.modify(quest)) {
			return new ResponseEntity<String>(SUCCESS, HttpStatus.OK);
		}
		return new ResponseEntity<String>(FAIL, HttpStatus.NO_CONTENT);
	}

	@DeleteMapping("{q_no}")
	public ResponseEntity<String> deleteQuest(@PathVariable("q_no") int q_no) {
		logger.debug("deleteQuest - 호출");
		if(questService.delete(q_no)) {
			return new ResponseEntity<String>(SUCCESS, HttpStatus.OK);
		}
		return new ResponseEntity<String>(FAIL, HttpStatus.NO_CONTENT);
	}
}
