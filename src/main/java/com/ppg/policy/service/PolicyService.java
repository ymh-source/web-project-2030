package com.ppg.policy.service;

import java.util.List;

import com.ppg.policy.domain.PolicyVO;



public interface PolicyService {
	
	PolicyVO getHotList(String dept) throws Exception;
}
