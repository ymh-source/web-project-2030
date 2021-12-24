package com.ppg.commu.service;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ppg.commu.domain.CmuBoardCriteria;
import com.ppg.commu.domain.CmuBoardVO;
import com.ppg.commu.domain.CmuCommentVO;
import com.ppg.commu.mapper.CmuBoardMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class CmuBoardServiceImpl implements CmuBoardService {

	@Autowired
	private CmuBoardMapper mapper;

	@Override
	public List<CmuBoardVO> getReviewBoardList(CmuBoardCriteria cri) {
		return mapper.getReviewBoardPaging(cri);
	}

	@Override
	public int getTotal(CmuBoardCriteria cri) {
		return mapper.getTotalCount(cri);
	}

	@Override
	public CmuBoardVO getPost(int postNum) {
		return mapper.readPost(postNum);
	}

	@Override
	public void writePost(CmuBoardVO board) {
		mapper.insert(board);
	}

	@Override
	public List<CmuCommentVO> getCommentList(int postNum) {
		return mapper.getCommentList(postNum);
	}

	@Override
	public boolean remove(int postNum) {
		return mapper.delReview(postNum) == 1;
	}

	@Override
	public boolean modify(CmuBoardVO board) {
		return mapper.updateReview(board) == 1;
	}

	@Override
	public int regComment(CmuCommentVO comment) {
		return mapper.insertComment(comment);
	}

	@Override
	public boolean updateReply(int postNum) {
		return mapper.updateReply(postNum) == 1;
	}

//	public int delComment(CmuCommentVO commentNum) {
//		return mapper.delComment(commentNum);
//	}
//
//	public boolean decReply(CmuCommentVO postNum) {
//		return mapper.decReply(postNum) == 1;
//	}
	
	@Override
	public int delComment(int commentNum) {
		return mapper.delComment(commentNum);
	}

	@Override
	public boolean decReply(int postNum) {
		return mapper.decReply(postNum) == 1;
	}
	
	@Override
	public boolean updateWatcher(int postNum) {
		return mapper.updateWatcher(postNum) == 1;
	}
	
}
