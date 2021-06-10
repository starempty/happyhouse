package com.ssafy.happyhouse.model.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.happyhouse.dto.Notice;
import com.ssafy.happyhouse.dto.SearchCondition;
import com.ssafy.happyhouse.model.mapper.NoticeMapper;
import com.ssafy.happyhouse.util.PageNavigation;
@Service
public class NoticeServiceImpl implements NoticeService {
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public void registerArticle(Notice notice) throws Exception {
		sqlSession.getMapper(NoticeMapper.class).registerArticle(notice);
	}

	@Override
	public List<Notice> listArticle(SearchCondition condition) throws Exception {
		return sqlSession.getMapper(NoticeMapper.class).listArticle(condition);
	}

	@Override
	public Notice getArticle(int articleNo) throws Exception {
		return sqlSession.getMapper(NoticeMapper.class).getArticle(articleNo);
	}

	@Override
	public void modifyArticle(Notice notice) throws Exception {
		sqlSession.getMapper(NoticeMapper.class).modifyArticle(notice);
	}

	@Override
	public void deleteArtice(int articleNo) throws Exception {
		sqlSession.getMapper(NoticeMapper.class).deleteArtice(articleNo);
	}

	@Override
	public List<Notice> listArticle() throws Exception {
		return sqlSession.getMapper(NoticeMapper.class).listArticle();
	}

	@Override
	public void updateViewCnt(int articleNo) throws Exception {
		sqlSession.getMapper(NoticeMapper.class).updateViewCnt(articleNo);
	}
	
	@Override
	public List<Notice> listArticleRanking() throws SQLException {
		return sqlSession.getMapper(NoticeMapper.class).listArticleRanking();
	}
//	public PageNavigation makeNavigator(SearchCondition condition) throws Exception {
//		int pg = condition.getCurrentPage();
//		
//		PageNavigation navigation = new PageNavigation();
//		int naviSize = navigation.getNaviSize();
//		int totalCount = sqlSession.getMapper(NoticeMapper.class).getTotalCount(condition);
//		navigation.setTotalCount(totalCount);
//		int totalPageCount = (totalCount-1)/navigation.getCountPerPage() +1;
//		navigation.setTotalPageCount(totalPageCount);
//		navigation.setCurrentPage(pg);
//		navigation.setNaviSize(naviSize);
//		navigation.setStartRange(pg <= naviSize);
//		navigation.setEndRange((totalPageCount-1)/naviSize*naviSize < pg);
//		navigation.makeNavigator();
//		
//		System.out.println(navigation.toString());
//		
//		return navigation;
//	}
	@Override
	public Map<String, Object> pagingSearch(SearchCondition condition) throws SQLException {
		int pg = condition.getCurrentPage();
		
		int totalCount = sqlSession.getMapper(NoticeMapper.class).getTotalCount(condition);
		PageNavigation nav = new PageNavigation(pg, totalCount);
		Map<String, Object> map = new HashMap<String, Object>();
		System.out.println(condition.toString());
		map.put("notices", sqlSession.getMapper(NoticeMapper.class).listArticle(condition));
		System.out.println(nav.toString());
		map.put("navigation", nav);
		
		return map;
	}
}
