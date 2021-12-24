package com.ppg.policy.service;

import java.util.List;


import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.ppg.policy.domain.PolicyVO;
import com.ppg.policy.persistence.PolicyDAO;

@Service
public class PolicyServicelmpl implements PolicyService{
	private final PolicyDAO policyDAO;
	
	@Inject
	public PolicyServicelmpl(PolicyDAO policyDAO) {
		this.policyDAO = policyDAO;
	}

	@Override
	public PolicyVO getHotList(String dept) throws Exception{
		return policyDAO.getHotList(dept);
	}

}
