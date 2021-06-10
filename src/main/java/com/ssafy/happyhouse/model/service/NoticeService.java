package com.ssafy.happyhouse.model.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.ssafy.happyhouse.dto.Notice;
import com.ssafy.happyhouse.dto.SearchCondition;
import com.ssafy.happyhouse.util.PageNavigation;


public interface NoticeService {
	// 글 작성
	void registerArticle(Notice notice) throws Exception;
	
	// 글 목록
	public List<Notice> listArticle() throws Exception;
	
	// 글 검색
	List<Notice> listArticle(SearchCondition condition) throws Exception;
	
	// 글 조회 (수정시 필요)
	Notice getArticle(int articleNo) throws Exception;
	
	// 글 수정
	void modifyArticle(Notice notice) throws Exception;
	
	// 글 삭제
	void deleteArtice(int articleNo) throws Exception;
	
	// 조회수 증가
	void updateViewCnt(int articleNo) throws Exception;
//	PageNavigation makeNavigator(SearchCondition condition) throws Exception;
	
	// 조회순위별 글 목록
	List<Notice> listArticleRanking() throws SQLException;
	
	public Map<String, Object> pagingSearch(SearchCondition condition) throws SQLException;
}
