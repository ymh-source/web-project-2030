package com.ppg.commu.service;

import java.util.List;

import com.ppg.commu.domain.CmuBoardCriteria;
import com.ppg.commu.domain.HomeBoardCriteria;
import com.ppg.commu.domain.CmuBoardVO;
import com.ppg.commu.domain.CmuCommentVO;

public interface HomeBoardService {

	public List<CmuBoardVO> getReviewBoardList(HomeBoardCriteria cri);
	
	public int getTotal(HomeBoardCriteria cri);

	public CmuBoardVO getPost(int postNum);


}
