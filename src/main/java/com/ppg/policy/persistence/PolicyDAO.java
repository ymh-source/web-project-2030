package com.ppg.policy.persistence;

import java.util.List;

import com.ppg.policy.domain.PolicyVO;



public interface PolicyDAO {
	
	PolicyVO getHotList(String dept) throws Exception;
}
