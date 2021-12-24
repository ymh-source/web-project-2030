package com.ppg.controller;

import javax.inject.Inject;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ppg.policy.service.PolicyService;


@Controller
@RequestMapping("/policy")
public class PolicyController {
	private static final Logger logger = LoggerFactory.getLogger(PolicyController.class);
	
	private final PolicyService policyService;
	
	@Inject
	public PolicyController(PolicyService policyService) {
		this.policyService = policyService;
	}
	
	// 목록 페이지 이동
	@RequestMapping(value = "/HotList", method = RequestMethod.GET)
	public String getHotList(@RequestParam("dept") String dept, Model model) throws Exception{
		
		logger.info("HotList...");
		model.addAttribute("policy", policyService.getHotList(dept));
		
		return "/policy/policy_hot/policy_hot_seoul_admin";
	}
	
}
