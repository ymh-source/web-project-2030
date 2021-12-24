package com.ppg.commu.service;

import java.util.List;

import com.ppg.commu.domain.CmuBoardCriteria;
import com.ppg.commu.domain.HomeBoardCriteria;
import com.ppg.commu.domain.CmuBoardVO;
import com.ppg.commu.domain.CmuCommentVO;

public interface CmuBoardService {

	public List<CmuBoardVO> getReviewBoardList(CmuBoardCriteria cri);
	
	public int getTotal(CmuBoardCriteria cri);

	public CmuBoardVO getPost(int postNum);

	public void writePost(CmuBoardVO board);

	public List<CmuCommentVO> getCommentList(int postNum);

	public boolean remove(int postNum);

	public boolean modify(CmuBoardVO board);

	public int regComment(CmuCommentVO comment);

	public boolean updateReply(int postNum);

//    public int delComment(CmuCommentVO commentNum);
//	
//	public boolean decReply(CmuCommentVO postNum);
	

	public int delComment(int commentNum);
	
	public boolean decReply(int postNum);
	
	public boolean updateWatcher(int postNum);

}
