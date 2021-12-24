package com.ppg.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class HeaderController {
	
	@RequestMapping("/webInfo")
	public String webInfo() {
		
		return "/user/2030_info";
	}
	
	@RequestMapping("/webInfo#faq")
	public String webFAQ() {
		
		return "/user/2030_info#faq";
	}
	
	@RequestMapping("/mainSearch")
	public String mainSearch() {
		return "/user/main_search_result";
	}
	
	@RequestMapping("/editProfile")
	public String editProfile() {
		return "/user/edit_profile";
	}
	
	@RequestMapping("/HotList")
	public String hotList() {
		return "/policy/policy_hot/policy_hot_seoul_admin";
	}
	@RequestMapping("/policyList")
	public String policyList() {
		return "/policy/policy_result/policy_result1_admin";
	}

}
