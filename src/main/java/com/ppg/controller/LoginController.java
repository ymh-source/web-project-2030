package com.ppg.controller;

import java.util.Date;


import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.util.WebUtils;

import com.ppg.main.domain.LoginDTO;
import com.ppg.main.domain.MemberVO;
import com.ppg.main.service.MemberService;

import lombok.Setter;



@Controller
@RequestMapping("/user")
public class LoginController {

	private final MemberService memberService;

	@Inject
	public LoginController(MemberService memberService) {
		this.memberService = memberService;
	}

	// 로그인 페이지
	@GetMapping("/login")
	public String loginGET(@ModelAttribute("loginDTO") LoginDTO loginDTO) {

		return "/user/login";
	}

	// 로그인 처리
	@PostMapping("/loginPost")
	public void loginPOST(LoginDTO loginDTO, HttpSession httpSession, Model model) throws Exception {

		MemberVO memberVO = memberService.login(loginDTO);

		if (memberVO == null || !BCrypt.checkpw(loginDTO.getPassword(), memberVO.getPassword())) {
			return;
		}

		model.addAttribute("member", memberVO);


	}

	// 로그아웃 처리
	@GetMapping("/logout")
	public String logout(HttpServletRequest request, HttpServletResponse response, HttpSession httpSession)
			throws Exception {
		Object object = httpSession.getAttribute("login");
		if (object != null) {
		MemberVO memberVO = (MemberVO) object;
			httpSession.removeAttribute("login");
			httpSession.invalidate();

		}
		return "/user/logout";
	}
	
	
}
