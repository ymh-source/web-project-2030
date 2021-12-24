package com.ppg.commu.service;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;


import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ppg.commu.domain.HomeBoardCriteria;
import com.ppg.commu.domain.CmuBoardVO;
import com.ppg.commu.mapper.HomeBoardMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class HomeBoardServiceImpl implements HomeBoardService {

	@Autowired
	private HomeBoardMapper mapper;

	@Override
	public List<CmuBoardVO> getReviewBoardList(HomeBoardCriteria cri) {
		return mapper.getReviewBoardPaging(cri);
	}

	@Override
	public int getTotal(HomeBoardCriteria cri) {
		return mapper.getTotalCount(cri);
	}

	@Override
	public CmuBoardVO getPost(int postNum) {
		return mapper.readPost(postNum);
	}
	
}
