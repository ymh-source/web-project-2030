package com.ppg.commu.mapper;

import java.util.List;

import com.ppg.commu.domain.CmuBoardCriteria;
import com.ppg.commu.domain.CmuBoardVO;
import com.ppg.commu.domain.CmuCommentVO;
import com.ppg.commu.domain.HomeBoardCriteria;

public interface HomeBoardMapper {
	public List<CmuBoardVO> getReviewBoardList();

	public List<CmuBoardVO> getReviewBoardPaging(HomeBoardCriteria cri);

	public int getTotalCount(HomeBoardCriteria cri);

	public CmuBoardVO readPost(int postNum);

}
