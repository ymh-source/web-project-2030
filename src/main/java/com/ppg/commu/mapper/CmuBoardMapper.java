package com.ppg.commu.mapper;

import java.util.List;

import com.ppg.commu.domain.CmuBoardCriteria;
import com.ppg.commu.domain.CmuBoardVO;
import com.ppg.commu.domain.CmuCommentVO;

public interface CmuBoardMapper {
	public List<CmuBoardVO> getReviewBoardList();

	public List<CmuBoardVO> getReviewBoardPaging(CmuBoardCriteria cri);

	public int getTotalCount(CmuBoardCriteria cri);

	public void insert(CmuBoardVO board);

	public void insertSelectKey(CmuBoardVO board);

	public CmuBoardVO readPost(int postNum);

	public List<CmuCommentVO> getCommentList(int postNum);

	public int delReview(int postNum);

	public int updateReview(CmuBoardVO board);

	public int insertComment(CmuCommentVO comment);

	public int updateReply(int postNum);

//	public int delComment(CmuCommentVO commentNum);
//
//	public int decReply(CmuCommentVO postNum);

	public int delComment(int commentNum);

	public int decReply(int postNum);
	
	public int updateWatcher(int postNum);

}
