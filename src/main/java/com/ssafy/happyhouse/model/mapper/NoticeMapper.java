package com.ssafy.happyhouse.model.mapper;

import java.sql.SQLException;
import java.util.List;

import com.ssafy.happyhouse.dto.Notice;
import com.ssafy.happyhouse.dto.SearchCondition;

public interface NoticeMapper {
	// 글 작성
		void registerArticle(Notice notice) throws SQLException;
		
		// 글 목록
		List<Notice> listArticle() throws SQLException;
		
		// 글 검색
		List<Notice> listArticle(SearchCondition condition) throws SQLException;
		
		// 글 조회 (수정시 필요)
		Notice getArticle(int articleNo) throws SQLException;
		
		// 글 수정
		void modifyArticle(Notice notice) throws SQLException;
		
		// 글 삭제
		void deleteArtice(int articleNo) throws SQLException;

		int getTotalCount(SearchCondition condition) throws SQLException;
		
		// 조회수 증가
		void updateViewCnt(int articleNo) throws Exception;
		
		// 조회순위별 글 목록
		List<Notice> listArticleRanking() throws SQLException;
	
}
